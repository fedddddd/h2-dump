// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    level._ID1426["icicle_end_des"] = loadfx( "fx/props/icicle_end_des" );
    level._ID1426["icicle_tall_des"] = loadfx( "fx/props/icicle_tall_des" );
    level._ID1426["icicle_small_des"] = loadfx( "fx/props/icicle_small_des" );
    _ID42411::_ID6215( "script_vehicle_littlebird_armed", "littlebird", "vehicle_little_bird_armed", "fx/explosions/helicopter_explosion_secondary_small", "tag_engine", "littlebird_helicopter_secondary_exp", undefined, undefined, undefined, 0.0, 1 );
    _ID42411::_ID6215( "script_vehicle_littlebird_armed", "littlebird", "vehicle_little_bird_armed", "fx/fire/fire_smoke_trail_L_oilrig", "tag_engine", "littlebird_helicopter_dying_loop", 1, 0.05, 1, 0.5, 1 );
    _ID42411::_ID6215( "script_vehicle_littlebird_armed", "littlebird", "vehicle_little_bird_armed", "fx/explosions/helicopter_explosion_secondary_small", "tag_engine", "littlebird_helicopter_secondary_exp", undefined, undefined, undefined, 2.5, 1 );
    _ID42411::_ID6215( "script_vehicle_littlebird_armed", "littlebird", "vehicle_little_bird_armed", "vfx/water/mortarExp_water_runner", undefined, "littlebird_helicopter_crash", undefined, undefined, undefined, -1, undefined, "stop_crash_loop_sound" );
    thread _ID28382();
    thread _ID38735();
    _ID54180::main();
    _ID46339::main();
    _ID45832();
    thread _ID48941();
    thread setlightdefault();
}

