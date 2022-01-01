// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    _ID32363();
    level.blizzard_sunflare_threadid = undefined;
}

_ID32363()
{
    if ( _func_242() )
        setsaveddvar( "r_disablelightsets", 0 );
}

_ID53242( var_0, var_1, var_2 )
{
    if ( !isdefined( var_0 ) )
        return;

    thread _ID47950();

    switch ( var_0 )
    {
        case "climbing":
            var_3 = "cliffhanger";
            var_4 = "cliffhanger";
            var_5 = "cliffhanger";
            var_6 = 2;
            var_7 = 0;
            var_8 = 4.5;
            var_9 = undefined;
            var_10 = 0;
            var_11 = 0;
            var_12 = 0;
            var_13 = 0;
            var_14 = 1;
            var_15 = 0;
            break;
        case "climbing_up":
            var_3 = "cliffhanger_climbing_up";
            var_4 = "cliffhanger_climbing_up";
            var_5 = "cliffhanger_climbing_up";
            var_6 = 2;
            var_7 = 0;
            var_8 = 4;
            var_9 = undefined;
            var_10 = 0;
            var_11 = 0;
            var_12 = 0;
            var_13 = 0;
            var_14 = 1;
            var_15 = 0;
            break;
        case "snowmobile":
            var_3 = "cliffhanger_snowmobile";
            var_4 = "cliffhanger_snowmobile";
            var_5 = "cliffhanger_snowmobile";
            var_6 = 1;
            var_7 = 0;
            var_8 = 4.5;
            var_9 = undefined;
            var_10 = 0.4;
            var_11 = 0;
            var_12 = 0;
            var_13 = 0;
            var_14 = 1;
            var_15 = 0;
            thread _ID45932( 1 );
            break;
        case "light":
            var_3 = "cliffhanger_blizzard_light";
            var_4 = "cliffhanger_blizzard_light";
            var_5 = "cliffhanger_blizzard_light";
            var_6 = 1;
            var_7 = 0;
            var_8 = 3.5;
            var_9 = undefined;
            var_10 = 0.4;
            var_11 = 0;
            var_12 = 0;
            var_13 = 0;
            var_14 = 1;
            var_15 = 0;
            thread _ID45932( 1 );
            _ID49414( "goggle_snowflakes_level1" );
            break;
        case "med":
            var_3 = "cliffhanger_blizzard_med";
            var_4 = "cliffhanger_blizzard_med";
            var_5 = "cliffhanger_blizzard_med";
            var_6 = 1;
            var_7 = 0;
            var_8 = 2.5;
            var_9 = undefined;
            var_10 = 0.6;
            var_11 = 8000;
            var_12 = 15;
            var_13 = 0;
            var_14 = 1;
            var_15 = 0;
            thread _ID45932( 0 );
            _ID49414( "goggle_snowflakes_level2" );
            break;
        case "hard":
            var_3 = "cliffhanger_blizzard_heavy";
            var_4 = "cliffhanger_blizzard_heavy";
            var_5 = "cliffhanger_blizzard_heavy";
            var_6 = 1;
            var_7 = 0;
            var_8 = 2.0;
            var_9 = undefined;
            var_10 = 0.9;

            if ( _ID42237::_ID14385( "blizzard_cull_distance" ) )
                var_11 = 4000;
            else
                var_11 = 8000;

            var_12 = 2;
            var_13 = 0;
            var_14 = 0;
            var_15 = 1;
            thread _ID45932( 0 );
            _ID49414( "goggle_snowflakes_level3" );
            break;
        case "extreme":
            var_3 = "cliffhanger_blizzard_extreme";
            var_4 = "cliffhanger_blizzard_extreme";
            var_5 = "cliffhanger_blizzard_extreme";
            var_6 = 1.5;
            var_7 = 0;
            var_8 = 0.3;
            var_9 = undefined;
            var_10 = 1.0;
            var_11 = 4000;
            var_12 = 1;
            var_13 = 1;
            var_14 = 0;
            var_15 = 1;
            thread _ID45932( 0 );
            break;
        default:
            var_3 = "cliffhanger";
            var_4 = "cliffhanger";
            var_5 = "cliffhanger";
            var_6 = 2;
            var_7 = 1;
            var_8 = 4.5;
            var_9 = undefined;
            var_10 = 0;
            var_11 = 0;
            var_12 = 0;
            var_13 = 0;
            var_14 = 1;
            var_15 = 0;
            break;
        case "heavy_building":
            var_3 = "cliffhanger_blizzard_heavy";
            var_4 = "cliffhanger_blizzard_heavy";
            var_5 = "cliffhanger_blizzard_heavy";
            var_6 = 1;
            var_7 = 0;
            var_8 = 2.0;
            var_9 = undefined;
            var_10 = 0.9;

            if ( _ID42237::_ID14385( "blizzard_cull_distance" ) )
                var_11 = 4000;
            else
                var_11 = 8000;

            var_12 = 2;
            var_13 = 0;
            var_14 = 0;
            var_15 = 0;
            thread _ID45932( 0 );
            _ID49414( "goggle_snowflakes_level3" );
            break;
    }

    if ( !isdefined( var_1 ) )
        var_1 = var_6;

    _ID49359::_ID48895();
    thread _ID49359::_ID47375( var_0, var_1 );

    if ( getdvar( "r_useCheatPostFX" ) != "Edge Detect" )
    {
        _ID42407::_ID32515( var_4, var_1 );
        thread _ID49359::_ID50804( var_12, var_11 );

        if ( isdefined( var_2 ) )
            _ID42407::_ID14689( var_3, var_2 );
        else
            _ID42407::_ID14689( var_3, var_1 );
    }

    _func_45( var_13 );

    if ( var_14 )
        _ID42237::_ID14402( "pause_blizzard_ground_fx" );
    else if ( var_15 )
        _ID42237::_ID14388( "pause_blizzard_ground_fx" );

    level._ID794 _ID42407::_ID48929( var_5 );

    if ( var_7 )
        _func_48();
    else if ( isdefined( var_8 ) )
        thread _ID49359::_ID54444( var_8, var_1 );

    _ID49359::_ID53955( var_1, var_10 );

    if ( isdefined( var_9 ) )
        level._ID794 _meth_849f( var_9, var_1 );

    if ( getdvarint( "blizzard_light_debug" ) == 1 )
        iprintln( "blizzard vision transition to :  " + var_0 );

    level._ID46419 = var_0;
}

