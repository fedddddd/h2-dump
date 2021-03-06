// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    level._ID21883 = 0;
    level._ID52255 = 0;
    _ID42237::_ID14400( "game_saving" );
    _ID42237::_ID14400( "being_spotted" );
    _ID42237::_ID14400( "can_save" );
    _ID42237::_ID14402( "can_save" );
    _ID42237::_ID14400( "disable_autosaves" );

    if ( !isdefined( level._ID1450 ) )
        level._ID1450 = [];

    level._ID4437 = ::_ID4437;
}

_ID16214()
{
    return &"AUTOSAVE_AUTOSAVE";
}

_ID16437( var_0 )
{
    if ( var_0 == 0 )
        var_1 = &"AUTOSAVE_GAME";
    else
        var_1 = &"AUTOSAVE_NOGAME";

    return var_1;
}

_ID5025()
{
    _ID42237::_ID14413( "introscreen_complete" );

    if ( isdefined( level._ID20368 ) )
        wait(level._ID20368);

    if ( level._ID23777 )
        return;

    if ( _ID54127::_ID50089() )
        return;

    if ( _ID42237::_ID14385( "game_saving" ) )
        return;

    _ID42237::_ID14402( "game_saving" );
    var_0 = "levelshots / autosave / autosave_" + level.script + "start";
    savegame( "levelstart", &"AUTOSAVE_LEVELSTART", var_0, 1 );
    setdvar( "ui_grenade_death", "0" );
    _ID42237::_ID14388( "game_saving" );
}

_ID38749( var_0 )
{
    var_0 waittill( "trigger" );
    _ID42407::_ID4439();
}

_ID38750( var_0 )
{
    var_0 waittill( "trigger" );
    _ID42407::_ID4443();
}

_ID38747( var_0 )
{
    if ( !isdefined( var_0._ID31060 ) )
        var_0._ID31060 = 0;

    _ID4460( var_0 );
}

_ID4460( var_0 )
{
    var_1 = _ID16437( var_0._ID31060 );

    if ( !isdefined( var_1 ) )
        return;

    var_0 waittill( "trigger" );
    var_2 = var_0._ID31060;
    var_3 = "levelshots / autosave / autosave_" + level.script + var_2;
    _ID39065( var_2, var_1, var_3 );

    if ( isdefined( var_0 ) )
        var_0 delete();
}

_ID4457( var_0 )
{
    if ( _ID42407::_ID20569() )
        return;

    var_0 waittill( "trigger" );

    if ( !isdefined( var_0 ) )
        return;

    var_1 = var_0._ID31061;
    var_0 delete();

    if ( isdefined( level._ID9558 ) )
    {
        if ( ![[ level._ID9558 ]]() )
            return;
    }

    _ID42407::_ID4422( var_1 );
}

_ID38748( var_0 )
{
    var_0 waittill( "trigger" );
}

_ID4459( var_0, var_1 )
{
    if ( isdefined( var_1 ) )
        return;

    return;
}

_ID4450( var_0 )
{
    level endon( "trying_new_autosave" );
    level endon( "autosave_complete" );
    wait(var_0);
    _ID42237::_ID14388( "game_saving" );
    level notify( "autosave_timeout" );
}

_ID1376()
{
    var_0 = "levelshots / autosave / autosave_" + level.script + "start";
    savegame( "levelstart", &"AUTOSAVE_LEVELSTART", var_0, 1 );
    _ID4438( 0 );
}

_ID1377()
{
    var_0 = "levelshots / autosave / autosave_" + level.script + "start";

    if ( getdvarint( "g_reloading" ) == 0 )
    {
        savegame( "levelstart", &"AUTOSAVE_LEVELSTART", var_0, 1 );
        _ID4438( 0 );
    }
}