_ID28382()
{
    level._ID1426["pipe_steam"] = loadfx( "fx/impacts/pipe_steam" );
    level._ID1426["firelp_small_pm_nolight"] = loadfx( "fx/fire/firelp_small_pm_nolight" );
    level._ID1426["firelp_small_pm"] = loadfx( "fx/fire/firelp_small_pm" );
    level._ID1426["minigun_shell_eject"] = loadfx( "fx/shellejects/20mm_mp" );
    level._ID1426["oilrig_underwater_cam_distort"] = loadfx( "fx/water/oilrig_underwater_cam_distort" );
    level._ID1426["propane_large_exp_h2_oilrig"] = loadfx( "fx/explosions/propane_large_exp_h2_oilrig" );
    level._ID1426["tower_light_blue_steady_oilrig"] = loadfx( "fx/misc/tower_light_blue_steady_oilrig" );
    level._ID1426["cold_breath"] = loadfx( "fx/misc/cold_breath_oilrig" );
    level._ID1426["player_death_explosion"] = loadfx( "fx/explosions/player_death_explosion" );
    level._ID1426["smokescreen"] = loadfx( "vfx/map/oilrig/oilrig_smoke_screen" );
    level._ID1426["sdv_prop_wash_1"] = loadfx( "fx/water/sdv_prop_wash_1" );
    level._ID1426["sdv_contrail"] = loadfx( "fx/smoke/jet_contrail" );
    level._ID1426["c4exp_default"] = loadfx( "fx/explosions/c4exp_default" );
    level._ID1426["smokescreen_oilrig_fadeout"] = loadfx( "vfx/map/oilrig/smokescreen_oilrig_fadeout" );
    level._ID1426["dirty_foam_oilrig"] = loadfx( "vfx/water/dirty_foam_oilrig" );
    level._ID1426["underwater_godray_oilrig"] = loadfx( "vfx/lights/underwater_godray_oilrig" );
    level._ID1426["caustics_oilrig_zedge"] = loadfx( "fx/water/caustics_oilrig_zedge" );
    level._ID1426["caustics_oilrig_sdv_player"] = loadfx( "fx/water/caustics_oilrig_sdv_player" );
    level._ID1426["spotlight_oilrig_sdv_player"] = loadfx( "fx/water/spotlight_oilrig_sdv_player" );
    level._ID1426["drips_oilrig_watersurface"] = loadfx( "fx/misc/drips_oilrig_watersurface" );
    level._ID1426["caustic_projected_oilrig"] = loadfx( "vfx/water/caustic_projected_oilrig" );
    level._ID1426["scuba_bubbles"] = loadfx( "fx/water/scuba_bubbles_breath_player_oilrig" );
    level._ID1426["scuba_bubbles_friendly"] = loadfx( "fx/water/scuba_bubbles_breath" );
    level._ID1426["oilrig_underwater_ambient"] = loadfx( "fx/water/oilrig_underwater_ambient" );
    level._ID1426["oilrig_underwater_ambient_emitter"] = loadfx( "fx/water/oilrig_underwater_ambient_emitter" );
    level._ID1426["oilrig_underwater_ambient_looped"] = loadfx( "fx/water/oilrig_underwater_ambient_looped" );
    level._ID1426["fish_school01"] = loadfx( "fx/animals/fish_school01" );
    level._ID1426["fish_school_top_oilrig_base"] = loadfx( "fx/animals/fish_school_top_oilrig_base" );
    level._ID1426["fish_school_side_med"] = loadfx( "fx/animals/fish_school_side_med" );
    level._ID1426["fish_school_side_large"] = loadfx( "fx/animals/fish_school_side_large" );
    level._ID1426["oilrig_underwater_caustic"] = loadfx( "fx/water/oilrig_underwater_caustic" );
    level._ID1426["intro_bubbles_door_oilrig"] = loadfx( "vfx/water/intro_bubbles_door_oilrig" );
    level._ID1426["intro_bubbles_oilrig"] = loadfx( "vfx/water/intro_bubbles_oilrig" );
    level._ID1426["screen_splash_distort_wash_oilrig"] = loadfx( "vfx/distortion/screen_splash_distort_wash_oilrig" );
    level._ID1426["oilrig_underwater_ambient_looped_nosmoke"] = loadfx( "fx/water/oilrig_underwater_ambient_looped_nosmoke" );
    level._ID1426["oilrig_wavebreak_contact"] = loadfx( "vfx/water/oilrig_wavebreak_contact" );
    level._ID1426["oilrig_wavebreak_ocean"] = loadfx( "vfx/water/oilrig_wavebreak_ocean" );
    level._ID1426["oilrig_structure_caustic_square"] = loadfx( "fx/water/oilrig_structure_caustic_square" );
    level._ID1426["oilrig_player_wave"] = loadfx( "vfx/water/oilrig_player_wave" );
    level._ID1426["water_stop"] = loadfx( "fx/misc/parabolic_water_stand" );
    level._ID1426["water_movement"] = loadfx( "fx/misc/parabolic_water_movement" );
    level._ID1426["oilrig_wavebreak_iceberg"] = loadfx( "vfx/water/oilrig_wavebreak_iceberg" );
    level._ID1426["godray_underwater_oilrig"] = loadfx( "vfx/lights/godray_underwater_oilrig" );
    level._ID1426["bloodspurt_underwater"] = loadfx( "fx/water/blood_spurt_underwater" );
    level._ID1426["deathfx_bloodpool_underwater"] = loadfx( "fx/impacts/deathfx_bloodpool_underwater" );
    level._ID1426["splash_underwater_stealthkill"] = loadfx( "fx/water/splash_underwater_stealthkill" );
    level._ID1426["oilrig_ai_wave"] = loadfx( "vfx/water/oilrig_ai_wave" );
    level._ID1426["drips_player_hand"] = loadfx( "fx/water/drips_player_hand" );
    level._ID1426["ripple_distortion_oilrig"] = loadfx( "vfx/water/ripple_distortion_oilrig" );
    level._ID1426["oil_rig_fire"] = loadfx( "fx/fire/oil_rig_fire" );
    level._ID1426["wavebreak_oilrig_runner"] = loadfx( "fx/misc/wavebreak_oilrig_runner" );
    level._ID1426["water_froth_oilrig"] = loadfx( "fx/misc/water_froth_oilrig" );
    level._ID1426["water_froth_oilrig_leg_runner"] = loadfx( "fx/misc/water_froth_oilrig_leg_runner" );
    level._ID1426["bird_seagull_flock_large"] = loadfx( "fx/misc/bird_seagull_flock_large" );
    level._ID1426["powerline_runner"] = loadfx( "fx/explosions/powerline_runner" );
    level._ID1426["knife_attack_throat_oilrig"] = loadfx( "vfx/map/oilrig/knife_attack_throat_oilrig" );
    level._ID1426["underwater_godray_oilrig_far"] = loadfx( "vfx/lights/underwater_godray_oilrig_far" );
    level._ID1426["underwater_godray_oilrig_short"] = loadfx( "vfx/lights/underwater_godray_oilrig_short" );
    level._ID1426["oilrig_wavebreak_iceberg_large"] = loadfx( "vfx/water/oilrig_wavebreak_iceberg_large" );
    level._ID1426["fish_school_oilrig"] = loadfx( "vfx/animal/fish_school_oilrig" );
    level._ID1426["fog_distant_vista_oirlig"] = loadfx( "vfx/fog/fog_distant_vista_oirlig" );
    level._ID1426["iceberg_zedge_oilrig"] = loadfx( "vfx/fog/iceberg_zedge_oilrig" );
    level._ID1426["oilrig_sdv_rimlight"] = loadfx( "vfx/lights/oilrig_sdv_rimlight" );
    level._ID1426["fire_smoke_trail_l_oilrig"] = loadfx( "fx/fire/fire_smoke_trail_l_oilrig" );
    level._ID1426["oilrig_turbine_steam"] = loadfx( "vfx/map/oilrig/oilrig_turbine_steam" );
    level._ID1426["fluorescent_light_cone_oilrig"] = loadfx( "vfx/lights/fluorescent_light_cone_oilrig" );
    level._ID1426["grate_smoke_oilrig"] = loadfx( "fx/smoke/grate_smoke_oilrig" );
    level._ID1426["oilrig_drips_riser"] = loadfx( "fx/water/oilrig_drips_riser" );
    level._ID1426["splash_ring_32_oilrig"] = loadfx( "fx/water/splash_ring_32_oilrig" );
    level._ID1426["drips_slow"] = loadfx( "fx/misc/drips_slow" );
    level._ID1426["steam_vent_small"] = loadfx( "fx/smoke/steam_vent_small" );
    level._ID1426["steam_manhole"] = loadfx( "fx/smoke/steam_manhole" );
    level._ID1426["steam_room_100"] = loadfx( "fx/smoke/steam_room_100" );
    level._ID1426["steam_hall_200"] = loadfx( "fx/smoke/steam_hall_200" );
    level._ID1426["steam_room_100_orange"] = loadfx( "fx/smoke/steam_room_100_orange" );
    level._ID1426["steam_hall_200_orange"] = loadfx( "fx/smoke/steam_hall_200_orange" );
    level._ID1426["light_glow_grating_yellow"] = loadfx( "fx/misc/light_glow_grating_yellow" );
    level._ID1426["oilrig_debri_large"] = loadfx( "fx/misc/oilrig_debri_large" );
    level._ID1426["ground_fog_oilrig"] = loadfx( "fx/smoke/ground_fog_oilrig" );
    level._ID1426["ground_fog_oilrig_far"] = loadfx( "fx/smoke/ground_fog_oilrig_far" );
    level._ID1426["thin_black_smoke_M"] = loadfx( "fx/smoke/thin_black_smoke_M_nofog" );
    level._ID1426["thin_black_smoke_L"] = loadfx( "fx/smoke/thin_black_smoke_L_nofog" );
    level._ID1426["thin_black_smoke_S"] = loadfx( "fx/smoke/thin_black_smoke_S_nofog" );
    level._ID1426["cigarette_smk_vlobby"] = loadfx( "vfx/smoke/cigarette_smk_vlobby" );
    level._ID1426["cigarette_exhale_vlobby"] = loadfx( "vfx/smoke/cigarette_exhale_vlobby" );
    level._ID1426["cigarette_ash_vlobby"] = loadfx( "vfx/smoke/cigarette_ash_vlobby" );
    level._ID1426["cigarette_endglow_vlobby"] = loadfx( "vfx/smoke/cigarette_endglow_vlobby" );
    level._ID1426["underwater_particulates_01"] = loadfx( "fx/dust/light_shaft_dust_large" );
    level._ID1426["underwater_particulates_02"] = loadfx( "fx/dust/room_dust_200" );
    level._ID1426["underwater_particulates_03"] = loadfx( "fx/dust/room_dust_100" );
    level._ID1426["heli_snow_default_oilrig"] = loadfx( "fx/treadfx/heli_snow_default_oilrig" );
    level._ID1426["screen_splash_distort_wash_oilrig_vertical"] = loadfx( "vfx/distortion/screen_splash_distort_wash_oilrig_vertical" );
    level._ID1426["oilrig_wavebreak"] = loadfx( "vfx/water/oilrig_wavebreak" );
    level._ID1426["underwater_particles_oilrig"] = loadfx( "vfx/lights/underwater_particles_oilrig" );
    level._ID1426["lensflare_floodlight_on_yellow_oilrig"] = loadfx( "vfx/lights/lensflare_floodlight_on_yellow_oilrig" );
    level._ID1426["body_splash_railing"] = loadfx( "fx/impacts/water_splash_bodydump" );
    level._ID1426["ambush_explosion_03"] = loadfx( "fx/explosions/window_explosion_1_oilrig" );
    level._ID1426["ambush_explosion_room"] = loadfx( "fx/explosions/room_explosion_oilrig" );
    level._ID1426["light_c4_blink_nodlight"] = loadfx( "fx/misc/light_c4_blink_nodlight" );
    level._ID1426["zodiac_wake_geotrail_oilrig"] = loadfx( "fx/treadfx/zodiac_wake_geotrail_oilrig" );
    level._ID1426["sub_surface_runner"] = loadfx( "fx/water/sub_surface_runner" );
    level._ID1426["oilrig_smoke_screen"] = loadfx( "vfx/map/oilrig/oilrig_smoke_screen" );
    level._ID1426["water_pipe_pour_single"] = loadfx( "vfx/water/water_pipe_pour_single" );
    level._ID1426["snow_flurries_light"] = loadfx( "vfx/snow/snow_flurries_light" );
    level._ID1426["hallway_steam_flood"] = loadfx( "fx/smoke/hallway_steam_flood" );
    level._ID1426["steam_jet_med"] = loadfx( "fx/smoke/h1_steam_jet_med" );
    level._ID1426["steam_jet_med_loop"] = loadfx( "fx/smoke/h1_steam_jet_med_loop" );
    level._ID1426["steam_jet_med_loop_rand"] = loadfx( "fx/smoke/h1_steam_jet_med_loop_random" );
    level._ID1426["shower_spray"] = loadfx( "fx/misc/shower_spray" );
    level._ID1426["oilrig_steam"] = loadfx( "vfx/map/oilrig/oilrig_steam" );
    level._ID1426["water_drip"] = loadfx( "vfx/water/falling_drip_ceil_launch_b" );
    level._ID1426["water_trickle"] = loadfx( "vfx/water/falling_pipe_water_trickle_straight_continue" );
    level._ID1426["splash_up"] = loadfx( "fx/water/splash_launch_b" );
    level._ID1426["flare_sm"] = loadfx( "vfx/lensflare/launch_b_flare_sm" );
    level._ID1426["electrical_spark_loop"] = loadfx( "vfx/sparks/electrical_spark_loop" );
    level._ID1426["oilrig_vista_smoke_01"] = loadfx( "vfx/map/oilrig/oilrig_vista_smoke_01" );
    level._ID1426["oilrig_c4_explosion"] = loadfx( "vfx/map/oilrig/oilrig_c4_explosion" );
    level._ID1426["oilrig_c4_explosion_window"] = loadfx( "vfx/map/oilrig/oilrig_c4_explosion_window" );
    level._ID1426["oilrig_c4_explosion_afterfire_01"] = loadfx( "vfx/map/oilrig/oilrig_c4_explosion_afterfire_01" );
    level._ID1426["oilrig_c4_explosion_aftersmoke_01"] = loadfx( "vfx/map/oilrig/oilrig_c4_explosion_aftersmoke_01" );
    level._ID1426["oilrig_c4_explosion_aftersmoke_02"] = loadfx( "vfx/map/oilrig/oilrig_c4_explosion_aftersmoke_02" );
    level._ID1426["oilrig_burnoff_fire"] = loadfx( "vfx/map/oilrig/oilrig_burnoff_fire" );
    level._ID1426["oilrig_column_seafoam"] = loadfx( "vfx/map/oilrig/oilrig_column_seafoam" );
    level._ID1426["propane_large_exp_h2"] = loadfx( "fx/explosions/propane_large_exp_h2_oilrig" );
    level._ID1426["electrical_spark_loop"] = loadfx( "vfx/map/oilrig/oilrig_spark_loop" );
    level._ID1426["light_red_tower_blinking"] = loadfx( "vfx/lights/light_red_tower_blinking" );
    level._ID1426["steam_pipe_leak_interior_sm"] = loadfx( "vfx/steam/steam_pipe_leak_interior_sm" );
    level._ID1426["oilrig_hanging_lights"] = loadfx( "vfx/map/oilrig/oilrig_hanging_lights" );
    level._ID1426["oilrig_hanging_lights_aftermoke"] = loadfx( "vfx/map/oilrig/oilrig_hanging_lights_aftermoke" );
    level._ID1426["oilrig_hanging_fluorescent_lights"] = loadfx( "vfx/map/oilrig/oilrig_hanging_fluorescent_lights" );
    level._ID1426["oilrig_square_flood_lights"] = loadfx( "vfx/map/oilrig/oilrig_square_flood_lights" );
    level._ID1426["oilrig_propane_tank_a_01"] = loadfx( "vfx/map/oilrig/oilrig_propane_tank_a_01" );
    level._ID1426["oilrig_propane_tank_a_02"] = loadfx( "vfx/map/oilrig/oilrig_propane_tank_a_02" );
    level._ID1426["oilrig_c4_explosion_afterfire_tube"] = loadfx( "vfx/map/oilrig/oilrig_c4_explosion_afterfire_tube" );
    level._ID1426["oilrig_c4_explosion_aftersmoke_wide"] = loadfx( "vfx/map/oilrig/oilrig_c4_explosion_aftersmoke_wide" );
    level._ID1426["oilrig_heli_flyby"] = loadfx( "vfx/map/oilrig/oilrig_heli_flyby" );
    level._ID1426["oilrig_heli_flyby_spirals"] = loadfx( "vfx/map/oilrig/oilrig_heli_flyby_spirals" );
    level._ID1426["fx_sunflare_oilrig"] = loadfx( "vfx/lensflare/fx_sunflare_oilrig" );
    level._ID1426["oilrig_heli_spotlight"] = loadfx( "vfx/map/oilrig/oilrig_heli_spotlight" );
    level._ID1426["heli_idle_snow"] = loadfx( "vfx/treadfx/heli_idle_snow" );
    level._ID1426["oilrig_door_breach"] = loadfx( "vfx/map/oilrig/oilrig_door_breach" );
    level._ID1426["oilrig_c4_explosion_after_spotlight"] = loadfx( "vfx/map/oilrig/oilrig_c4_explosion_after_spotlight" );
    level._ID1426["oilrig_c4_explosion_after_spritelight"] = loadfx( "vfx/map/oilrig/oilrig_c4_explosion_after_spritelight" );
    level._ID1426["oilrig_c4_explosion_godrays"] = loadfx( "vfx/map/oilrig/oilrig_c4_explosion_godrays" );
    level._ID1426["oilrig_c4_explosion_ash"] = loadfx( "vfx/map/oilrig/oilrig_c4_explosion_ash" );
    level._ID1426["oilrig_vista_iceberg_snow_blow"] = loadfx( "vfx/map/oilrig/oilrig_vista_iceberg_snow_blow" );
    level._ID1426["oilrig_vista_iceberg_snow_blow_child"] = loadfx( "vfx/map/oilrig/oilrig_vista_iceberg_snow_blow_child" );
    level._ID1426["oilrig_fog_vista"] = loadfx( "vfx/map/oilrig/oilrig_fog_vista" );
    level._ID1426["oilrig_sparks_burst_a"] = loadfx( "vfx/map/oilrig/oilrig_sparks_burst_a" );
    level._ID1426["oilrig_structure_caustic"] = loadfx( "fx/water/oilrig_structure_caustic" );
    level._ID1426["blink_red_light"] = loadfx( "vfx/lights/blink_red_light" );
    level._ID1426["water_object_splash_wide_tall_oilrig"] = loadfx( "vfx/map/oilrig/water_object_splash_wide_tall_oilrig" );
    level._ID1426["underwater_godray_oilrig_far"] = loadfx( "vfx/lights/underwater_godray_oilrig_far" );
    level._ID1426["omni_heli_oilrig"] = loadfx( "vfx/map/oilrig/omni_heli_oilrig" );
    level._ID1426["aircraft_spotlight_cockpit_oilrig"] = loadfx( "fx/misc/aircraft_spotlight_cockpit_oilrig" );

    if ( getdvarint( "sm_enable" ) && getdvar( "r_zfeather" ) != "0" )
        level._ID1426["spotlight"] = loadfx( "fx/misc/hunted_spotlight_model" );
    else
        level._ID1426["spotlight"] = loadfx( "fx/misc/spotlight_large" );

    level._ID1426["heli_dlight_blue"] = loadfx( "fx/misc/aircraft_light_cockpit_blue" );
    level._ID1426["_attack_heli_spotlight"] = loadfx( "fx/misc/spotlight_medium_oilrig" );
    _ID42231::_ID48620( "toy_propane_tank02_small", "fx/distortion/propane_cap_distortion", "fx/distortion/propane_cap_distortion_h2" );
    _ID42231::_ID48620( "toy_propane_tank02_small", "fx/fire/propane_capfire_flareup", "fx/fire/propane_capfire_flareup_h2" );
    _ID42231::_ID48620( "toy_propane_tank02_small", "fx/fire/propane_capfire", "fx/fire/propane_capfire_h2" );
    _ID42231::_ID48620( "toy_propane_tank02_small", "fx/fire/propane_capfire_leak", "fx/fire/propane_capfire_leak_h2" );
    _ID42231::_ID48620( "toy_propane_tank02_small", "fx/fire/propane_small_fire", "fx/fire/propane_small_fire_h2_oilrig" );
    _ID42231::_ID48620( "toy_propane_tank02_small", "fx/fire/propane_large_fire", "fx/fire/propane_large_fire_h2" );
    _ID42231::_ID48620( "toy_propane_tank02_small", "fx/fire/propane_valvefire_flareup", "fx/fire/propane_valvefire_flareup_h2" );
    _ID42231::_ID48620( "toy_propane_tank02_small", "fx/explosions/propane_large_exp", "fx/explosions/propane_large_exp_h2_oilrig" );
    _ID42231::_ID48620( "toy_propane_tank02_small", "fx/explosions/propane_large_exp_h2", "fx/explosions/propane_large_exp_h2_oilrig" );
    _ID42231::_ID48620( "toy_propane_tank02", "fx/explosions/propane_large_exp_h2", "fx/explosions/propane_large_exp_h2_oilrig" );
    _ID42231::_ID48620( "toy_propane_tank02_small", "fx/fire/propane_valvefire", "fx/fire/propane_valvefire_h2" );
}

