Strangeland AGSWaves plugin hack
================================

we start with `agsex Strangeland.exe F O`, which extracts files into F and
object files/assembly into O.

in order to replace the Agswaves native plugin with script code injected
directly into the game, we first need to find out which functions are used.
then we need to implement those in agscript (.asc), compile them, and inject
them into a usable location.

it proved tricky for me to find such a location, but i succeeded in the end.
the difficulty here is that AGS has 2 different methods to call functions:
"near"call and farcall.
nearcall is used only for functions inside the same script, and farcall is
used for functions in other scripts, in the script engine, and in external
plugins.

linking order also matters. while a plugin is loaded on start and its functions
made available immediately to all scripts, gamescripts are loaded in order.
so if you inject some functions into gamescript1, they are not available
at the time gamescript0 is loaded and so you get a symbol resolution error.

at first i tried to inject the functions into gamescript1.s, because it was
the first one i got linking errors from - i figured out where the linking
error came from by tweaking the AGS engine to print the sectionname of the
first section (see [PR](https://github.com/adventuregamestudio/ags/pull/1340)).
using this sectionname i could grep over all .s files and find the right file,
as it is listed in .sections section.
however, the code in gamescript1 was calling the plugin functions with farcall
commands, which is invalid for functions inside the same script.
fortunately, i found that gamescript0.s didn't call any plugin functions, so
it was safe to inject the code there, and as it is loaded before gamescript1,
etc, it would satisfy their dependencies.
the alternative would have been to run a script over gamescript1.s
that replaces all farcall statements with call (and farpush with push), if the
callee was one of the list of the plugin functions. however this is much more
intrusive and requires more coding effort.

the injection of my code into gamescript0.s (from now on called g0)
worked as following:

just at the end of g0's .data section, i added the line
`#include agswave.data.inc`
and just after the `.text` directive, i added
`#include agswave.text.inc`

then i ran ascc on my implementation of the plugin functions to produce an
assembly file.

a python script was executed on the assembly output, splitting its .data
section into `agswave.data.inc` and its .text section into `agswave.text.inc`.
additionally the python script removes the `$n` suffix of the emitted function
names; more specifically of all those that start with uppercase.
the ags script compiler appends a suffix containing `$` and a number according
to the number of function arguments to function names, but plugin function
names do not follow this convention, therefore they need to be removed for
the functions we want to replace. since we need a couple more functions, here
for example `atoi`, for internal use, and the calls to them are using the `$`
calling convention, i chose to give them all lowercase names so i could easily
differentiate them in my script from those in the plugin API.
another issue is that we needed a couple of global variables for some of the
functions to work, and in order to prevent clashes with automatically generated
variable names like var00004 by the agsutils disassembler, i exported them all
so they would keep their unique name.

the next step is to assemble g0 with preprocessor enabled, so the 2 file
fragments are included.
after that we can call `make` which runs the Makefile created by agsex.

the first function AGS engine complained about when running the game, was
`SFX_Load`. i continued to copy their prototypes with empty implementation
body into the file, run `wave.sh` which executes all the above mentioned steps,
and then run the ags engine on the created `game.ags` file, until no more
unresolved function imports were encountered.
then i implemented the missing functionality, and added a lot of debug printing
code to figure out when something went wrong.

the end result, as provided here in `agswave.c` is sufficient to get the game
to load and play through the first couple of rooms.
as the game isn't especially good and i wasn't attracted by the dark-themed
graphics and ambience, i didn't invest more effort to get the rest working.