_ID1375( var_0 )
{
    if ( isdefined( level._ID23777 ) && level._ID23777 )
        return;

    if ( _ID42237::_ID14385( "game_saving" ) )
        return 0;

    if ( _ID54127::_ID50089() )
        return 0;

    for ( var_1 = 0; var_1 < level._ID805.size; var_1++ )
    {
        var_2 = level._ID805[var_1];

        if ( !isalive( var_2 ) )
            return 0;
    }

    var_3 = "save_now";
    var_4 = _ID16214();

    if ( isdefined( var_0 ) )
        var_5 = savegamenocommit( var_3, var_4, "$default", 1 );
    else
        var_5 = savegamenocommit( var_3, var_4 );

    wait 0.05;

    if ( issaverecentlyloaded() )
    {
        level._ID21883 = gettime();
        level._ID52255 = level._ID21883;
        return 0;
    }

    if ( var_5 < 0 )
        return 0;

    if ( !_ID39058() )
        return 0;

    _ID42237::_ID14402( "game_saving" );
    wait 2;
    _ID42237::_ID14388( "game_saving" );

    if ( !commitwouldbevalid( var_5 ) )
        return 0;

    if ( _ID39058() )
    {
        _ID4438( var_5 );

        if ( !isdefined( var_0 ) )
            thread _ID54127::_ID50607();

        commitsave( var_5 );
        level._ID52701 = gettime();
        setdvar( "ui_grenade_death", "0" );
    }

    return 1;
}

_ID4435( var_0 )
{
    var_0 waittill( "trigger" );
    _ID42407::_ID4433();
}

_ID39058()
{
    if ( !issavesuccessful() )
        return 0;

    for ( var_0 = 0; var_0 < level._ID805.size; var_0++ )
    {
        var_1 = level._ID805[var_0];

        if ( !var_1 _ID4456() )
            return 0;
    }

    if ( !_ID42237::_ID14385( "can_save" ) )
        return 0;

    return 1;
}

_ID39065( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( _ID42237::_ID14385( "disable_autosaves" ) )
        return 0;

    level endon( "nextmission" );
    level.player endon( "death" );

    if ( _ID42407::_ID20495() )
        level._ID27742 endon( "death" );

    level notify( "trying_new_autosave" );

    if ( _ID42237::_ID14385( "game_saving" ) )
        return 0;

    if ( isdefined( level._ID24793 ) )
        return 0;

    var_7 = 1.25;
    var_8 = 1.25;

    if ( isdefined( var_3 ) && var_3 < var_7 + var_8 )
    {

    }

    if ( !isdefined( var_5 ) )
        var_5 = 0;

    if ( !isdefined( var_2 ) )
        var_2 = "$default";

    if ( !isdefined( var_4 ) )
        var_4 = 0;

    _ID42237::_ID14402( "game_saving" );
    var_9 = _ID16214();
    var_10 = gettime();

    for (;;)
    {
        if ( _ID4452( undefined, var_4 ) )
        {
            var_11 = savegamenocommit( var_0, var_9, var_2, var_5 );

            if ( var_11 < 0 )
                break;

            wait 0.05;

            if ( issaverecentlyloaded() )
            {
                level._ID21883 = gettime();
                level._ID52255 = level._ID21883;
                break;
            }

            wait(var_7);

            if ( !_ID4452( undefined, var_4 ) )
                continue;

            wait(var_8);

            if ( !_ID4453() )
                continue;

            if ( isdefined( var_3 ) )
            {
                if ( gettime() > var_10 + var_3 * 1000 )
                    break;
            }

            if ( !_ID42237::_ID14385( "can_save" ) )
                break;

            if ( _ID42237::_ID14385( "being_spotted" ) )
                break;

            if ( !commitwouldbevalid( var_11 ) )
            {
                _ID42237::_ID14388( "game_saving" );
                return 0;
            }

            if ( level.script == "scoutsniper" && isdefined( var_6 ) && var_6 == "cargo2" )
            {
                if ( _ID42237::_ID14385( "_stealth_spotted" ) )
                    continue;
            }

            _ID4438( var_11 );
            thread _ID54127::_ID50607();
            commitsave( var_11 );
            _ID42407::_ID54275();
            level._ID21977 = gettime();
            level._ID52255 = gettime();
            setdvar( "ui_grenade_death", "0" );
            break;
        }

        wait 0.25;
    }

    _ID42237::_ID14388( "game_saving" );
    return 1;
}