_ID51404()
{
    _ID42237::_ID14413( "open_dds_door" );
}

_ID44404()
{
    _ID42237::_ID14413( "intro_anim_sequence_starting" );
    wait 14;
    _ID42475::_ID34575( "aud_underwater_ambience" );
    thread _ID42407::_ID27080( "submarine_driveby", "TAG_PROPELLER" );
}

_ID53359()
{
    self waittill( "moving" );
    thread _ID42407::_ID27080( "scn_diveboat_plr_start", "TAG_PROPELLER" );
    thread maps\oilrig_aud::_ID49708();
    _ID42407::_ID10226( 10, _ID42407::_ID27001, "scn_diveboat_plr_loop", "TAG_PROPELLER", 1 );
    var_0 = _ID42237::_ID35164();
    var_0 linkto( self );
    playfxontag( _ID42237::_ID16299( "oilrig_underwater_ambient_emitter" ), self, "origin_animate_jnt" );
    wait 3;
    playfxontag( _ID42237::_ID16299( "spotlight_oilrig_sdv_player" ), var_0, "tag_origin" );
    wait 8;
    playfxontag( _ID42237::_ID16299( "caustics_oilrig_sdv_player" ), self, "origin_animate_jnt" );
    self waittill( "stopped_moving" );
    self notify( "stop soundscn_diveboat_plr_loop" );
    thread _ID42407::_ID27080( "sdv_stop_plr", "TAG_PROPELLER" );
    _ID42237::_ID14413( "sdv_01_arriving" );
    wait 17.3;
    _ID42234::_ID13611( 257 );
    killfxontag( _ID42237::_ID16299( "spotlight_oilrig_sdv_player" ), var_0, "tag_origin" );
    play_swimming_fx();
    _ID42237::_ID14413( "player_looking_at_floating_body" );
    wait 6;
    _ID42234::_ID13611( "256" );
}

