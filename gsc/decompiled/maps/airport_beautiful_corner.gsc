// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_C662()
{
    if ( !_id_C056::initialize() )
        return 0;

    _id_AB15::init();
    _id_D4D2();
    _id_CDD0();
    maps\airport::_id_C21D();
    _id_B354::main();
    _id_B94F::main();
    _id_B864::main();
    _id_A8A4::main();
    _id_BEEE::main();
    _id_D19C::main();
    maps\airport_anim::main();
    maps\_load::main();
    maps\airport_lighting::main();
    maps\airport_aud::main();
    getent( "escape_van_dummy", "targetname" ) maps\_utility::add_spawn_function( maps\airport_code::_id_C086, "escape_van" );
    maps\_utility::activate_trigger( "escape_van_spawn", "targetname" );
    var_0 = getentarray( "ambulance_door_right", "targetname" );
    var_0 = maps\_utility::array_merge( var_0, getentarray( "ambulance_door_left", "targetname" ) );

    foreach ( var_2 in var_0 )
        var_2 delete();

    if ( getdvar( "beautiful_corner_demo" ) != "1" )
        return 1;

    _id_B1F8();
    _id_C056::_id_BAA1();
    return 1;
}

_id_CDD0()
{
    var_0 = getentarray( "script_model", "classname" );

    foreach ( var_2 in var_0 )
    {
        if ( issubstr( var_2.model, "body_" ) )
            var_2 delete();
    }

    var_0 = getentarray( "h2_intro_dead_people", "targetname" );
    var_0 = maps\_utility::array_merge( var_0, getentarray( "h2_departuregate_dead_people", "targetname" ) );

    foreach ( var_2 in var_0 )
        var_2 delete();
}

_id_D4D2()
{
    common_scripts\utility::array_call( getspawnerarray(), ::delete );
    common_scripts\utility::array_call( getaiarray(), ::delete );
}