_ID13726()
{
    foreach ( var_1 in level._ID1450 )
    {
        if ( ![[ var_1["func"] ]]() )
        {
            _ID4459( "autosave failed: " + var_1["msg"] );
            return 1;
        }
    }

    return 0;
}

_ID4453()
{
    return _ID4452( 0, 0 );
}

_ID4452( var_0, var_1 )
{
    if ( isdefined( level._ID4425 ) )
        return [[ level._ID4425 ]]();

    if ( isdefined( level._ID35359 ) && ![[ level._ID35359 ]]() )
        return 0;

    if ( level._ID23777 )
        return 0;

    if ( _ID54127::_ID50089() )
        return 0;

    if ( !isdefined( var_0 ) )
        var_0 = level._ID11635;

    if ( !isdefined( var_1 ) )
        var_1 = 0;

    if ( var_1 )
    {
        if ( ![[ level._ID16935["_autosave_stealthcheck"] ]]() )
            return 0;
    }

    for ( var_2 = 0; var_2 < level._ID805.size; var_2++ )
    {
        var_3 = level._ID805[var_2];

        if ( !var_3 _ID4456() )
            return 0;

        if ( var_0 && !var_3 _ID4451() )
            return 0;
    }

    if ( level._ID4449 )
    {
        if ( !_ID4462( var_0 ) )
            return 0;
    }

    for ( var_2 = 0; var_2 < level._ID805.size; var_2++ )
    {
        var_3 = level._ID805[var_2];

        if ( !var_3 _ID4458( var_0 ) )
            return 0;
    }

    if ( isdefined( level._ID6879 ) && !level._ID6879 )
        return 0;

    if ( _ID13726() )
        return 0;

    if ( !issavesuccessful() )
    {
        _ID4459( "autosave failed: save call was unsuccessful" );
        return 0;
    }

    return 1;
}

_ID4458( var_0 )
{
    if ( level.script == "ac130" )
        return 1;

    if ( isdefined( level._ID1747 ) && level._ID1747 == self )
        return 1;

    if ( self ismeleeing() && var_0 )
    {
        _ID4459( "autosave failed:player is meleeing" );
        return 0;
    }

    if ( self isthrowinggrenade() && var_0 )
    {
        _ID4459( "autosave failed:player is throwing a grenade" );
        return 0;
    }

    if ( self isfiring() && var_0 )
    {
        _ID4459( "autosave failed:player is firing" );
        return 0;
    }

    if ( isdefined( self._ID33728 ) && self._ID33728 )
    {
        _ID4459( "autosave failed:player is in shellshock" );
        return 0;
    }

    if ( _ID42237::_ID20747() )
    {
        _ID4459( "autosave failed:player is flashbanged" );
        return 0;
    }

    if ( _ID42407::player_is_owner_of_live_grenade() )
    {
        _ID4459( "autosave failed:player is owner of a live grenade" );
        return 0;
    }

    if ( isdefined( self._ID20494 ) && self._ID20494 == 1 )
    {
        _ID4459( "autosave failed:player is in UAV" );
        return 0;
    }

    return 1;
}

_ID4451()
{
    if ( isdefined( level._ID24862 ) && level._ID24862 )
        return 1;

    if ( level.script == "ac130" )
        return 1;

    if ( isdefined( level._ID1747 ) && level._ID1747 == self )
        return 1;

    var_0 = self getweaponslistprimaries();

    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
    {
        var_2 = self getfractionmaxammo( var_0[var_1] );

        if ( var_2 > 0.1 )
            return 1;
    }

    _ID4459( "autosave failed: ammo too low" );
    return 0;
}