play_swimming_fx()
{
    while ( !_ID42237::_ID14385( "player_starting_stealth_kill" ) )
    {
        var_0 = level.player geteye();
        playfx( _ID42237::_ID16299( "oilrig_player_wave" ), var_0 );
        wait 1;
    }
}

_ID47323()
{
    var_0 = spawnfx( _ID42237::_ID16299( "oilrig_underwater_cam_distort" ), ( 0, 0, 0 ) );
    _func_15e( var_0, 1 );
    triggerfx( var_0 );
    waittillframeend;
    _ID42237::_ID14413( "player_breaks_surface" );
    var_0 delete();
}

_ID43978()
{
    _ID42237::_ID14413( "open_dds_door" );
    _ID42234::_ID13611( "255" );
    self waittill( "moving" );
    thread _ID42407::_ID27080( "sdv_start", "TAG_PROPELLER" );
    _ID42407::_ID10226( 1, _ID42407::_ID27001, "sdv_move_loop", "TAG_PROPELLER", 1 );
    playfxontag( _ID42237::_ID16299( "sdv_prop_wash_1" ), self, "propeller_animate_jnt" );
    playfxontag( _ID42237::_ID16299( "oilrig_sdv_rimlight" ), self, "tag_origin" );
    self waittill( "stopped_moving" );
    stopfxontag( _ID42237::_ID16299( "sdv_contrail" ), self, "TAG_PROPELLER" );
    stopfxontag( _ID42237::_ID16299( "sdv_prop_wash_1" ), self, "propeller_animate_jnt" );
    self notify( "stop soundsdv_move_loop" );
    thread _ID42407::_ID27080( "sdv_stop", "TAG_PROPELLER" );
}

