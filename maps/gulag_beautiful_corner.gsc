// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    _ID46856::main();
    _ID48864::main();
    _ID50975::main();
    _ID51081::main();
    _ID49653::main();
    maps\gulag_anim::main();
    _ID42542::main( "vehicle_little_bird_bench", undefined, "script_vehicle_littlebird_bench_allylanding_1" );
    _ID42542::main( "vehicle_little_bird_bench", undefined, "script_vehicle_littlebird_bench_allylanding_2" );
    _ID42323::main();
    maps\gulag::_ID49693();
    var_0 = getent( "cb2_stagelight", "targetname" );
    var_0 notify( "staging_on" );
    _ID43797::init();
    maps\gulag_aud::main();
    maps\gulag_lighting::main();
    _ID42337::main( level._ID805 );
    maps\gulag_code::_ID51304( "shower_hanging_lamp", "shower_hanging_light" );
    _ID42237::_ID30396( "low_health_destructible", maps\gulag_code::_ID44484 );
    _ID42237::_ID30398( "challenge_only", _ID42407::_ID31860 );
    thread maps\gulag::_ID53751();
    _ID42475::_ID34575( "start_bathroom_checkpoint" );
    maps\gulag_lighting::_ID46054( "gulag_showers" );
    _ID42262::_ID36816( "shower", 0 );
    _ID42234::_ID13611( "breach_2" );
    _ID42234::_ID13611( "hall_attack" );
    _func_31c( 2 );
    var_1 = getent( "start_bathroom_player", "targetname" );
    level.player setorigin( var_1.origin );
    level.player setplayerangles( var_1.angles );

    if ( getdvar( "beautiful_corner_demo" ) == "1" || getdvar( "beautiful_corner_hdr_demo" ) == "1" )
    {
        _ID49238::_ID19930();
        [[ _ID42237::_ID37527( getdvar( "beautiful_corner_demo" ) == "1", ::_ID46378, ::_ID43659 ) ]]();
        _ID49238::_ID47777();
    }
    else if ( getdvar( "beautiful_corner_security_cameras" ) == "1" )
    {
        _ID49238::_ID19930();
        _ID43882();
        _ID49238::_ID47777();
    }

    return 1;
}

_ID43659()
{
    level._ID44606 = 1;
    var_0 = spawn( "script_origin", ( -1818.6, -2119.8, 1866.34 ) );
    var_0.angles = ( -45.6501, -136.4, 0 );
    var_0.targetname = "beautiful_corner1_static";
    var_0 = spawn( "script_origin", ( -3759.7, -2447.6, 637.6 ) );
    var_0.angles = ( -19.25, -91.85, 0 );
    var_0.targetname = "beautiful_corner2_static";
    var_0 = spawn( "script_origin", ( -2479.24, -2634.25, 654.547 ) );
    var_0.angles = ( 0.219984, 111.43, 0 );
    var_0.targetname = "beautiful_corner3_static";
    var_0 = spawn( "script_origin", ( -1536, -1901, 557.1 ) );
    var_0.angles = ( 15.8401, -82.4699, 0 );
    var_0.targetname = "beautiful_corner4_static";
    var_0 = spawn( "script_origin", ( 43.2, 678.7, 289.6 ) );
    var_0.angles = ( 0.4, 101.9, 0 );
    var_0.targetname = "beautiful_corner5_static";
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner1" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner2" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner3" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner4" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner5" );
    level._ID54170["beautiful_corner1"] = "gulag";
    level._ID54170["beautiful_corner2"] = "gulag_hallways_cb2";
    level._ID54170["beautiful_corner3"] = "gulag_pipetunnels";
    level._ID54170["beautiful_corner4"] = "gulag_pipetunnels";
    level._ID54170["beautiful_corner5"] = "gulag_sewers";
    level._ID50047["beautiful_corner1"] = "gulag";
    level._ID50047["beautiful_corner2"] = "gulag_hallways_cb2";
    level._ID50047["beautiful_corner3"] = "gulag_pipetunnels";
    level._ID50047["beautiful_corner4"] = "gulag_pipetunnels";
    level._ID50047["beautiful_corner5"] = "gulag_sewers";
    level._ID54462["beautiful_corner1"] = "";
    level._ID54462["beautiful_corner2"] = "";
    level._ID54462["beautiful_corner3"] = "";
    level._ID54462["beautiful_corner4"] = "";
    level._ID54462["beautiful_corner5"] = "";
    level._ID46504["beautiful_corner1"] = undefined;
    level._ID46504["beautiful_corner2"] = undefined;
    level._ID46504["beautiful_corner3"] = undefined;
    level._ID46504["beautiful_corner4"] = undefined;
    level._ID46504["beautiful_corner5"] = undefined;
    level._ID45957["beautiful_corner1"] = 65;
    level._ID45957["beautiful_corner2"] = 65;
    level._ID45957["beautiful_corner3"] = 65;
    level._ID45957["beautiful_corner4"] = 65;
    level._ID45957["beautiful_corner5"] = 65;
    level._ID46778["beautiful_corner1"] = 0;
    level._ID46246["beautiful_corner1"] = 0;
    level._ID51913["beautiful_corner1"] = -0.5;
    level._ID46778["beautiful_corner2"] = 0;
    level._ID46246["beautiful_corner2"] = 0;
    level._ID51913["beautiful_corner2"] = -0.5;
    level._ID46778["beautiful_corner3"] = 0;
    level._ID46246["beautiful_corner3"] = 0;
    level._ID51913["beautiful_corner3"] = -0.5;
    level._ID46778["beautiful_corner4"] = 0;
    level._ID46246["beautiful_corner4"] = 0;
    level._ID51913["beautiful_corner4"] = -0.5;
    level._ID46778["beautiful_corner5"] = 0;
    level._ID46246["beautiful_corner5"] = 0;
    level._ID51913["beautiful_corner5"] = -0.5;
}

