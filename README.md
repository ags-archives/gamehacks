gamehacks
=========

a collection of hacks for ags games, done with [agsutils](//github.com/rofl0r/agsutils)
and/or [ascc](//github.com/rofl0r/ascc).

strangeland
-----------
this game is quite special in that it is utterly bloated (3 GB main game file,
of which 2.9GB is the acsprset.spr sprite file, and 1GB external sound/music),
and in that it uses an idiotic native plugin written in C++ called
[agswaves](https://github.com/Dualnames1/AGSWaves).
the agswaves plugin is a collection of NIH code of its author, who seems to like
to re-invent the wheel. unfortunately it uses SDL_sound v1, and is therefore
incompatible with AGS 3.6.0+ which now uses SDL2_sound.
the plugin features code for font, sprite, music, sfx manipulation as well
as numerous functionalities that are really mindboggingly stupid.
one of the highlights is the authors way to break from a loop by setting the
loopcounter past the loop end counter (apparently he didn't know that `break`
exists).
i reimplemented the basic functionality of the functions that are used in that
game in pure ags script, to get the game to run in order to figure out various
issues the game caused with agsutils.
the code in the associated directory is a good example how to inject code into
a game, and how to even replace an external plugin with pure script code that
can be readily injected into the game itself.