_ID39432()
{
    self waittill( "moving" );

    while ( self._ID24481 )
    {
        playfxontag( _ID42237::_ID16299( "oilrig_underwater_ambient" ), self, "TAG_PROPELLER" );
        wait 0.1;
    }
}

_ID50113( var_0 )
{
    playfxontag( _ID42237::_ID16299( "deathfx_bloodpool_underwater" ), var_0, "J_NECK" );
}

_ID54291( var_0 )
{
    playfxontag( _ID42237::_ID16299( "bloodspurt_underwater" ), var_0, "TAG_KNIFE_FX" );
}

_ID54106( var_0 )
{
    playfxontag( _ID42237::_ID16299( "splash_underwater_stealthkill" ), var_0, "J_SpineUpper" );
}

_ID47594( var_0 )
{
    var_1 = [];
    var_1[var_1.size] = "J_Wrist_LE";
    var_1[var_1.size] = "J_Thumb_LE_1";
    var_1[var_1.size] = "J_Thumb_LE_2";
    var_2 = 10;

    for ( var_3 = 0; var_3 < var_2; var_3++ )
    {
        thread _ID43128( var_1, var_0 );
        wait(randomfloatrange( 0.05, 0.3 ));
    }
}

_ID51649( var_0 )
{
    var_1 = [];
    var_1[var_1.size] = "J_Wrist_RI";
    var_1[var_1.size] = "J_Thumb_RI_1";
    var_1[var_1.size] = "J_Webbing_RI";
    var_1[var_1.size] = "J_Elbow_RI";
    var_2 = 10;

    for ( var_3 = 0; var_3 < var_2; var_3++ )
    {
        thread _ID43128( var_1, var_0 );
        wait(randomfloatrange( 0.05, 0.3 ));
    }
}

