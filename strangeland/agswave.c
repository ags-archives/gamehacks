void dtrace(String text) { System.Log(1, ">>> %s", text); }
int shash(char* s) {
	int h = 0; int i = 0;
	while(1) {
		int c = s[i];
		if(c == 0) break;
		h = 16*h + c;
		h = h ^ ((h << 24) & 240);
		i += 1;
	}
	//System.Log(1, "hash %s = %d", s, h);
	return h;
}

int atoi(char* s) {
        int res = 0;
	int idx = 0;
	int sign = 1;
	if (s[0] == '-') {
		sign = -1;
		idx++;
	}
        while(1) {
                int c = s[idx];
                if(c < '0' || c > '9') break;
                res = res*10 + (c-'0');
                idx++;
        }
        return res*sign;
}
void itoa(int number, char* buffer) {
        int lentest, len = 0, i, start;

        if(number >> 31) {
                number = number * -1;
                buffer[0] = '-';
                start = 1;
        } else
                start = 0;

        lentest = number;
        do {
                len++;
                lentest /= 10;
        } while(lentest);
        buffer[start+len] = 0;
        do {
                i = number % 10;
                buffer[start+len - 1] = '0' + i;
                number -= i;
                len -= 1;
                number /= 10;
        } while (number);
}

struct gditem {
	int hash;
	char s[64];
};
int gdcount = 0;
int gddim = 0;
gditem gditems[];

export gdcount, gddim, gditems;

int gd_state_index(String value) {
	string temp;
	StrCopy(temp, value);
	int i = 0;
	int h = shash(temp);
	for(i = 0; i < gdcount; i++) {
		if(h == gditems[i].hash &&
		   gditems[i].s[0] &&
		   !strcmp(temp, gditems[i].s))
			return i;
	}
	return -1;
}

void add_gd_entry(String value) {
	string temp;
	int gddim_old;
	int h;
	gditem gditems_new[];
	StrCopy(temp, value);
	if(gdcount +1 > gddim) {
		dtrace("alloc");
		gddim_old = gddim;
		if(gddim == 0) gddim = 32;
		else gddim = gddim * 2;
		gditems_new = new gditem[gddim];
		int i;
		for(i = 0; i < gddim_old; i++)
			gditems_new[i] = gditems[i];
		gditems = null;
		gditems = gditems_new;
	}
	h = shash(temp);
	//if(!gditems[gdcount]) gditems[gdcount] = new gditem;
	gditems[gdcount].hash = h;
	StrCopy(gditems[gdcount].s, temp);
	gdcount++;
}

void set_gd_state(String value, bool setvalue) {
	int x = gd_state_index(value);
	if(x == -1 && setvalue) return;
	if(x == -1 && !setvalue) {
		add_gd_entry(value);
		return;
	}
	if(setvalue) {
		gditems[x].hash = 0;
		gditems[x].s[0] = 0;
	}
}

void reset_gds() {
	gditems = null;
	gdcount = 0;
	gddim = 0;
}

// agswave API items

void AdjustSpriteFont(int sprite,int rate,int outlineRed,int outlineGreen,int outlineBlue){
	dtrace("AdjustSpriteFont");
}
void ReadWalkBehindIntoSprite(int sprite,int bgsprite,int walkbehindBaseline){
	dtrace("ReadWalkBehindIntoSprite");
}
void SetWalkbehindBaserine(int id,int base){dtrace("SetWalkbehindBaserine");}
int GetWalkbehindBaserine(int id){dtrace("GetWalkbehindBaserine");return 0; }
void Outline(int sprite,int red,int ged,int bed,int aed){
	dtrace("Outline");
}
void OutlineOnly(int sprite,int refsprite,int red,int ged,int bed,int aed, int trans){
	dtrace("OutlineOnly");
}
void DrawBlur(int spriteD,int radius){dtrace("DrawBlur");}
void Grayscale(int sprite){dtrace("Grayscale");}
void Blend(int graphic, int refgraphic, bool screen,int perc){dtrace("Blend");}
void BlendTwoSprites(int graphic, int refgraphic){dtrace("BlendTwoSprites");}
void SetWarper(int y2x,int x3x,int y3x,int x4x,int y4x){dtrace("SetWarper");}
void Warper(int swarp,int sadjust,int x1, int y1, int x2){dtrace("Warper");}
void DrawScreenEffect(int sprite,int sprite_prev,int ide,int n){
	dtrace("DrawScreenEffect");
}
void RainUpdate(int rdensity, int FX, int FY,int RW,int RH,int graphic, float perc){
	dtrace("RainUpdate");
}
void WindUpdate(int ForceX, int ForceY, int Transparency,int sprite){
	dtrace("WindUpdate");
}
void SetWindValues(int w,int h,int pr,int prev){dtrace("SetWindValues");}
void Dissolve(int graphic, int noisegraphic, int disvalue){dtrace("Dissolve");}
void SpriteGradient(int sprite,int rate,int toy){dtrace("SpriteGradient");}