_ID4456()
{
    if ( level.script == "ac130" )
        return 1;

    if ( isdefined( level._ID1747 ) && level._ID1747 == self )
        return 1;

    if ( _ID42407::_ID13023( "laststand_downed" ) && _ID42407::_ID13019( "laststand_downed" ) )
        return 0;

    var_0 = self.health / self.maxhealth;

    if ( var_0 < 0.5 )
        return 0;

    if ( _ID42407::_ID13019( "_radiation_poisoning" ) )
        return 0;

    if ( _ID42407::_ID13019( "player_has_red_flashing_overlay" ) )
        return 0;

    return 1;
}

_ID4462( var_0 )
{
    if ( level.script == "ac130" )
        return 1;

    if ( isdefined( level._ID1747 ) && level._ID1747 == self )
        return 1;

    var_1 = getaispeciesarray( "bad_guys", "all" );

    foreach ( var_3 in var_1 )
    {
        if ( !isdefined( var_3.enemy ) )
            continue;

        if ( !isplayernumber( var_3.enemy ) )
            continue;

        if ( var_3.type == "dog" )
        {
            foreach ( var_5 in level._ID805 )
            {
                if ( distance( var_3.origin, var_5.origin ) < 384 )
                    return 0;
            }

            continue;
        }

        if ( isdefined( var_3._ID23353 ) && isdefined( var_3._ID23353.target ) && isplayernumber( var_3._ID23353.target ) )
            return 0;

        var_7 = [[ level._ID4437 ]]( var_3 );

        if ( var_7 == "return_even_if_low_accuracy" )
            return 0;

        if ( var_3.finalaccuracy < 0.021 && var_3.finalaccuracy > -1 )
            continue;

        if ( var_7 == "return" )
            return 0;

        if ( var_7 == "none" )
            continue;

        if ( var_3._ID7._ID21978 > gettime() - 500 )
        {
            if ( var_0 || var_3 animscripts\utility::_ID6884( 0 ) && var_3 canshootenemy( 0 ) )
                return 0;
        }

        if ( isdefined( var_3._ID7._ID2428 ) && var_3 animscripts\utility::_ID6884( 0 ) && var_3 canshootenemy( 0 ) )
            return 0;
    }

    if ( _ID42407::_ID27506() )
        return 0;

    var_9 = getentarray( "destructible", "classname" );

    foreach ( var_11 in var_9 )
    {
        if ( !isdefined( var_11._ID18315 ) )
            continue;

        foreach ( var_5 in level._ID805 )
        {
            if ( distance( var_11.origin, var_5.origin ) < 400 )
                return 0;
        }
    }

    return 1;
}

_ID12884()
{
    if ( self.finalaccuracy >= 0.021 )
        return 1;

    foreach ( var_1 in level._ID805 )
    {
        if ( distance( self.origin, var_1.origin ) < 500 )
            return 1;
    }

    return 0;
}

_ID4437( var_0 )
{
    foreach ( var_2 in level._ID805 )
    {
        var_3 = distance( var_0.origin, var_2.origin );

        if ( var_3 < 200 )
        {
            return "return_even_if_low_accuracy";
            continue;
        }

        if ( var_3 < 360 )
        {
            return "return";
            continue;
        }

        if ( var_3 < 1000 )
            return "threat_exists";
    }

    return "none";
}

_ID4438( var_0 )
{
    if ( !_ID42407::_ID20505() )
        return;

    var_1 = _ID42408::_ID15803();
    var_2 = var_1;

    if ( isdefined( level._ID29295 ) )
        var_2 = var_1 - level._ID29295;

    level._ID29295 = var_1;
    reconevent( "script_checkpoint: id %d, leveltime %d, deltatime %d", var_0, var_1, var_2 );
}
