// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    _ID43797::init();
    maps\contingency::_ID49693();
    var_0 = getentarray( "cargo1_group2", "targetname" );
    var_1 = getentarray( "cargo2_group2", "targetname" );
    var_2 = getentarray( "cargo3_group2", "targetname" );
    _ID42237::_ID3294( var_0, ::delete );
    _ID42237::_ID3294( var_1, ::delete );
    _ID42237::_ID3294( var_2, ::delete );
    _ID51620::main();
    _ID44055::main();
    _ID52608::main();
    _ID49419::main();
    _ID42323::main();
    maps\contingency_anim::_ID43266();
    maps\contingency_lighting::main();
    maps\contingency_aud::main();
    thread _ID49238::_ID19930();

    if ( getdvar( "beautiful_corner_demo" ) != "1" )
        return 1;

    _ID45560();
    _ID49238::_ID47777();
    return 1;
}

_ID45560()
{
    var_0 = spawn( "script_origin", ( -35488.8, -15907.4, 282.937 ) );
    var_0.angles = ( -14.149, 43.9786, 0 );
    var_0.targetname = "beautiful_corner1";
    var_0 = spawn( "script_origin", ( -35488.8, -15907.4, 282.937 ) );
    var_0.angles = ( -14.149, 43.9786, 0 );
    var_0.targetname = "beautiful_corner1_static";
    var_0 = spawn( "script_origin", ( -35062.5, -15950.3, 322.799 ) );
    var_0.angles = ( -6.13219, 81.5282, 0 );
    var_0.targetname = "beautiful_corner1_end";
    var_0 = spawn( "script_origin", ( -35062.5, -15950.3, 322.799 ) );
    var_0.angles = ( -6.13219, 81.5282, 0 );
    var_0.targetname = "beautiful_corner1_static_end";
    var_0 = spawn( "script_origin", ( -34367, -13179.8, 114.697 ) );
    var_0.angles = ( -13.8792, -115.417, 0 );
    var_0.targetname = "beautiful_corner2";
    var_0 = spawn( "script_origin", ( -34367, -13179.8, 114.697 ) );
    var_0.angles = ( -13.8792, -115.417, 0 );
    var_0.targetname = "beautiful_corner2_static";
    var_0 = spawn( "script_origin", ( -34260.7, -12942.8, 150.108 ) );
    var_0.angles = ( -2.68706, -145.526, 0 );
    var_0.targetname = "beautiful_corner2_end";
    var_0 = spawn( "script_origin", ( -34260.7, -12942.8, 150.108 ) );
    var_0.angles = ( -2.68706, -145.526, 0 );
    var_0.targetname = "beautiful_corner2_static_end";
    var_0 = spawn( "script_origin", ( -34052.5, -14748.3, 400.995 ) );
    var_0.angles = ( 9.15979, 69.4963, 0 );
    var_0.targetname = "beautiful_corner3";
    var_0 = spawn( "script_origin", ( -34052.5, -14748.3, 400.995 ) );
    var_0.angles = ( 9.15979, 69.4963, 0 );
    var_0.targetname = "beautiful_corner3_static";
    var_0 = spawn( "script_origin", ( -33921.3, -14195.6, 394.223 ) );
    var_0.angles = ( -12.1223, 47.3408, 0 );
    var_0.targetname = "beautiful_corner3_end";
    var_0 = spawn( "script_origin", ( -33921.3, -14195.6, 394.223 ) );
    var_0.angles = ( -12.1223, 47.3408, 0 );
    var_0.targetname = "beautiful_corner3_static_end";
    var_0 = spawn( "script_origin", ( -36464.4, -15684.6, 138.479 ) );
    var_0.angles = ( -3.26925, 177.942, 0 );
    var_0.targetname = "beautiful_corner4";
    var_0 = spawn( "script_origin", ( -36464.4, -15684.6, 138.479 ) );
    var_0.angles = ( -3.26925, 177.942, 0 );
    var_0.targetname = "beautiful_corner4_static";
    var_0 = spawn( "script_origin", ( -37007.8, -15571.7, 98.0791 ) );
    var_0.angles = ( -19.7711, -165.507, 0 );
    var_0.targetname = "beautiful_corner4_end";
    var_0 = spawn( "script_origin", ( -37007.8, -15571.7, 98.0791 ) );
    var_0.angles = ( -19.7711, -165.507, 0 );
    var_0.targetname = "beautiful_corner4_static_end";
    var_0 = spawn( "script_origin", ( -29811.1, -9282.92, 751.834 ) );
    var_0.angles = ( -7.08324, 16.4647, 0 );
    var_0.targetname = "beautiful_corner5";
    var_0 = spawn( "script_origin", ( -29811.1, -9282.92, 751.834 ) );
    var_0.angles = ( -7.08324, 16.4647, 0 );
    var_0.targetname = "beautiful_corner5_static";
    var_0 = spawn( "script_origin", ( -28806.3, -9050.97, 751.834 ) );
    var_0.angles = ( -9.20028, 23.9817, 0 );
    var_0.targetname = "beautiful_corner5_end";
    var_0 = spawn( "script_origin", ( -28806.3, -9050.97, 751.834 ) );
    var_0.angles = ( -9.20028, 23.9817, 0 );
    var_0.targetname = "beautiful_corner5_static_end";
    var_0 = spawn( "script_origin", ( -27028.5, -8377.65, 737.763 ) );
    var_0.angles = ( -10.8266, 14.8136, 0 );
    var_0.targetname = "beautiful_corner6";
    var_0 = spawn( "script_origin", ( -27028.5, -8377.65, 737.763 ) );
    var_0.angles = ( -10.8266, 14.8136, 0 );
    var_0.targetname = "beautiful_corner6_static";
    var_0 = spawn( "script_origin", ( -26658.3, -8114.53, 737.763 ) );
    var_0.angles = ( -13.2791, -11.8574, 0 );
    var_0.targetname = "beautiful_corner6_end";
    var_0 = spawn( "script_origin", ( -26658.3, -8114.53, 737.763 ) );
    var_0.angles = ( -13.2791, -11.8574, 0 );
    var_0.targetname = "beautiful_corner6_static_end";
    var_0 = spawn( "script_origin", ( -22832.7, -8557.1, 1032.51 ) );
    var_0.angles = ( -16.6274, 64.2837, 0 );
    var_0.targetname = "beautiful_corner7";
    var_0 = spawn( "script_origin", ( -22832.7, -8557.1, 1032.51 ) );
    var_0.angles = ( -16.6274, 64.2837, 0 );
    var_0.targetname = "beautiful_corner7_static";
    var_0 = spawn( "script_origin", ( -22264.2, -8445.08, 1003.1 ) );
    var_0.angles = ( -16.6274, 64.2837, 0 );
    var_0.targetname = "beautiful_corner7_end";
    var_0 = spawn( "script_origin", ( -22264.2, -8445.08, 1003.1 ) );
    var_0.angles = ( -16.6274, 64.2837, 0 );
    var_0.targetname = "beautiful_corner7_static_end";
    var_0 = spawn( "script_origin", ( -22780.7, -7070.28, 1063.67 ) );
    var_0.angles = ( 9.80794, 20.5898, 0 );
    var_0.targetname = "beautiful_corner8";
    var_0 = spawn( "script_origin", ( -22780.7, -7070.28, 1063.67 ) );
    var_0.angles = ( 9.80794, 20.5898, 0 );
    var_0.targetname = "beautiful_corner8_static";
    var_0 = spawn( "script_origin", ( -22710.7, -6318.67, 1063.67 ) );
    var_0.angles = ( 5.68841, 62.0273, 0 );
    var_0.targetname = "beautiful_corner8_end";
    var_0 = spawn( "script_origin", ( -22710.7, -6318.67, 1063.67 ) );
    var_0.angles = ( 5.68841, 62.0273, 0 );
    var_0.targetname = "beautiful_corner8_static_end";
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner1" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner2" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner3" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner4" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner5" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner6" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner7" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner8" );
    level._ID54170["beautiful_corner1"] = "contingency_river";
    level._ID54170["beautiful_corner2"] = "contingency";
    level._ID54170["beautiful_corner3"] = "contingency";
    level._ID54170["beautiful_corner4"] = "contingency";
    level._ID54170["beautiful_corner5"] = "contingency_forest";
    level._ID54170["beautiful_corner6"] = "contingency_forest";
    level._ID54170["beautiful_corner7"] = "contingency_river";
    level._ID54170["beautiful_corner8"] = "contingency";
    level._ID50047["beautiful_corner1"] = "contingency_river";
    level._ID50047["beautiful_corner2"] = "contingency";
    level._ID50047["beautiful_corner3"] = "contingency";
    level._ID50047["beautiful_corner4"] = "contingency";
    level._ID50047["beautiful_corner5"] = "contingency_forest";
    level._ID50047["beautiful_corner6"] = "contingency_forest";
    level._ID50047["beautiful_corner7"] = "contingency_river";
    level._ID50047["beautiful_corner8"] = "contingency";
    level._ID54462["beautiful_corner1"] = "";
    level._ID54462["beautiful_corner2"] = "";
    level._ID54462["beautiful_corner3"] = "";
    level._ID54462["beautiful_corner4"] = "";
    level._ID54462["beautiful_corner5"] = "";
    level._ID54462["beautiful_corner6"] = "";
    level._ID54462["beautiful_corner7"] = "";
    level._ID54462["beautiful_corner8"] = "";
    level._ID46504["beautiful_corner1"] = [];
    level._ID46504["beautiful_corner1"]["fstop"] = 2;
    level._ID46504["beautiful_corner1"]["focus_distance"] = 200;
    level._ID46504["beautiful_corner1"]["focus_speed"] = 2;
    level._ID46504["beautiful_corner1"]["aperture_speed"] = 1;
    level._ID46504["beautiful_corner2"] = [];
    level._ID46504["beautiful_corner2"]["fstop"] = 2;
    level._ID46504["beautiful_corner2"]["focus_distance"] = 200;
    level._ID46504["beautiful_corner2"]["focus_speed"] = 2;
    level._ID46504["beautiful_corner2"]["aperture_speed"] = 1;
    level._ID46504["beautiful_corner3"] = [];
    level._ID46504["beautiful_corner3"]["fstop"] = 2;
    level._ID46504["beautiful_corner3"]["focus_distance"] = 200;
    level._ID46504["beautiful_corner3"]["focus_speed"] = 2;
    level._ID46504["beautiful_corner3"]["aperture_speed"] = 1;
    level._ID46504["beautiful_corner4"] = [];
    level._ID46504["beautiful_corner4"]["fstop"] = 2;
    level._ID46504["beautiful_corner4"]["focus_distance"] = 200;
    level._ID46504["beautiful_corner4"]["focus_speed"] = 2;
    level._ID46504["beautiful_corner4"]["aperture_speed"] = 1;
    level._ID46504["beautiful_corner5"] = [];
    level._ID46504["beautiful_corner5"]["fstop"] = 2;
    level._ID46504["beautiful_corner5"]["focus_distance"] = 200;
    level._ID46504["beautiful_corner5"]["focus_speed"] = 2;
    level._ID46504["beautiful_corner5"]["aperture_speed"] = 1;
    level._ID46504["beautiful_corner6"] = [];
    level._ID46504["beautiful_corner6"]["fstop"] = 2;
    level._ID46504["beautiful_corner6"]["focus_distance"] = 200;
    level._ID46504["beautiful_corner6"]["focus_speed"] = 2;
    level._ID46504["beautiful_corner6"]["aperture_speed"] = 1;
    level._ID46504["beautiful_corner7"] = [];
    level._ID46504["beautiful_corner7"]["fstop"] = 2;
    level._ID46504["beautiful_corner7"]["focus_distance"] = 200;
    level._ID46504["beautiful_corner7"]["focus_speed"] = 2;
    level._ID46504["beautiful_corner7"]["aperture_speed"] = 1;
    level._ID46504["beautiful_corner8"] = [];
    level._ID46504["beautiful_corner8"]["fstop"] = 2;
    level._ID46504["beautiful_corner8"]["focus_distance"] = 200;
    level._ID46504["beautiful_corner8"]["focus_speed"] = 2;
    level._ID46504["beautiful_corner8"]["aperture_speed"] = 1;
    level._ID45957["beautiful_corner1"] = 75;
    level._ID45957["beautiful_corner2"] = 75;
    level._ID45957["beautiful_corner3"] = 75;
    level._ID45957["beautiful_corner4"] = 75;
    level._ID45957["beautiful_corner5"] = 75;
    level._ID45957["beautiful_corner6"] = 75;
    level._ID45957["beautiful_corner7"] = 75;
    level._ID45957["beautiful_corner8"] = 75;
    level._ID46778["beautiful_corner1"] = 15;
    level._ID46246["beautiful_corner1"] = 0;
    level._ID51913["beautiful_corner1"] = -0.5;
    level._ID46778["beautiful_corner2"] = 15;
    level._ID46246["beautiful_corner2"] = 0;
    level._ID51913["beautiful_corner2"] = -0.5;
    level._ID46778["beautiful_corner3"] = 15;
    level._ID46246["beautiful_corner3"] = 0;
    level._ID51913["beautiful_corner3"] = -0.5;
    level._ID46778["beautiful_corner4"] = 15;
    level._ID46246["beautiful_corner4"] = 0;
    level._ID51913["beautiful_corner4"] = -0.5;
    level._ID46778["beautiful_corner5"] = 15;
    level._ID46246["beautiful_corner5"] = 0;
    level._ID51913["beautiful_corner5"] = -0.5;
    level._ID46778["beautiful_corner6"] = 15;
    level._ID46246["beautiful_corner6"] = 0;
    level._ID51913["beautiful_corner6"] = -0.5;
    level._ID46778["beautiful_corner7"] = 15;
    level._ID46246["beautiful_corner7"] = 0;
    level._ID51913["beautiful_corner7"] = -0.5;
    level._ID46778["beautiful_corner8"] = 15;
    level._ID46246["beautiful_corner8"] = 0;
    level._ID51913["beautiful_corner8"] = -0.5;
}