_ID43128( var_0, var_1 )
{
    foreach ( var_3 in var_0 )
        playfxontag( _ID42237::_ID16299( "drips_player_hand" ), var_1, var_3 );
}

_ID38735()
{
    var_0 = "fx/treadfx/tread_snow_slush";
    var_1 = "fx/treadfx/heli_snow_default_oilrig";
    var_2[0] = "script_vehicle_littlebird_armed";
    var_2[1] = "script_vehicle_littlebird_bench";

    foreach ( var_4 in var_2 )
    {
        _ID42400::_ID33619( var_4, "brick", var_1, "h1r_default_helicopter_wind" );
        _ID42400::_ID33619( var_4, "bark", var_1, "h1r_default_helicopter_wind" );
        _ID42400::_ID33619( var_4, "carpet", var_1, "h1r_default_helicopter_wind" );
        _ID42400::_ID33619( var_4, "cloth", var_1, "h1r_default_helicopter_wind" );
        _ID42400::_ID33619( var_4, "concrete", var_1, "h1r_default_helicopter_wind" );
        _ID42400::_ID33619( var_4, "dirt", var_1, "h1r_default_helicopter_wind" );
        _ID42400::_ID33619( var_4, "flesh", var_1, "h1r_default_helicopter_wind" );
        _ID42400::_ID33619( var_4, "foliage", var_1, "h1r_default_helicopter_wind" );
        _ID42400::_ID33619( var_4, "glass", var_1, "h1r_default_helicopter_wind" );
        _ID42400::_ID33619( var_4, "grass", var_1, "h1r_default_helicopter_wind" );
        _ID42400::_ID33619( var_4, "gravel", var_1, "h1r_default_helicopter_wind" );
        _ID42400::_ID33619( var_4, "ice", var_1, "h1r_default_helicopter_wind" );
        _ID42400::_ID33619( var_4, "metal", var_1, "h1r_default_helicopter_wind" );
        _ID42400::_ID33619( var_4, "mud", var_1, "h1r_default_helicopter_wind" );
        _ID42400::_ID33619( var_4, "paper", var_1, "h1r_default_helicopter_wind" );
        _ID42400::_ID33619( var_4, "plaster", var_1, "h1r_default_helicopter_wind" );
        _ID42400::_ID33619( var_4, "rock", var_1, "h1r_default_helicopter_wind" );
        _ID42400::_ID33619( var_4, "sand", var_1, "h1r_default_helicopter_wind" );
        _ID42400::_ID33619( var_4, "snow", var_1, "h1r_default_helicopter_wind" );
        _ID42400::_ID33619( var_4, "water", var_1, "h1r_default_helicopter_wind" );
        _ID42400::_ID33619( var_4, "wood", var_1, "h1r_default_helicopter_wind" );
        _ID42400::_ID33619( var_4, "asphalt", var_1, "h1r_default_helicopter_wind" );
        _ID42400::_ID33619( var_4, "ceramic", var_1, "h1r_default_helicopter_wind" );
        _ID42400::_ID33619( var_4, "plastic", var_1, "h1r_default_helicopter_wind" );
        _ID42400::_ID33619( var_4, "rubber", var_1, "h1r_default_helicopter_wind" );
        _ID42400::_ID33619( var_4, "cushion", var_1, "h1r_default_helicopter_wind" );
        _ID42400::_ID33619( var_4, "fruit", var_1, "h1r_default_helicopter_wind" );
        _ID42400::_ID33619( var_4, "painted metal", var_1, "h1r_default_helicopter_wind" );
        _ID42400::_ID33619( var_4, "default", var_1, "h1r_default_helicopter_wind" );
        _ID42400::_ID33619( var_4, "none", var_1, "h1r_default_helicopter_wind" );
    }

    _ID42400::_ID33619( "script_vehicle_blackhawk", "brick", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk", "bark", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk", "carpet", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk", "cloth", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk", "concrete", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk", "dirt", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk", "flesh", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk", "foliage", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk", "glass", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk", "grass", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk", "gravel", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk", "ice", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk", "metal", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk", "mud", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk", "paper", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk", "plaster", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk", "rock", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk", "sand", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk", "snow", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk", "water", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk", "wood", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk", "asphalt", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk", "ceramic", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk", "plastic", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk", "rubber", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk", "cushion", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk", "fruit", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk", "painted metal", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk", "default", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk", "none", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_zodiac", "brick", var_0 );
    _ID42400::_ID33619( "script_vehicle_zodiac", "bark", var_0 );
    _ID42400::_ID33619( "script_vehicle_zodiac", "carpet", var_0 );
    _ID42400::_ID33619( "script_vehicle_zodiac", "cloth", var_0 );
    _ID42400::_ID33619( "script_vehicle_zodiac", "concrete", var_0 );
    _ID42400::_ID33619( "script_vehicle_zodiac", "dirt", var_0 );
    _ID42400::_ID33619( "script_vehicle_zodiac", "flesh", var_0 );
    _ID42400::_ID33619( "script_vehicle_zodiac", "foliage", var_0 );
    _ID42400::_ID33619( "script_vehicle_zodiac", "glass", var_0 );
    _ID42400::_ID33619( "script_vehicle_zodiac", "grass", var_0 );
    _ID42400::_ID33619( "script_vehicle_zodiac", "gravel", var_0 );
    _ID42400::_ID33619( "script_vehicle_zodiac", "ice", var_0 );
    _ID42400::_ID33619( "script_vehicle_zodiac", "metal", var_0 );
    _ID42400::_ID33619( "script_vehicle_zodiac", "mud", var_0 );
    _ID42400::_ID33619( "script_vehicle_zodiac", "paper", var_0 );
    _ID42400::_ID33619( "script_vehicle_zodiac", "plaster", var_0 );
    _ID42400::_ID33619( "script_vehicle_zodiac", "rock", var_0 );
    _ID42400::_ID33619( "script_vehicle_zodiac", "sand", var_0 );
    _ID42400::_ID33619( "script_vehicle_zodiac", "snow", var_0 );
    _ID42400::_ID33619( "script_vehicle_zodiac", "water", var_0 );
    _ID42400::_ID33619( "script_vehicle_zodiac", "wood", var_0 );
    _ID42400::_ID33619( "script_vehicle_zodiac", "asphalt", var_0 );
    _ID42400::_ID33619( "script_vehicle_zodiac", "ceramic", var_0 );
    _ID42400::_ID33619( "script_vehicle_zodiac", "plastic", var_0 );
    _ID42400::_ID33619( "script_vehicle_zodiac", "rubber", var_0 );
    _ID42400::_ID33619( "script_vehicle_zodiac", "cushion", var_0 );
    _ID42400::_ID33619( "script_vehicle_zodiac", "fruit", var_0 );
    _ID42400::_ID33619( "script_vehicle_zodiac", "painted metal", var_0 );
    _ID42400::_ID33619( "script_vehicle_zodiac", "default", var_0 );
    _ID42400::_ID33619( "script_vehicle_zodiac", "none", var_0 );
}