int ReturnWidth(int x1, int y1, int x2, int y2, int x3, int y3, int x4, int y4) {
	dtrace("ReturnWidth"); return 0;
}
int ReturnHeight(int x1, int y1, int x2, int y2, int x3, int y3, int x4, int y4) {
	dtrace("ReturnHeight"); return 0;
}
int ReturnNewHeight() { dtrace("ReturnNewHeight"); return 0; }
int ReturnNewWidth(){ dtrace("ReturnNewWidth"); return 0; }

void Audio_Apply_Filter(int Frequency) {dtrace("Audio_Apply_Filter"); }
void Audio_Remove_Filter() {dtrace("Audio_Remove_Filter"); }
void DrawForceField(int spriteD, int scale, float speed,int id){
	dtrace("DrawForceField");
}

void Music_Play(int MFX, int repeat,int fadeinMS,int fadeoutMS,int Position, bool fixclick){
	dtrace("Music_Play");
}
void Music_SetVolume(int volume){//dtrace("Music_SetVolume");
}
int Music_GetVolume(){dtrace("Music_GetVolume"); return 100;}
void NoiseCreator(int graphic, int setA){dtrace("NoiseCreator");}
void SFX_AllowOverlap(int SFX,int allow) {dtrace("SFX_AllowOverlap");}
void SFX_Stop(int SFX,int fademsOUT) {//dtrace("SFX_Stop");
}
void SFX_Filter(int SoundToFilter,int enable) {dtrace("SFX_Filter");}
void Load_SFX(int SFX) {dtrace("Load_SFX");}
void SFX_SetVolume(int SFX,int volume){//dtrace("SFX_SetVolume");
}
int SFX_GetVolume(int SFX) { //dtrace("SFX_GetVolume");
return 100; }
void SFX_SetPosition(int SFX,int x,int y,int intensity){
	//dtrace("SFX_SetPosition");
}
void SFX_SetGlobalVolume(int volume){dtrace("SFX_SetGlobalVolume");}
void SFX_Play(int SoundToPlay, int repeat) {
	string fn;
	if(SoundToPlay == 182) return;
	if(SoundToPlay == 165) return;
	if(SoundToPlay == 409) return;
	dtrace("SFX_Play");
	StrFormat(fn, "Sounds/sound%d.sfx", SoundToPlay);
	PlayMP3File(fn);
}

bool GetGDState(String value) {
	dtrace("GetGDState");
	return gd_state_index(value) >= 0;
}

void SetGDState(String value, bool setvalue) {
	dtrace("SetGDState");
	set_gd_state(value, setvalue);
}

int GameDoOnceOnly(String value) {
	dtrace("GameDoOnceOnly");
	int x = gd_state_index(value);
	System.Log(1, "GDOO %s -> %d", value, x);
	if(x >= 0) return 0;
	set_gd_state(value, false);
	return 1;
}
void ResetAllGD(){
	dtrace("ResetAllGD");
	reset_gds();
}

int sv_count=0;
int sv[];
export sv_count, sv;

void SaveVariable(String value,int id) {
	string olds;
	int val;
	int sv_new[];
	if(value == null) return;
	dtrace("SaveVariable");
	dtrace(value);
	System.Log(1, "id: %d", id);
	if(id+1 > sv_count) {
		sv_new = new int[id+100];
		for(val = 0; val < sv_count; val++)
			sv_new[val] = sv[val];
		sv = null;
		sv_count = id+100;
		sv = sv_new;
	}
	StrCopy(olds, value);
	val = atoi(olds);
	sv[id] = val;
}

String ReadVariable(int id) {
	int val;
	string buffer;
	//dtrace("ReadVariable");
	if(id >= sv_count || id < 0) return "";
	val = sv[id];
	itoa(val, buffer);
	return buffer;
}