_ID47950()
{
    if ( isdefined( level._ID54428 ) )
        return;

    level._ID54428 = 1;
    var_0 = ( 0, 180, 0 );
    var_1 = undefined;

    for (;;)
    {
        if ( level._ID51628 && !_ID42237::_ID14385( "player_indoors" ) )
        {
            var_2 = vectornormalize( anglestoforward( level._ID794._ID65 ) );
            var_3 = vectornormalize( anglestoforward( var_0 ) );
            var_4 = vectordot( var_2, var_3 );
            var_5 = var_4 < -0.5;
        }
        else
            var_5 = 0;

        var_6 = isdefined( var_1 );

        if ( var_5 )
        {
            if ( !var_6 )
            {
                var_1 = spawnfx( level._ID1426["vfx_screen_google_snowflakes_addon"], level._ID794._ID740 );
                triggerfx( var_1 );
            }
        }
        else if ( var_6 )
            var_1 delete();

        waittillframeend;
    }
}

_ID45932( var_0 )
{
    if ( isdefined( level.blizzard_sunflare_threadid ) )
        return;

    level.blizzard_sunflare_threadid = thisthread;

    if ( !isdefined( level._ID49429 ) )
        level._ID49429 = _ID42407::_ID48236( "fx_sunflare_cliffhanger" );

    if ( var_0 )
        level._ID49429 _ID42407::_ID29840();
    else
    {
        var_1 = 1;
        var_2 = ( 0, 0, 0 );
        var_3 = ( 0, 0, 0 );

        while ( var_1 )
        {
            wait 0.5;
            var_4 = level._ID794 getplayerangles();
            var_2 = vectornormalize( anglestoforward( var_4 ) );
            var_3 = vectornormalize( level._ID49429._ID40005["origin"] - level._ID794._ID740 );

            if ( vectordot( var_2, var_3 ) < 0 )
                var_1 = 0;
        }

        level._ID49429 _ID42237::_ID26402();
    }
}

_ID48518()
{
    level endon( "goggle_remove" );
    var_0 = "";

    for (;;)
    {
        level waittill( "goggle_fx_change" );

        if ( !level._ID51628 || var_0 == level._ID52573 )
            continue;

        if ( isdefined( level._ID44988 ) )
            level._ID44988 delete();

        if ( !_ID42237::_ID14385( "starting_hanger_backdoor_path" ) )
        {
            level._ID44988 = spawnfx( level._ID1426[level._ID52573], level._ID794._ID740 );
            triggerfx( level._ID44988 );
        }

        var_0 = level._ID52573;
    }
}

_ID49414( var_0 )
{
    level._ID52573 = var_0;
    level notify( "goggle_fx_change" );
}

_ID43891()
{
    level endon( "player_gets_on_snowmobile" );
    var_0 = "cliffhanger_snowmobile";
    var_1 = "cliffhanger_snowmobile";
    var_2 = "cliffhanger_snowmobile";

    for (;;)
    {
        level waittill( "player_indoors",  var_3, var_4  );
        var_5 = var_4._ID922;
        var_6 = var_4._ID922;
        var_7 = 1;

        if ( var_4._ID922 == "cliffhanger_snowmobile_int" )
            var_7 = 0;

        if ( isdefined( var_4._ID31388 ) && isdefined( level._ID40560[var_4._ID31388] ) )
            var_8 = var_4._ID31388;
        else
            var_8 = var_4._ID922;

        _ID45336( var_6, var_5, var_8, var_7 );

        while ( _ID42237::_ID14385( "player_indoors" ) )
        {
            if ( level._ID794._ID46646 != var_6 )
            {
                if ( !_ID42237::_ID14385( "acs_picked_up" ) )
                    _ID45336( var_6, var_5, var_8 );
            }

            _ID49414( "goggle_meltingfrost" );
            waittillframeend;
        }

        if ( getdvarint( "blizzard_light_debug" ) == 1 )
            iprintlnbold( "blizzard is now outdoor" );

        if ( !_ID42237::_ID14385( "acs_picked_up" ) )
        {
            _ID53242( level._ID46419, 3 );
            continue;
        }

        _ID45336( var_2, var_1, var_0 );
    }
}

_ID45336( var_0, var_1, var_2, var_3 )
{
    if ( isdefined( var_2 ) )
        _ID42407::_ID14689( var_2, var_3 );

    if ( isdefined( var_1 ) )
        _ID42407::_ID32515( var_1, 0.5 );

    if ( isdefined( var_0 ) )
        level._ID794 _ID42407::_ID48929( var_0 );

    _ID49359::_ID53955( 0.5, 0.0 );
}