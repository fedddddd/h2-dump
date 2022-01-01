// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("generic_human");

_ID616()
{
    self._ID10423 = "crouch";
    animscripts\utility::_ID39672();
    self endon( "killanimscript" );
    self traversemode( "nogravity" );
    self traversemode( "noclip" );
    var_0 = self getnegotiationstartnode();
    self orientmode( "face angle", var_0._ID65[1] );
    self clearanim( %stand_and_crouch, 0.1 );
    self setflaggedanimknoballrestart( "diveanim", %jump_over_high_wall, %body, 1, 0.1, 1 );
    self playsound( "dive_wall" );
    self waittillmatch( "diveanim",  "gravity on"  );
    self traversemode( "nogravity" );
    self waittillmatch( "diveanim",  "noclip"  );
    self traversemode( "noclip" );
    self waittillmatch( "diveanim",  "gravity on"  );
    self traversemode( "gravity" );
    animscripts\shared::_ID11529( "diveanim" );
}