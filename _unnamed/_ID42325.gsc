// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID30753( var_0 )
{
    var_1 = level.player getcurrentweapon();

    if ( !isdefined( var_1 ) || var_1 == "none" )
    {

    }

    game["weaponstates"][var_0]["current"] = var_1;
    var_2 = level.player getcurrentoffhand();
    game["weaponstates"][var_0]["offhand"] = var_2;
    game["weaponstates"][var_0]["list"] = [];
    var_3 = level.player getweaponslistall();

    for ( var_4 = 0; var_4 < var_3.size; var_4++ )
        game["weaponstates"][var_0]["list"][var_4]["name"] = var_3[var_4];
}

_ID29876( var_0 )
{
    if ( !isdefined( game["weaponstates"] ) )
        return 0;

    if ( !isdefined( game["weaponstates"][var_0] ) )
        return 0;

    level.player takeallweapons();

    for ( var_1 = 0; var_1 < game["weaponstates"][var_0]["list"].size; var_1++ )
    {
        var_2 = game["weaponstates"][var_0]["list"][var_1]["name"];

        if ( isdefined( level._ID53335 ) )
        {
            if ( !isdefined( level._ID53335[var_2] ) )
                continue;
        }

        if ( var_2 == "c4" )
            continue;

        if ( var_2 == "claymore" )
            continue;

        level.player giveweapon( var_2 );
        level.player givemaxammo( var_2 );
    }

    if ( isdefined( level._ID53335 ) )
    {
        var_2 = game["weaponstates"][var_0]["offhand"];

        if ( isdefined( level._ID53335[var_2] ) )
            level.player switchtooffhand( var_2 );

        var_2 = game["weaponstates"][var_0]["current"];

        if ( isdefined( level._ID53335[var_2] ) )
            level.player switchtoweapon( var_2 );
    }
    else
    {
        level.player switchtooffhand( game["weaponstates"][var_0]["offhand"] );
        level.player switchtoweapon( game["weaponstates"][var_0]["current"] );
    }

    return 1;
}

_ID32585()
{
    self setactionslot( 1, "" );
    self setactionslot( 2, "" );
    self setactionslot( 3, "altMode" );
    self setactionslot( 4, "" );
}

_ID19764()
{
    _ID32585();
    self takeallweapons();
}

_ID15823()
{
    if ( isdefined( level._ID22489 ) )
        return level._ID22489;

    return level.script;
}

_ID26588( var_0, var_1 )
{
    var_2 = _ID15823();

    if ( var_0 != var_2 )
        return;

    if ( !isdefined( game["previous_map"] ) )
        return;

    if ( game["previous_map"] != var_1 )
        return;

    level._ID1505 = 1;
    _ID29876( var_1 );
    level._ID18166 = 1;
}

_ID22489( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( isdefined( var_0 ) )
    {
        var_7 = _ID15823();

        if ( var_0 != var_7 )
            return;
    }

    if ( !isdefined( level._ID1505 ) )
    {
        if ( isdefined( var_1 ) )
        {
            level._ID10133 = var_1;
            level.player giveweapon( var_1 );
        }

        if ( isdefined( var_2 ) )
            level.player giveweapon( var_2 );

        if ( isdefined( var_1 ) )
            level.player switchtoweapon( var_1 );
        else if ( isdefined( var_2 ) )
            level.player switchtoweapon( var_2 );
    }

    if ( isdefined( var_3 ) )
    {
        level.player setoffhandprimaryclass( var_3 );
        level.player giveweapon( var_3 );
    }

    if ( isdefined( var_4 ) )
    {
        level.player setoffhandsecondaryclass( var_4 );
        level.player giveweapon( var_4 );
    }

    if ( isdefined( var_5 ) )
        level.player setviewmodel( var_5 );

    if ( isdefined( var_6 ) )
        level._ID6720 = var_6;

    if ( level.script == "contingency" )
    {
        level._ID43216 = var_2;
        level._ID53133 = var_1;
    }

    level._ID18166 = 1;
}