_ID48941()
{
    thread _ID49854();
    thread _ID6008();
}

setlightdefault()
{
    var_0 = getent( "breach1_spot1", "targetname" );
    var_0 setlightintensity( 60000 );
    var_0 _meth_81ef( 1024 );
}

_ID51470( var_0 )
{
    self waittill( "FX_State_Change0" );
    self waittill( "FX_State_Change0" );
    self waittill( "FX_State_Change0" );
    _ID42234::_ID13611( var_0[0] );
    self waittill( "exploded" );
    _ID42234::_ID13611( var_0[1] );
}

_ID49854()
{
    var_0 = [];
    var_1 = getentarray( "destructible_toy", "targetname" );

    foreach ( var_3 in var_1 )
    {
        if ( var_3.model == "com_propane_tank02_small" )
            var_0 = _ID42237::_ID3293( var_0, var_3 );
    }

    var_5 = getentarray( "propane_tank_exploder", "targetname" );

    foreach ( var_7 in var_5 )
    {
        var_8 = strtok( var_7.script_noteworthy, " " );

        foreach ( var_10 in var_0 )
        {
            if ( ispointinvolume( var_10.origin, var_7 ) )
            {
                var_10 thread _ID51470( var_8 );
                break;
            }
        }
    }
}

_ID6008()
{
    var_0 = getentarray( "breach_fx", "targetname" );

    foreach ( var_2 in var_0 )
    {
        if ( isdefined( var_2._ID31433 ) )
            var_2 thread _ID50007();
    }
}