_id_B1F8()
{
    var_0 = spawn( "script_origin", ( 5547.72, 1645.04, 23.1178 ) );
    var_0.angles = ( -13.1434, 131.043, 0 );
    var_0.targetname = "beautiful_corner1";
    var_0 = spawn( "script_origin", ( 5547.72, 1645.04, 23.1178 ) );
    var_0.angles = ( -13.1434, 131.043, 0 );
    var_0.targetname = "beautiful_corner1_static";
    var_0 = spawn( "script_origin", ( 5484.13, 2131.84, 379.15 ) );
    var_0.angles = ( 2.83482, 146.93, 0 );
    var_0.targetname = "beautiful_corner1_end";
    var_0 = spawn( "script_origin", ( 5484.13, 2131.84, 379.15 ) );
    var_0.angles = ( 2.83482, 146.93, 0 );
    var_0.targetname = "beautiful_corner1_static_end";
    var_0 = spawn( "script_origin", ( 5067.97, 3136.66, 302.727 ) );
    var_0.angles = ( -3.15795, -117.973, 0 );
    var_0.targetname = "beautiful_corner2";
    var_0 = spawn( "script_origin", ( 5067.97, 3136.66, 302.727 ) );
    var_0.angles = ( -3.15795, -117.973, 0 );
    var_0.targetname = "beautiful_corner2_static";
    var_0 = spawn( "script_origin", ( 4714.15, 3140.97, 302.727 ) );
    var_0.angles = ( -3.15788, -117.971, 0 );
    var_0.targetname = "beautiful_corner2_end";
    var_0 = spawn( "script_origin", ( 4714.15, 3140.97, 302.727 ) );
    var_0.angles = ( -3.15788, -117.971, 0 );
    var_0.targetname = "beautiful_corner2_static_end";
    var_0 = spawn( "script_origin", ( 4415.46, 2293.62, 344.35 ) );
    var_0.angles = ( 6.46121, -130.429, 0 );
    var_0.targetname = "beautiful_corner3";
    var_0 = spawn( "script_origin", ( 4415.46, 2293.62, 344.35 ) );
    var_0.angles = ( 6.46121, -130.429, 0 );
    var_0.targetname = "beautiful_corner3_static";
    var_0 = spawn( "script_origin", ( 4011.46, 2305.2, 344.35 ) );
    var_0.angles = ( 6.44318, -115.899, 0 );
    var_0.targetname = "beautiful_corner3_end";
    var_0 = spawn( "script_origin", ( 4011.46, 2305.2, 344.35 ) );
    var_0.angles = ( 6.44318, -115.899, 0 );
    var_0.targetname = "beautiful_corner3_static_end";
    var_0 = spawn( "script_origin", ( 3207.45, 3298.68, 376.468 ) );
    var_0.angles = ( 14.3518, 157.706, 0 );
    var_0.targetname = "beautiful_corner4";
    var_0 = spawn( "script_origin", ( 3207.45, 3298.68, 376.468 ) );
    var_0.angles = ( 14.3518, 157.706, 0 );
    var_0.targetname = "beautiful_corner4_static";
    var_0 = spawn( "script_origin", ( 3207.45, 3298.68, 376.468 ) );
    var_0.angles = ( 16.9029, -118.221, 0 );
    var_0.targetname = "beautiful_corner4_end";
    var_0 = spawn( "script_origin", ( 3207.45, 3298.68, 376.468 ) );
    var_0.angles = ( 16.9029, -118.221, 0 );
    var_0.targetname = "beautiful_corner4_static_end";
    var_0 = spawn( "script_origin", ( 3803.06, 4317.91, 335.635 ) );
    var_0.angles = ( 3.41713, -133.427, 0 );
    var_0.targetname = "beautiful_corner5";
    var_0 = spawn( "script_origin", ( 3803.06, 4317.91, 335.635 ) );
    var_0.angles = ( 3.41713, -133.427, 0 );
    var_0.targetname = "beautiful_corner5_static";
    var_0 = spawn( "script_origin", ( 3803.06, 4317.91, 335.635 ) );
    var_0.angles = ( 4.00784, -56.3852, 0 );
    var_0.targetname = "beautiful_corner5_end";
    var_0 = spawn( "script_origin", ( 3803.06, 4317.91, 335.635 ) );
    var_0.angles = ( 4.00784, -56.3852, 0 );
    var_0.targetname = "beautiful_corner5_static_end";
    var_0 = spawn( "script_origin", ( 3267.67, 4670.03, 335.718 ) );
    var_0.angles = ( -3.71819, 45.3178, 0 );
    var_0.targetname = "beautiful_corner6";
    var_0 = spawn( "script_origin", ( 3267.67, 4670.03, 335.718 ) );
    var_0.angles = ( -3.71819, 45.3178, 0 );
    var_0.targetname = "beautiful_corner6_static";
    var_0 = spawn( "script_origin", ( 3583.51, 4565.98, 321.972 ) );
    var_0.angles = ( -8.66787, 100.833, 0 );
    var_0.targetname = "beautiful_corner6_end";
    var_0 = spawn( "script_origin", ( 3583.51, 4565.98, 321.972 ) );
    var_0.angles = ( -8.66787, 100.833, 0 );
    var_0.targetname = "beautiful_corner6_static_end";
    var_0 = spawn( "script_origin", ( 3294.87, 4172.24, 327.424 ) );
    var_0.angles = ( -3.38675, 155.254, 0 );
    var_0.targetname = "beautiful_corner7";
    var_0 = spawn( "script_origin", ( 3294.87, 4172.24, 327.424 ) );
    var_0.angles = ( -3.38675, 155.254, 0 );
    var_0.targetname = "beautiful_corner7_static";
    var_0 = spawn( "script_origin", ( 3294.87, 4172.24, 327.424 ) );
    var_0.angles = ( -4.08897, -94.0619, 0 );
    var_0.targetname = "beautiful_corner7_end";
    var_0 = spawn( "script_origin", ( 3294.87, 4172.24, 327.424 ) );
    var_0.angles = ( -4.08897, -94.0619, 0 );
    var_0.targetname = "beautiful_corner7_static_end";
    var_0 = spawn( "script_origin", ( 2682.3, 4556.47, 286.172 ) );
    var_0.angles = ( -8.98089, -116.538, 0 );
    var_0.targetname = "beautiful_corner8";
    var_0 = spawn( "script_origin", ( 2682.3, 4556.47, 286.172 ) );
    var_0.angles = ( -8.98089, -116.538, 0 );
    var_0.targetname = "beautiful_corner8_static";
    var_0 = spawn( "script_origin", ( 2261.83, 4517.24, 286.172 ) );
    var_0.angles = ( -8.97072, -49.6633, 0 );
    var_0.targetname = "beautiful_corner8_end";
    var_0 = spawn( "script_origin", ( 2261.83, 4517.24, 286.172 ) );
    var_0.angles = ( -8.97072, -49.6633, 0 );
    var_0.targetname = "beautiful_corner8_static_end";
    var_0 = spawn( "script_origin", ( 2536.33, 4666.59, 307.819 ) );
    var_0.angles = ( -11.2841, -78.0111, 0 );
    var_0.targetname = "beautiful_corner9";
    var_0 = spawn( "script_origin", ( 2536.33, 4666.59, 307.819 ) );
    var_0.angles = ( -11.2841, -78.0111, 0 );
    var_0.targetname = "beautiful_corner9_static";
    var_0 = spawn( "script_origin", ( 2276.78, 4494.1, 310.361 ) );
    var_0.angles = ( -9.3, -60.8, 0 );
    var_0.targetname = "beautiful_corner9_end";
    var_0 = spawn( "script_origin", ( 2276.78, 4494.1, 310.361 ) );
    var_0.angles = ( -9.3, -60.8, 0 );
    var_0.targetname = "beautiful_corner9_static_end";
    var_0 = spawn( "script_origin", ( 2895.47, 3382.74, 179.472 ) );
    var_0.angles = ( 1.14801, 130.572, 0 );
    var_0.targetname = "beautiful_corner10";
    var_0 = spawn( "script_origin", ( 2895.47, 3382.74, 179.472 ) );
    var_0.angles = ( 1.14801, 130.572, 0 );
    var_0.targetname = "beautiful_corner10_static";
    var_0 = spawn( "script_origin", ( 2773.33, 3858.93, 164.229 ) );
    var_0.angles = ( -13.9278, 126.658, 0 );
    var_0.targetname = "beautiful_corner10_end";
    var_0 = spawn( "script_origin", ( 2773.33, 3858.93, 164.229 ) );
    var_0.angles = ( -13.9278, 126.658, 0 );
    var_0.targetname = "beautiful_corner10_static_end";
    var_0 = spawn( "script_origin", ( 3034.83, 4538.33, 347.588 ) );
    var_0.angles = ( 5.3129, -128.52, 0 );
    var_0.targetname = "beautiful_corner11";
    var_0 = spawn( "script_origin", ( 3034.83, 4538.33, 347.588 ) );
    var_0.angles = ( 5.3129, -128.52, 0 );
    var_0.targetname = "beautiful_corner11_static";
    var_0 = spawn( "script_origin", ( 2864.23, 4060.77, 305.394 ) );
    var_0.angles = ( 17.6122, -154.379, 0 );
    var_0.targetname = "beautiful_corner11_end";
    var_0 = spawn( "script_origin", ( 2864.23, 4060.77, 305.394 ) );
    var_0.angles = ( 17.6122, -154.379, 0 );
    var_0.targetname = "beautiful_corner11_static_end";
    var_0 = spawn( "script_origin", ( 1660.04, 4219.16, 381.956 ) );
    var_0.angles = ( 10.2925, -168.28, 0 );
    var_0.targetname = "beautiful_corner12";
    var_0 = spawn( "script_origin", ( 1660.04, 4219.16, 381.956 ) );
    var_0.angles = ( 10.2925, -168.28, 0 );
    var_0.targetname = "beautiful_corner12_static";
    var_0 = spawn( "script_origin", ( 227.466, 2800.3, 381.956 ) );
    var_0.angles = ( 1.31578, 140.766, 0 );
    var_0.targetname = "beautiful_corner12_end";
    var_0 = spawn( "script_origin", ( 227.466, 2800.3, 381.956 ) );
    var_0.angles = ( 1.31578, 140.766, 0 );
    var_0.targetname = "beautiful_corner12_static_end";
    var_0 = spawn( "script_origin", ( -3677.78, 4951.05, -129.489 ) );
    var_0.angles = ( -4.55152, -108.566, 0 );
    var_0.targetname = "beautiful_corner13";
    var_0 = spawn( "script_origin", ( -3677.78, 4951.05, -129.489 ) );
    var_0.angles = ( -4.55152, -108.566, 0 );
    var_0.targetname = "beautiful_corner13_static";
    var_0 = spawn( "script_origin", ( -3968.01, 4679.83, -129.489 ) );
    var_0.angles = ( -11.8402, -95.688, 0 );
    var_0.targetname = "beautiful_corner13_end";
    var_0 = spawn( "script_origin", ( -3968.01, 4679.83, -129.489 ) );
    var_0.angles = ( -11.8402, -95.688, 0 );
    var_0.targetname = "beautiful_corner13_static_end";
    level._id_A949 = common_scripts\utility::array_add( level._id_A949, "beautiful_corner1" );
    level._id_A949 = common_scripts\utility::array_add( level._id_A949, "beautiful_corner2" );
    level._id_A949 = common_scripts\utility::array_add( level._id_A949, "beautiful_corner3" );
    level._id_A949 = common_scripts\utility::array_add( level._id_A949, "beautiful_corner4" );
    level._id_A949 = common_scripts\utility::array_add( level._id_A949, "beautiful_corner5" );
    level._id_A949 = common_scripts\utility::array_add( level._id_A949, "beautiful_corner6" );
    level._id_A949 = common_scripts\utility::array_add( level._id_A949, "beautiful_corner7" );
    level._id_A949 = common_scripts\utility::array_add( level._id_A949, "beautiful_corner8" );
    level._id_A949 = common_scripts\utility::array_add( level._id_A949, "beautiful_corner9" );
    level._id_A949 = common_scripts\utility::array_add( level._id_A949, "beautiful_corner10" );
    level._id_A949 = common_scripts\utility::array_add( level._id_A949, "beautiful_corner11" );
    level._id_A949 = common_scripts\utility::array_add( level._id_A949, "beautiful_corner12" );
    level._id_A949 = common_scripts\utility::array_add( level._id_A949, "beautiful_corner13" );
    level._id_D39A["beautiful_corner1"] = "airport";
    level._id_D39A["beautiful_corner2"] = "airport";
    level._id_D39A["beautiful_corner3"] = "airport";
    level._id_D39A["beautiful_corner4"] = "airport";
    level._id_D39A["beautiful_corner5"] = "airport";
    level._id_D39A["beautiful_corner6"] = "airport";
    level._id_D39A["beautiful_corner7"] = "airport";
    level._id_D39A["beautiful_corner8"] = "airport";
    level._id_D39A["beautiful_corner9"] = "airport";
    level._id_D39A["beautiful_corner10"] = "airport";
    level._id_D39A["beautiful_corner11"] = "airport";
    level._id_D39A["beautiful_corner12"] = "airport";
    level._id_D39A["beautiful_corner13"] = "airport";
    level._id_C37F["beautiful_corner1"] = "airport";
    level._id_C37F["beautiful_corner2"] = "airport";
    level._id_C37F["beautiful_corner3"] = "airport";
    level._id_C37F["beautiful_corner4"] = "airport";
    level._id_C37F["beautiful_corner5"] = "airport";
    level._id_C37F["beautiful_corner6"] = "airport";
    level._id_C37F["beautiful_corner7"] = "airport";
    level._id_C37F["beautiful_corner8"] = "airport";
    level._id_C37F["beautiful_corner9"] = "airport";
    level._id_C37F["beautiful_corner10"] = "airport";
    level._id_C37F["beautiful_corner11"] = "airport";
    level._id_C37F["beautiful_corner12"] = "airport";
    level._id_C37F["beautiful_corner13"] = "airport";
    level._id_D4BE["beautiful_corner1"] = "";
    level._id_D4BE["beautiful_corner2"] = "";
    level._id_D4BE["beautiful_corner3"] = "";
    level._id_D4BE["beautiful_corner4"] = "";
    level._id_D4BE["beautiful_corner5"] = "";
    level._id_D4BE["beautiful_corner6"] = "";
    level._id_D4BE["beautiful_corner7"] = "";
    level._id_D4BE["beautiful_corner8"] = "";
    level._id_D4BE["beautiful_corner9"] = "";
    level._id_D4BE["beautiful_corner10"] = "";
    level._id_D4BE["beautiful_corner11"] = "";
    level._id_D4BE["beautiful_corner12"] = "";
    level._id_D4BE["beautiful_corner13"] = "";
    level._id_B5A8["beautiful_corner1"] = [];
    level._id_B5A8["beautiful_corner1"]["fstop"] = 2;
    level._id_B5A8["beautiful_corner1"]["focus_distance"] = 200;
    level._id_B5A8["beautiful_corner1"]["focus_speed"] = 2;
    level._id_B5A8["beautiful_corner1"]["aperture_speed"] = 1;
    level._id_B5A8["beautiful_corner2"] = [];
    level._id_B5A8["beautiful_corner2"]["fstop"] = 2;
    level._id_B5A8["beautiful_corner2"]["focus_distance"] = 200;
    level._id_B5A8["beautiful_corner2"]["focus_speed"] = 2;
    level._id_B5A8["beautiful_corner2"]["aperture_speed"] = 1;
    level._id_B5A8["beautiful_corner3"] = [];
    level._id_B5A8["beautiful_corner3"]["fstop"] = 2;
    level._id_B5A8["beautiful_corner3"]["focus_distance"] = 200;
    level._id_B5A8["beautiful_corner3"]["focus_speed"] = 2;
    level._id_B5A8["beautiful_corner3"]["aperture_speed"] = 1;
    level._id_B5A8["beautiful_corner4"] = [];
    level._id_B5A8["beautiful_corner4"]["fstop"] = 2;
    level._id_B5A8["beautiful_corner4"]["focus_distance"] = 200;
    level._id_B5A8["beautiful_corner4"]["focus_speed"] = 2;
    level._id_B5A8["beautiful_corner4"]["aperture_speed"] = 1;
    level._id_B5A8["beautiful_corner5"] = [];
    level._id_B5A8["beautiful_corner5"]["fstop"] = 2;
    level._id_B5A8["beautiful_corner5"]["focus_distance"] = 200;
    level._id_B5A8["beautiful_corner5"]["focus_speed"] = 2;
    level._id_B5A8["beautiful_corner5"]["aperture_speed"] = 1;
    level._id_B5A8["beautiful_corner6"] = [];
    level._id_B5A8["beautiful_corner6"]["fstop"] = 2;
    level._id_B5A8["beautiful_corner6"]["focus_distance"] = 200;
    level._id_B5A8["beautiful_corner6"]["focus_speed"] = 2;
    level._id_B5A8["beautiful_corner6"]["aperture_speed"] = 1;
    level._id_B5A8["beautiful_corner7"] = [];
    level._id_B5A8["beautiful_corner7"]["fstop"] = 2;
    level._id_B5A8["beautiful_corner7"]["focus_distance"] = 200;
    level._id_B5A8["beautiful_corner7"]["focus_speed"] = 2;
    level._id_B5A8["beautiful_corner7"]["aperture_speed"] = 1;
    level._id_B5A8["beautiful_corner8"] = [];
    level._id_B5A8["beautiful_corner8"]["fstop"] = 2;
    level._id_B5A8["beautiful_corner8"]["focus_distance"] = 200;
    level._id_B5A8["beautiful_corner8"]["focus_speed"] = 2;
    level._id_B5A8["beautiful_corner8"]["aperture_speed"] = 1;
    level._id_B5A8["beautiful_corner9"] = [];
    level._id_B5A8["beautiful_corner9"]["fstop"] = 2;
    level._id_B5A8["beautiful_corner9"]["focus_distance"] = 200;
    level._id_B5A8["beautiful_corner9"]["focus_speed"] = 2;
    level._id_B5A8["beautiful_corner9"]["aperture_speed"] = 1;
    level._id_B5A8["beautiful_corner10"] = [];
    level._id_B5A8["beautiful_corner10"]["fstop"] = 2;
    level._id_B5A8["beautiful_corner10"]["focus_distance"] = 200;
    level._id_B5A8["beautiful_corner10"]["focus_speed"] = 2;
    level._id_B5A8["beautiful_corner10"]["aperture_speed"] = 1;
    level._id_B5A8["beautiful_corner11"] = [];
    level._id_B5A8["beautiful_corner11"]["fstop"] = 2;
    level._id_B5A8["beautiful_corner11"]["focus_distance"] = 200;
    level._id_B5A8["beautiful_corner11"]["focus_speed"] = 2;
    level._id_B5A8["beautiful_corner11"]["aperture_speed"] = 1;
    level._id_B5A8["beautiful_corner12"] = [];
    level._id_B5A8["beautiful_corner12"]["fstop"] = 2;
    level._id_B5A8["beautiful_corner12"]["focus_distance"] = 200;
    level._id_B5A8["beautiful_corner12"]["focus_speed"] = 2;
    level._id_B5A8["beautiful_corner12"]["aperture_speed"] = 1;
    level._id_B5A8["beautiful_corner13"] = [];
    level._id_B5A8["beautiful_corner13"]["fstop"] = 2;
    level._id_B5A8["beautiful_corner13"]["focus_distance"] = 200;
    level._id_B5A8["beautiful_corner13"]["focus_speed"] = 2;
    level._id_B5A8["beautiful_corner13"]["aperture_speed"] = 1;
    level._id_B385["beautiful_corner1"] = 75;
    level._id_B385["beautiful_corner2"] = 75;
    level._id_B385["beautiful_corner3"] = 75;
    level._id_B385["beautiful_corner4"] = 75;
    level._id_B385["beautiful_corner5"] = 75;
    level._id_B385["beautiful_corner6"] = 75;
    level._id_B385["beautiful_corner7"] = 75;
    level._id_B385["beautiful_corner8"] = 75;
    level._id_B385["beautiful_corner9"] = 75;
    level._id_B385["beautiful_corner10"] = 75;
    level._id_B385["beautiful_corner11"] = 75;
    level._id_B385["beautiful_corner12"] = 75;
    level._id_B385["beautiful_corner13"] = 75;
    level._id_B6BA["beautiful_corner1"] = 15;
    level._id_B4A6["beautiful_corner1"] = 0;
    level._id_CAC9["beautiful_corner1"] = -0.5;
    level._id_B6BA["beautiful_corner2"] = 15;
    level._id_B4A6["beautiful_corner2"] = 0;
    level._id_CAC9["beautiful_corner2"] = -0.5;
    level._id_B6BA["beautiful_corner3"] = 15;
    level._id_B4A6["beautiful_corner3"] = 0;
    level._id_CAC9["beautiful_corner3"] = -0.5;
    level._id_B6BA["beautiful_corner4"] = 15;
    level._id_B4A6["beautiful_corner4"] = 0;
    level._id_CAC9["beautiful_corner4"] = -0.5;
    level._id_B6BA["beautiful_corner5"] = 15;
    level._id_B4A6["beautiful_corner5"] = 0;
    level._id_CAC9["beautiful_corner5"] = -0.5;
    level._id_B6BA["beautiful_corner6"] = 15;
    level._id_B4A6["beautiful_corner6"] = 0;
    level._id_CAC9["beautiful_corner6"] = -0.5;
    level._id_B6BA["beautiful_corner7"] = 15;
    level._id_B4A6["beautiful_corner7"] = 0;
    level._id_CAC9["beautiful_corner7"] = -0.5;
    level._id_B6BA["beautiful_corner8"] = 15;
    level._id_B4A6["beautiful_corner8"] = 0;
    level._id_CAC9["beautiful_corner8"] = -0.5;
    level._id_B6BA["beautiful_corner9"] = 15;
    level._id_B4A6["beautiful_corner9"] = 0;
    level._id_CAC9["beautiful_corner9"] = -0.5;
    level._id_B6BA["beautiful_corner10"] = 15;
    level._id_B4A6["beautiful_corner10"] = 0;
    level._id_CAC9["beautiful_corner10"] = -0.5;
    level._id_B6BA["beautiful_corner11"] = 15;
    level._id_B4A6["beautiful_corner11"] = 0;
    level._id_CAC9["beautiful_corner11"] = -0.5;
    level._id_B6BA["beautiful_corner12"] = 15;
    level._id_B4A6["beautiful_corner12"] = 0;
    level._id_CAC9["beautiful_corner12"] = -0.5;
    level._id_B6BA["beautiful_corner13"] = 15;
    level._id_B4A6["beautiful_corner13"] = 0;
    level._id_CAC9["beautiful_corner13"] = -0.5;
}