_ID22494( var_0, var_1, var_2 )
{
    if ( !isdefined( var_0 ) )
        return;

    if ( level.script != var_0 )
        return;

    if ( isdefined( var_1 ) )
    {
        level.player giveweapon( var_1 );
        level.player setactionslot( 2, "weapon", var_1 );
    }

    if ( isdefined( var_2 ) )
    {
        level.player giveweapon( var_2 );
        level.player setactionslot( 4, "weapon", var_2 );
    }
}

_ID22491()
{
    level._ID22493 = 1;
    level notify( "loadout complete" );
}

_ID10118()
{
    if ( level._ID18166 )
        return;

    _ID22489( undefined, "mp5", undefined, "fraggrenade", "flash_grenade", "viewmodel_base_viewhands" );
    level._ID22920 = 1;
}

_ID51707()
{
    switch ( level.script )
    {
        case "killhouse":
            _ID54590();
            break;
        case "cargoship":
            break;
        case "coup":
            break;
        case "blackout":
            _ID52692();
            break;
        case "armada":
            break;
        case "bog_a":
            break;
        case "hunted":
            break;
        case "ac130":
            break;
        case "bog_b":
            break;
        case "airlift":
            break;
        case "aftermath":
            break;
        case "village_assault":
            break;
        case "scoutsniper":
            _ID45004();
            break;
        case "sniperescape":
            _ID50723();
            break;
        case "village_defend":
            _ID43275();
            break;
        case "ambush":
            _ID50820();
            break;
        case "icbm":
            break;
        case "launchfacility_a":
            _ID50752();
            break;
        case "launchfacility_b":
            _ID46784();
            break;
        case "jeepride":
            break;
        case "airplane":
            break;
        case "simplecredits":
            break;
        case "af_caves":
            break;
        case "af_chase":
            break;
        case "airport":
            break;
        case "arcadia":
            break;
        case "boneyard":
            break;
        case "cliffhanger":
            break;
        case "contingency":
            break;
        case "dc_whitehouse":
            break;
        case "dcburning":
            _ID46066();
        case "dcemp":
            break;
        case "ending":
            break;
        case "estate":
            _ID44244();
        case "favela":
            break;
        case "favela_escape":
            break;
        case "gulag":
            break;
        case "invasion":
            break;
        case "oilrig":
            break;
        case "roadkill":
            break;
    }
}

_ID54590()
{
    level.player setweaponammoclip( "fraggrenade", 0 );
    level.player setweaponammoclip( "flash_grenade", 0 );
}

_ID52692()
{
    level.player givemaxammo( "m4m203_silencer_reflex" );
    level.player givemaxammo( "m14_scoped_silencer_woodland" );
}

_ID45004()
{
    level.player givemaxammo( "m14_scoped_silencer" );
    level.player givemaxammo( "usp_silencer" );
}

_ID50723()
{
    if ( level._ID15361 >= 2 )
    {
        level.player setweaponammoclip( "claymore", 10 );
        level.player setweaponammoclip( "c4", 6 );
    }
    else
    {
        level.player setweaponammoclip( "claymore", 8 );
        level.player setweaponammoclip( "c4", 3 );
    }
}

_ID43275()
{
    level.player givemaxammo( "claymore" );
}

_ID50820()
{
    level.player setweaponammostock( "remington700", 10 );
}

_ID50752()
{
    level.player givemaxammo( "claymore" );
}

_ID46784()
{
    var_0 = undefined;
    var_1 = 0;
    var_2 = level.player getweaponslistprimaries();

    foreach ( var_4 in var_2 )
    {
        if ( issubstr( var_4, "javelin" ) )
        {
            var_0 = var_4;
            continue;
        }

        if ( issubstr( var_4, "m4m203_silencer_reflex" ) )
            var_1 = 1;
    }

    if ( isdefined( var_0 ) )
    {
        level.player takeweapon( var_0 );

        if ( var_1 )
            level.player giveweapon( "usp_silencer" );
        else
            level.player giveweapon( "m4m203_silencer_reflex" );

        level.player switchtoweaponimmediate( "m4m203_silencer_reflex" );
    }
}

_ID46066()
{
    level.player setactionslot( 1, "nightvision" );
    level.player givemaxammo( "claymore" );
}

_ID44244()
{
    level.player givemaxammo( "claymore" );
    level.player givemaxammo( "beretta" );
    level.player givemaxammo( "masada_digital_grenadier_eotech" );
}