_ID50007()
{
    level waittill( "exploding_breach_" + self._ID31433 );
    var_0 = _ID42407::_ID35028( "breach_door_hinge_oilrig" );
    var_1 = undefined;

    switch ( self._ID31433 )
    {
        case 0:
            var_1 = getent( "breach_inside_lightgrid_origin1_left", "targetname" ).origin;
            thread breach_light_think();
            break;
        case 1:
            var_1 = getent( "breach_inside_lightgrid_origin1_right", "targetname" ).origin;
            thread breach_light_think();
            break;
        case 2:
        case 3:
            var_1 = getent( "breach_inside_lightgrid_origin2", "targetname" ).origin;
            break;
        default:
            break;
    }

    if ( isdefined( var_1 ) )
        var_0 _meth_848a( var_1 );

    var_2 = spawn( "script_origin", self.origin );
    var_2.angles = self.angles + ( 0, 90, 0 );
    var_3 = vectornormalize( anglestoright( var_2.angles ) );
    var_2.origin = var_2.origin + var_3 * 5.0;
    var_2 thread _ID42259::_ID3111( var_0, "breach" );
}

breach_light_think()
{
    if ( isdefined( level.insideslowmofirstbreach ) && level.insideslowmofirstbreach )
        return;

    level.insideslowmofirstbreach = 1;
    var_0 = getent( "breach1_spot1", "targetname" );
    var_0 setlightintensity( 5000 );
    var_0._ID20129 = 5000;
    level waittill( "slomo_breach_over" );
    var_0 setlightintensity( 8500 );
    var_0._ID20129 = 8500;
    var_0 _meth_81ef( 512 );
    level.insideslowmofirstbreach = 0;
}

_ID45832()
{
    _ID42299::_ID49604( "light_blue_steady_FX_origin", "fx/misc/tower_light_blue_steady_oilrig", -2 );
}