_ID46378()
{
    var_0 = spawn( "script_origin", ( -1145, -1800, 505 ) );
    var_0.angles = ( -10, 60, 0 );
    var_0.targetname = "beautiful_corner_start";
    var_0 = spawn( "script_origin", ( -1145, -1800, 505 ) );
    var_0.angles = ( -10, 60, 0 );
    var_0.targetname = "beautiful_corner_start_static";
    var_0 = spawn( "script_origin", ( -1356, -1597, 505 ) );
    var_0.angles = ( -10, 40, 0 );
    var_0.targetname = "beautiful_corner_start_end";
    var_0 = spawn( "script_origin", ( -1356, -1597, 505 ) );
    var_0.angles = ( -10, 40, 0 );
    var_0.targetname = "beautiful_corner_start_static_end";
    var_0 = spawn( "script_origin", ( -918.7, -1035.9, 525.8 ) );
    var_0.angles = ( 5, 60, 0 );
    var_0.targetname = "beautiful_corner_start2";
    var_0 = spawn( "script_origin", ( -918.7, -1035.9, 525.8 ) );
    var_0.angles = ( 5, 60, 0 );
    var_0.targetname = "beautiful_corner_start2_static";
    var_0 = spawn( "script_origin", ( -828, -945.9, 525.8 ) );
    var_0.angles = ( -5, 60, 0 );
    var_0.targetname = "beautiful_corner_start2_end";
    var_0 = spawn( "script_origin", ( -828, -945.9, 525.8 ) );
    var_0.angles = ( -5, 60, 0 );
    var_0.targetname = "beautiful_corner_start2_static_end";
    var_0 = spawn( "script_origin", ( -695, -635, 505 ) );
    var_0.angles = ( -7, 50, 0 );
    var_0.targetname = "beautiful_corner_start3";
    var_0 = spawn( "script_origin", ( -695, -635, 505 ) );
    var_0.angles = ( -7, 50, 0 );
    var_0.targetname = "beautiful_corner_start3_static";
    var_0 = spawn( "script_origin", ( -470, -410, 530 ) );
    var_0.angles = ( -15, 50, 0 );
    var_0.targetname = "beautiful_corner_start3_end";
    var_0 = spawn( "script_origin", ( -470, -410, 530 ) );
    var_0.angles = ( -15, 50, 0 );
    var_0.targetname = "beautiful_corner_start3_static_end";
    var_0 = spawn( "script_origin", ( -2367, -2016, 640 ) );
    var_0.angles = ( 0, 60, 0 );
    var_0.targetname = "beautiful_corner_start4";
    var_0 = spawn( "script_origin", ( -2367, -2016, 640 ) );
    var_0.angles = ( 0, 60, 0 );
    var_0.targetname = "beautiful_corner_start4_static";
    var_0 = spawn( "script_origin", ( -2525, -2241, 645 ) );
    var_0.angles = ( 0, 60, 5 );
    var_0.targetname = "beautiful_corner_start4_end";
    var_0 = spawn( "script_origin", ( -2525, -2241, 645 ) );
    var_0.angles = ( 0, 60, 5 );
    var_0.targetname = "beautiful_corner_start4_static_end";
    var_0 = spawn( "script_origin", ( -2230, -2578, 680 ) );
    var_0.angles = ( 0, -135, 0 );
    var_0.targetname = "beautiful_corner_start5";
    var_0 = spawn( "script_origin", ( -2230, -2578, 680 ) );
    var_0.angles = ( 0, -135, 0 );
    var_0.targetname = "beautiful_corner_start5_static";
    var_0 = spawn( "script_origin", ( -2318, -2517, 680 ) );
    var_0.angles = ( 0, -170, 0 );
    var_0.targetname = "beautiful_corner_start5_end";
    var_0 = spawn( "script_origin", ( -2318, -2517, 680 ) );
    var_0.angles = ( 5, -170, 0 );
    var_0.targetname = "beautiful_corner_start5_static_end";
    var_0 = spawn( "script_origin", ( -276.373, -579.784, 512.551 ) );
    var_0.angles = ( -1.9905, 77.921, 0 );
    var_0.targetname = "beautiful_corner_start6";
    var_0 = spawn( "script_origin", ( -276.373, -579.784, 512.551 ) );
    var_0.angles = ( -1.9905, 77.921, 0 );
    var_0.targetname = "beautiful_corner_start6_static";
    var_0 = spawn( "script_origin", ( -80.2587, -283.131, 516.078 ) );
    var_0.angles = ( -6.37829, 105.24, 0 );
    var_0.targetname = "beautiful_corner_start6_end";
    var_0 = spawn( "script_origin", ( -80.2587, -283.131, 516.078 ) );
    var_0.angles = ( -6.37829, 105.24, 0 );
    var_0.targetname = "beautiful_corner_start6_static_end";
    var_0 = spawn( "script_origin", ( -676, -252, 685 ) );
    var_0.angles = ( 0, 20, 0 );
    var_0.targetname = "beautiful_corner_start7";
    var_0 = spawn( "script_origin", ( -676, -252, 685 ) );
    var_0.angles = ( 0, 20, 0 );
    var_0.targetname = "beautiful_corner_start7_static";
    var_0 = spawn( "script_origin", ( -676, -252, 660 ) );
    var_0.angles = ( 15, -5, 0 );
    var_0.targetname = "beautiful_corner_start7_end";
    var_0 = spawn( "script_origin", ( -676, -252, 660 ) );
    var_0.angles = ( 15, -5, 0 );
    var_0.targetname = "beautiful_corner_start7_static_end";
    var_0 = spawn( "script_origin", ( -3784.81, 1138.69, 1850.92 ) );
    var_0.angles = ( 23.9705, -106.313, 0 );
    var_0.targetname = "beautiful_corner_start8";
    var_0 = spawn( "script_origin", ( -3784.81, 1138.69, 1850.92 ) );
    var_0.angles = ( 23.9705, -106.313, 0 );
    var_0.targetname = "beautiful_corner_start8_static";
    var_0 = spawn( "script_origin", ( -4139.94, 658.05, 1699.66 ) );
    var_0.angles = ( 16.2768, -65.3258, 0 );
    var_0.targetname = "beautiful_corner_start8_end";
    var_0 = spawn( "script_origin", ( -4139.94, 658.05, 1699.66 ) );
    var_0.angles = ( 16.2768, -65.3258, 0 );
    var_0.targetname = "beautiful_corner_start8_static_end";
    var_0 = spawn( "script_origin", ( -2207.68, -3320.79, 658.18 ) );
    var_0.angles = ( -0.686517, -167.471, 0 );
    var_0.targetname = "beautiful_corner_start9";
    var_0 = spawn( "script_origin", ( -2207.68, -3320.79, 658.18 ) );
    var_0.angles = ( -0.686517, -167.471, 0 );
    var_0.targetname = "beautiful_corner_start9_static";
    var_0 = spawn( "script_origin", ( -2794.01, -2928.55, 658.18 ) );
    var_0.angles = ( -0.686646, -167.47, 0 );
    var_0.targetname = "beautiful_corner_start9_end";
    var_0 = spawn( "script_origin", ( -2794.01, -2928.55, 658.18 ) );
    var_0.angles = ( -0.686646, -167.47, 0 );
    var_0.targetname = "beautiful_corner_start9_static_end";
    var_0 = spawn( "script_origin", ( 257.278, 520.631, 265.236 ) );
    var_0.angles = ( -6.37939, 125.632, 0 );
    var_0.targetname = "beautiful_corner_start10";
    var_0 = spawn( "script_origin", ( 257.278, 520.631, 265.236 ) );
    var_0.angles = ( -6.37939, 125.632, 0 );
    var_0.targetname = "beautiful_corner_start10_static";
    var_0 = spawn( "script_origin", ( 111.076, 777.144, 266.52 ) );
    var_0.angles = ( -11.9224, 130.698, 0 );
    var_0.targetname = "beautiful_corner_start10_end";
    var_0 = spawn( "script_origin", ( 111.076, 777.144, 266.52 ) );
    var_0.angles = ( -11.9224, 130.698, 0 );
    var_0.targetname = "beautiful_corner_start10_static_end";
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner_start" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner_start2" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner_start3" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner_start4" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner_start5" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner_start6" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner_start7" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner_start8" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner_start9" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner_start10" );
    level._ID54170["beautiful_corner_start"] = "gulag_showers_bc";
    level._ID54170["beautiful_corner_start2"] = "gulag_showers_end";
    level._ID54170["beautiful_corner_start3"] = "gulag_showers_end";
    level._ID54170["beautiful_corner_start4"] = "gulag_pipetunnels";
    level._ID54170["beautiful_corner_start5"] = "gulag_pipetunnels";
    level._ID54170["beautiful_corner_start6"] = "gulag_showers_end";
    level._ID54170["beautiful_corner_start7"] = "gulag_showers_end";
    level._ID54170["beautiful_corner_start8"] = "gulag_nohaze";
    level._ID54170["beautiful_corner_start9"] = "gulag_hallways_cb2";
    level._ID54170["beautiful_corner_start10"] = "gulag_sewers";
    level._ID50047["beautiful_corner_start"] = "gulag_showers";
    level._ID50047["beautiful_corner_start2"] = "gulag_showers";
    level._ID50047["beautiful_corner_start3"] = "gulag_showers";
    level._ID50047["beautiful_corner_start4"] = "gulag_pipetunnels";
    level._ID50047["beautiful_corner_start5"] = "gulag_pipetunnels";
    level._ID50047["beautiful_corner_start6"] = "gulag_showers_demo";
    level._ID50047["beautiful_corner_start7"] = "gulag_showers";
    level._ID50047["beautiful_corner_start8"] = "gulag_entrance";
    level._ID50047["beautiful_corner_start9"] = "gulag_hallways_cb2";
    level._ID50047["beautiful_corner_start10"] = "gulag_sewers";
    level._ID54462["beautiful_corner_start"] = "";
    level._ID54462["beautiful_corner_start2"] = "";
    level._ID54462["beautiful_corner_start3"] = "";
    level._ID54462["beautiful_corner_start4"] = "";
    level._ID54462["beautiful_corner_start5"] = "";
    level._ID54462["beautiful_corner_start6"] = "";
    level._ID54462["beautiful_corner_start7"] = "";
    level._ID54462["beautiful_corner_start8"] = "";
    level._ID54462["beautiful_corner_start9"] = "";
    level._ID54462["beautiful_corner_start10"] = "";
    level._ID46504["beautiful_corner_start"] = [];
    level._ID46504["beautiful_corner_start"]["fstop"] = 2.8;
    level._ID46504["beautiful_corner_start"]["focus_distance"] = 2000;
    level._ID46504["beautiful_corner_start"]["focus_speed"] = 20;
    level._ID46504["beautiful_corner_start"]["aperture_speed"] = 20;
    level._ID46504["beautiful_corner_start2"] = [];
    level._ID46504["beautiful_corner_start2"]["fstop"] = 6;
    level._ID46504["beautiful_corner_start2"]["focus_distance"] = 3600;
    level._ID46504["beautiful_corner_start2"]["focus_speed"] = 4;
    level._ID46504["beautiful_corner_start2"]["aperture_speed"] = 1;
    level._ID46504["beautiful_corner_start3"] = [];
    level._ID46504["beautiful_corner_start3"]["fstop"] = 2;
    level._ID46504["beautiful_corner_start3"]["focus_distance"] = 2300;
    level._ID46504["beautiful_corner_start3"]["focus_speed"] = 4;
    level._ID46504["beautiful_corner_start3"]["aperture_speed"] = 1;
    level._ID46504["beautiful_corner_start4"] = [];
    level._ID46504["beautiful_corner_start4"]["fstop"] = 2;
    level._ID46504["beautiful_corner_start4"]["focus_distance"] = 2300;
    level._ID46504["beautiful_corner_start4"]["focus_speed"] = 4;
    level._ID46504["beautiful_corner_start4"]["aperture_speed"] = 1;
    level._ID46504["beautiful_corner_start5"] = [];
    level._ID46504["beautiful_corner_start5"]["fstop"] = 2;
    level._ID46504["beautiful_corner_start5"]["focus_distance"] = 2300;
    level._ID46504["beautiful_corner_start5"]["focus_speed"] = 4;
    level._ID46504["beautiful_corner_start5"]["aperture_speed"] = 1;
    level._ID46504["beautiful_corner_start6"] = [];
    level._ID46504["beautiful_corner_start6"]["fstop"] = 2;
    level._ID46504["beautiful_corner_start6"]["focus_distance"] = 2300;
    level._ID46504["beautiful_corner_start6"]["focus_speed"] = 4;
    level._ID46504["beautiful_corner_start6"]["aperture_speed"] = 1;
    level._ID46504["beautiful_corner_start7"] = [];
    level._ID46504["beautiful_corner_start7"]["fstop"] = 2;
    level._ID46504["beautiful_corner_start7"]["focus_distance"] = 2300;
    level._ID46504["beautiful_corner_start7"]["focus_speed"] = 4;
    level._ID46504["beautiful_corner_start7"]["aperture_speed"] = 1;
    level._ID46504["beautiful_corner_start8"] = [];
    level._ID46504["beautiful_corner_start8"]["fstop"] = 2;
    level._ID46504["beautiful_corner_start8"]["focus_distance"] = 2300;
    level._ID46504["beautiful_corner_start8"]["focus_speed"] = 4;
    level._ID46504["beautiful_corner_start8"]["aperture_speed"] = 1;
    level._ID46504["beautiful_corner_start9"] = [];
    level._ID46504["beautiful_corner_start9"]["fstop"] = 2;
    level._ID46504["beautiful_corner_start9"]["focus_distance"] = 2300;
    level._ID46504["beautiful_corner_start9"]["focus_speed"] = 4;
    level._ID46504["beautiful_corner_start9"]["aperture_speed"] = 1;
    level._ID46504["beautiful_corner_start10"] = [];
    level._ID46504["beautiful_corner_start10"]["fstop"] = 2;
    level._ID46504["beautiful_corner_start10"]["focus_distance"] = 2300;
    level._ID46504["beautiful_corner_start10"]["focus_speed"] = 4;
    level._ID46504["beautiful_corner_start10"]["aperture_speed"] = 1;
    level._ID45957["beautiful_corner_start"] = 75;
    level._ID45957["beautiful_corner_start2"] = 75;
    level._ID45957["beautiful_corner_start3"] = 75;
    level._ID45957["beautiful_corner_start4"] = 75;
    level._ID45957["beautiful_corner_start5"] = 75;
    level._ID45957["beautiful_corner_start6"] = 75;
    level._ID45957["beautiful_corner_start7"] = 75;
    level._ID45957["beautiful_corner_start8"] = 75;
    level._ID45957["beautiful_corner_start9"] = 75;
    level._ID45957["beautiful_corner_start10"] = 75;
    level._ID46778["beautiful_corner_start"] = 13;
    level._ID46246["beautiful_corner_start"] = 0;
    level._ID51913["beautiful_corner_start"] = -0.5;
    level._ID46778["beautiful_corner_start2"] = 13;
    level._ID46246["beautiful_corner_start2"] = 0;
    level._ID51913["beautiful_corner_start2"] = -0.5;
    level._ID46778["beautiful_corner_start3"] = 13;
    level._ID46246["beautiful_corner_start3"] = 0;
    level._ID51913["beautiful_corner_start3"] = -0.5;
    level._ID46778["beautiful_corner_start4"] = 13;
    level._ID46246["beautiful_corner_start4"] = 0;
    level._ID51913["beautiful_corner_start4"] = -0.5;
    level._ID46778["beautiful_corner_start5"] = 15;
    level._ID46246["beautiful_corner_start5"] = 0;
    level._ID51913["beautiful_corner_start5"] = -0.5;
    level._ID46778["beautiful_corner_start6"] = 15;
    level._ID46246["beautiful_corner_start6"] = 0;
    level._ID51913["beautiful_corner_start6"] = -0.5;
    level._ID46778["beautiful_corner_start7"] = 11;
    level._ID46246["beautiful_corner_start7"] = 0;
    level._ID51913["beautiful_corner_start7"] = -0.5;
    level._ID46778["beautiful_corner_start8"] = 15;
    level._ID46246["beautiful_corner_start8"] = 0;
    level._ID51913["beautiful_corner_start8"] = -0.5;
    level._ID46778["beautiful_corner_start9"] = 15;
    level._ID46246["beautiful_corner_start9"] = 0;
    level._ID51913["beautiful_corner_start9"] = -0.5;
    level._ID46778["beautiful_corner_start10"] = 11;
    level._ID46246["beautiful_corner_start10"] = 0;
    level._ID51913["beautiful_corner_start10"] = -0.5;
}

