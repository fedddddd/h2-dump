// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID50320()
{
    _ID49242::_ID616();
    _ID51176::_ID616();
    _ID44499::_ID616();
    maps\arcadia_lighting::_ID616();
    thread maps\arcadia::_ID44594();
    _ID42323::_ID616();
    maps\arcadia_anim::_ID616();
    maps\arcadia_aud::_ID616();
    thread _ID49243();
}

_ID49243()
{
    var_0 = ( 172.5, 2246.2, 2279.4 );
    var_1 = ( -4, -108.2, 0 );
    level._ID794 setorigin( var_0 );
    level._ID794 setplayerangles( var_1 );
    level._ID794 lerpfov( 85, 0.1 );
    level._ID794._ID511 = 1;
    setsaveddvar( "hud_drawhud", 0 );
    level _ID42407::_ID40561( "arcadia", 0 );
    level._ID794 _ID42407::_ID40561( "arcadia", 0 );
    level._ID794 lightset( "arcadia" );
}