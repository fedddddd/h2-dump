// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    _ID32363();
    _ID51844( "dcburning_bunker" );
    level._ID44391 = "dcburning_nvg";
    level._ID40576 = "dcburning_thermal";
}

_ID32363()
{
    if ( _func_242() )
        setsaveddvar( "r_disablelightsets", 0 );
}

_ID51844( var_0, var_1 )
{
    if ( !isdefined( var_0 ) )
        return;

    if ( level._ID912 == "dcemp" )
        return;

    switch ( var_0 )
    {
        case "dcburning":
            var_2 = 1;
            var_3 = "dcburning";
            var_4 = "dcburning";
            var_0 = "dcburning";
            break;
        case "dcburning_rooftops":
            var_2 = 1;
            var_3 = "dcburning_rooftops";
            var_4 = "dcburning_rooftops";
            var_0 = "dcburning_commerce";
            break;
        case "dcburning_bunker":
            var_2 = 1;
            var_3 = "dcburning_bunker";
            var_4 = "dcburning_bunker";
            var_0 = "dcburning_bunker";
            break;
        case "dcburning_trenches":
            var_2 = 2;
            var_3 = "dcburning_trenches";
            var_4 = "dcburning_trenches";
            var_0 = "dcburning";
            break;
        case "dcburning_commerce":
            var_2 = 2;
            var_3 = "dcburning_commerce";
            var_4 = "dcburning_commerce";
            var_0 = "dcburning_commerce";
            break;
        case "dcburning_heliride":
            var_2 = 2;
            var_3 = "dcburning_heliride";
            var_4 = "dcburning_heliride";
            var_0 = "dcburning_flight";
            break;
        case "dcburning_heliride_takeoff":
            var_2 = 2;
            var_3 = "dcburning_heliride_takeoff";
            var_4 = "dcburning_heliride_takeoff";
            var_0 = "dcburning_flight";
            break;
        case "dcburning_crash":
            var_2 = 2;
            var_3 = "dcburning_trenches";
            var_4 = "dcburning_trenches";
            var_0 = "dcburning";
            break;
        case "dcburning_nvg":
            var_2 = 2;
            var_3 = "dcburning_nvg";
            var_4 = "dcburning_nvg";
            var_0 = "dcburning_nvg";
            break;
        case "dcburning_thermal":
            var_2 = 2;
            var_3 = "dcburning_thermal";
            var_4 = "dcburning_thermal";
            var_0 = "dcburning_thermal";
            break;
        case "dcburning_barrett_thermal":
            var_2 = 1;
            var_3 = "dcburning_thermal_barrett";
            var_4 = undefined;
            var_0 = undefined;
            break;
        case "dcburning_helicrash":
            var_2 = 0;
            var_3 = "dcburning_helicrash";
            var_4 = "dcburning_helicrash";
            var_0 = "dcburning_helicrash";
            break;
        default:
            var_2 = 1;
            var_3 = "dcburning";
            var_4 = "dcburning";
            var_0 = "dcburning";
            break;
    }

    if ( isdefined( var_1 ) )
        var_2 = var_1;

    _ID42407::_ID32515( var_3, var_2 );

    if ( isdefined( var_4 ) )
        _ID42407::_ID14689( var_4, var_2 );

    if ( isdefined( var_0 ) )
        level._ID794 _ID42407::_ID48929( var_0 );

    if ( level._ID912 == "dc_burning" )
        level._ID794 _meth_849f( "dcburning", var_2 );
}