_ID43882()
{
    level._ID44606 = 1;
    level._ID50146 = 1;
    var_0 = spawn( "script_origin", ( -4174.17, 457.944, 1762.43 ) );
    var_0.angles = ( 28.8417, -28.5141, 0 );
    var_0.targetname = "beautiful_corner_start";
    var_0 = spawn( "script_origin", ( -4174.17, 457.944, 1762.43 ) );
    var_0.angles = ( 28.8417, -28.5141, 0 );
    var_0.targetname = "beautiful_corner_start_static";
    var_0 = spawn( "script_origin", ( -4174.17, 457.944, 1762.43 ) );
    var_0.angles = ( 30.8283, 62.1988, 0 );
    var_0.targetname = "beautiful_corner_start_end";
    var_0 = spawn( "script_origin", ( -4174.17, 457.944, 1762.43 ) );
    var_0.angles = ( 30.8283, 62.1988, 0 );
    var_0.targetname = "beautiful_corner_start_static_end";
    var_0 = spawn( "script_origin", ( -1140, -911.297, 730.689 ) );
    var_0.angles = ( 42.2816, -118.084, 0 );
    var_0.targetname = "beautiful_corner_start2";
    var_0 = spawn( "script_origin", ( -1140, -911.297, 730.689 ) );
    var_0.angles = ( 42.2816, -118.084, 0 );
    var_0.targetname = "beautiful_corner_start2_static";
    var_0 = spawn( "script_origin", ( -1140, -911.297, 730.689 ) );
    var_0.angles = ( 43.1621, -47.9752, 0 );
    var_0.targetname = "beautiful_corner_start2_end";
    var_0 = spawn( "script_origin", ( -1140, -911.297, 730.689 ) );
    var_0.angles = ( 43.1621, -47.9752, 0 );
    var_0.targetname = "beautiful_corner_start2_static_end";
    var_0 = spawn( "script_origin", ( -3299.94, 5.72514, 1258.21 ) );
    var_0.angles = ( 27.0353, 151.52, 0 );
    var_0.targetname = "beautiful_corner_start3";
    var_0 = spawn( "script_origin", ( -3299.94, 5.72514, 1258.21 ) );
    var_0.angles = ( 27.0353, 151.52, 0 );
    var_0.targetname = "beautiful_corner_start3_static";
    var_0 = spawn( "script_origin", ( -3299.94, 5.72514, 1258.21 ) );
    var_0.angles = ( 26.7487, -120.837, 0 );
    var_0.targetname = "beautiful_corner_start3_end";
    var_0 = spawn( "script_origin", ( -3299.94, 5.72514, 1258.21 ) );
    var_0.angles = ( 26.7487, -120.837, 0 );
    var_0.targetname = "beautiful_corner_start3_static_end";
    var_0 = spawn( "script_origin", ( -2503.93, -1127.53, 1441.31 ) );
    var_0.angles = ( 5.40081, -33.7252, 0 );
    var_0.targetname = "beautiful_corner_start4";
    var_0 = spawn( "script_origin", ( -2503.93, -1127.53, 1441.31 ) );
    var_0.angles = ( 5.40081, -33.7252, 0 );
    var_0.targetname = "beautiful_corner_start4_static";
    var_0 = spawn( "script_origin", ( -2503.93, -1127.53, 1441.31 ) );
    var_0.angles = ( 6.32031, 28.8071, 0 );
    var_0.targetname = "beautiful_corner_start4_end";
    var_0 = spawn( "script_origin", ( -2503.93, -1127.53, 1441.31 ) );
    var_0.angles = ( 6.32031, 28.8071, 0 );
    var_0.targetname = "beautiful_corner_start4_static_end";
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner_start" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner_start2" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner_start3" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner_start4" );
    level._ID54170["beautiful_corner_start"] = "gulag_nohaze";
    level._ID54170["beautiful_corner_start2"] = "gulag_showers_bc";
    level._ID54170["beautiful_corner_start3"] = "gulag_hallways_cb2";
    level._ID54170["beautiful_corner_start4"] = "gulag_hallways_cb2";
    level._ID50047["beautiful_corner_start"] = "gulag_entrance";
    level._ID50047["beautiful_corner_start2"] = "gulag_showers";
    level._ID50047["beautiful_corner_start3"] = "gulag_hallways_cb2";
    level._ID50047["beautiful_corner_start4"] = "gulag_hallways_cb2";
    level._ID54462["beautiful_corner_start"] = "";
    level._ID54462["beautiful_corner_start2"] = "";
    level._ID54462["beautiful_corner_start3"] = "";
    level._ID54462["beautiful_corner_start4"] = "";
    level._ID46504["beautiful_corner_start"] = [];
    level._ID46504["beautiful_corner_start"]["fstop"] = 2;
    level._ID46504["beautiful_corner_start"]["focus_distance"] = 2300;
    level._ID46504["beautiful_corner_start"]["focus_speed"] = 4;
    level._ID46504["beautiful_corner_start"]["aperture_speed"] = 1;
    level._ID46504["beautiful_corner_start2"] = [];
    level._ID46504["beautiful_corner_start2"]["fstop"] = 2;
    level._ID46504["beautiful_corner_start2"]["focus_distance"] = 2300;
    level._ID46504["beautiful_corner_start2"]["focus_speed"] = 4;
    level._ID46504["beautiful_corner_start2"]["aperture_speed"] = 1;
    level._ID46504["beautiful_corner_start3"] = [];
    level._ID46504["beautiful_corner_start3"]["fstop"] = 2;
    level._ID46504["beautiful_corner_start3"]["focus_distance"] = 2300;
    level._ID46504["beautiful_corner_start3"]["focus_speed"] = 4;
    level._ID46504["beautiful_corner_start3"]["aperture_speed"] = 1;
    level._ID46504["beautiful_corner_start4"] = [];
    level._ID46504["beautiful_corner_start4"]["fstop"] = 2;
    level._ID46504["beautiful_corner_start4"]["focus_distance"] = 2300;
    level._ID46504["beautiful_corner_start4"]["focus_speed"] = 4;
    level._ID46504["beautiful_corner_start4"]["aperture_speed"] = 1;
    level._ID45957["beautiful_corner_start"] = 75;
    level._ID45957["beautiful_corner_start2"] = 75;
    level._ID45957["beautiful_corner_start3"] = 75;
    level._ID45957["beautiful_corner_start4"] = 75;
    level._ID46778["beautiful_corner_start"] = 9;
    level._ID46246["beautiful_corner_start"] = 0;
    level._ID51913["beautiful_corner_start"] = 2;
    level._ID46778["beautiful_corner_start2"] = 9;
    level._ID46246["beautiful_corner_start2"] = 0;
    level._ID51913["beautiful_corner_start2"] = 2;
    level._ID46778["beautiful_corner_start3"] = 9;
    level._ID46246["beautiful_corner_start3"] = 0;
    level._ID51913["beautiful_corner_start3"] = 2;
    level._ID46778["beautiful_corner_start4"] = 9;
    level._ID46246["beautiful_corner_start4"] = 0;
    level._ID51913["beautiful_corner_start4"] = 2;
}
