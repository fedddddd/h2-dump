// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    _ID8467();
    _ID19806();
    _ID19703();
    _ID22056();
    _ID22043();
    thread _ID22042();
    _ID9159();
    _ID28366();
    _ID29419();
    thread _ID51200();
}

_ID8467()
{
    _ID42463::_ID32459( "shg" );
    _ID42490::_ID34650( "med_occlusion" );
    _ID42465::_ID23797( "mix_af_caves_global" );
}

_ID19806()
{

}

_ID19703()
{

}

_ID22056()
{

}

_ID22043()
{

}

_ID22042()
{
    wait 0.1;
}

_ID9159()
{

}

_ID28366()
{

}

_ID29419()
{
    _ID42475::_ID34640( "start_default_checkpoint", ::_ID44198 );
    _ID42475::_ID34640( "start_road_checkpoint", ::_ID51104 );
    _ID42475::_ID34640( "start_rappel_checkpoint", ::_ID43333 );
    _ID42475::_ID34640( "start_barracks_checkpoint", ::_ID51237 );
    _ID42475::_ID34640( "start_steamroom_checkpoint", ::_ID44691 );
    _ID42475::_ID34640( "start_ledge_checkpoint", ::_ID44120 );
    _ID42475::_ID34640( "start_overlook_checkpoint", ::_ID47898 );
    _ID42475::_ID34640( "start_control_room_checkpoint", ::_ID53420 );
    _ID42475::_ID34640( "start_airstrip_checkpoint", ::_ID45986 );
    _ID42475::_ID34640( "start_player_fall_death", ::start_player_fall_death );
    _ID42475::_ID34640( "start_plr_rappel_sequence", ::_ID46600 );
    _ID42475::_ID34640( "start_rappel_killing_guard", ::_ID49151 );
    _ID42475::_ID34640( "end_of_rappel_sequence", ::_ID45279 );
    _ID42475::_ID34640( "aud_start_patrol_mix", ::aud_start_patrol_mix );
    _ID42475::_ID34640( "aud_stop_patrol_mix", ::aud_stop_patrol_mix );
    _ID42475::_ID34640( "start_escape_sequence", ::_ID50165 );
    _ID42475::_ID34640( "start_escape_cave_collapse", ::_ID54198 );
    _ID42475::_ID34640( "end_first_blackout", ::_ID49565 );
    _ID42475::_ID34640( "start_second_blackout", ::_ID52647 );
    _ID42475::_ID34640( "end_second_blackout", ::_ID45041 );
    _ID42475::_ID34640( "end_escape_cave_collapse", ::_ID54336 );
    _ID42475::_ID34640( "start_end_black_screen", ::_ID51160 );
    _ID42475::_ID34640( "aud_afcaves_airstrip_heli01", ::_ID43927 );
    _ID42475::_ID34640( "aud_afcaves_airstrip_heli02", ::_ID46273 );
}

_ID41961( var_0, var_1 )
{

}

_ID24576( var_0, var_1 )
{

}

_ID44198( var_0 )
{
    _ID42474::_ID4669( "exterior_sandstorm" );
}

_ID51104( var_0 )
{
    _ID42474::_ID4669( "exterior_sandstorm" );
}

_ID43333( var_0 )
{
    _ID42474::_ID4669( "exterior" );
}

_ID51237( var_0 )
{
    _ID42474::_ID4669( "exterior" );
}

_ID44691( var_0 )
{
    _ID42474::_ID4669( "af_caves_int" );
}

_ID44120( var_0 )
{
    _ID42474::_ID4669( "af_caves_int" );
}

_ID47898( var_0 )
{
    _ID42474::_ID4669( "exterior" );
}

_ID53420( var_0 )
{
    _ID42474::_ID4669( "af_caves_int" );
}

_ID45986( var_0 )
{
    _ID42474::_ID4669( "exterior" );
}

_ID46600()
{
    _ID42465::_ID23797( "rappel_sequence_mix" );
}

_ID49151()
{
    _ID42465::_ID23797( "rappel_kill_guard_mix" );
}

_ID45279()
{
    _ID42465::_ID23801( "rappel_sequence_mix" );
    _ID42465::_ID23801( "rappel_kill_guard_mix" );
}

aud_start_patrol_mix()
{
    _ID42465::_ID23797( "patrol_mix" );
}

aud_stop_patrol_mix()
{
    _ID42465::_ID23801( "patrol_mix" );
}

_ID50165()
{
    _ID42465::_ID23797( "escape_sequence_mix" );
}

_ID54198()
{
    _ID42465::_ID23797( "escape_cave_collapse_mix" );
    _ID42465::_ID23797( "escape_cave_collapse_bs_mix" );
    level.player thread _ID42237::_ID27000( "scn_afcaves_cave_collapse_tinnitus", undefined, 0.5, 4.0 );
}

_ID49565()
{
    _ID42465::_ID23801( "escape_cave_collapse_bs_mix" );
}

_ID52647()
{
    _ID42465::_ID23797( "escape_cave_collapse_bs2_mix" );
}

_ID45041()
{
    _ID42465::_ID23801( "escape_cave_collapse_bs2_mix" );
    level.player _ID42237::_ID36516( "scn_afcaves_cave_collapse_tinnitus" );
}

_ID54336()
{
    wait 1;
    _ID42465::_ID23801( "escape_cave_collapse_mix" );
}

_ID51160()
{
    _ID42465::_ID23797( "end_black_screen_mix" );
}

start_player_fall_death()
{
    level.player thread _ID42407::_ID27079( "afcaves_plyr_fall_scream" );
    _ID42465::_ID23797( "player_fall_death_mix" );
}

_ID51200()
{
    _ID42237::_ID14413( "introscreen_activate" );
    _ID42465::_ID23797( "fade_in_intro_mix" );
    _ID42237::_ID14413( "introscreen_remove_submix" );
    _ID42465::_ID23801( "fade_in_intro_mix" );
}

_ID48248( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    level waittill( "slowmo_go" );
    _ID52625( var_0, var_1, var_2, var_4 );
    level waittill( "slowmo_breach_ending" );
    _ID52851( var_0, var_2, var_3, var_5 );
}

_ID52625( var_0, var_1, var_2, var_3 )
{
    thread _ID42407::_ID4917( "axis" );
    level.player _meth_8521();
    _ID42476::_ID34518( "slomo" );
    level.player playsound( var_1 );
    level.player thread _ID42237::_ID27000( var_2, undefined, 1.0, 1.0 );
    _ID42474::_ID4668( "af_caves_int", "ambient_af_caves_int", 1.0 );
    _ID42465::_ID23797( var_0 );
    _ID42474::_ID4655( 1 );
    _ID42490::_ID34526( var_3, 0.5 );
    _ID42474::_ID4662( 1 );
    _ID42469::_ID30454( "slowmo" );
}

_ID52851( var_0, var_1, var_2, var_3 )
{
    _ID42465::_ID23801( var_0 );
    level.player _meth_8522();
    _ID42476::_ID34512( "slomo" );
    level.player _ID42237::_ID36516( var_1 );
    level.player playsound( var_2 );
    _ID42490::_ID34527( 1.0 );
    _ID42474::_ID4655( 0 );
    _ID42474::_ID4662( 0 );
    _ID42469::_ID30454( var_3 );
    thread _ID42407::_ID4918( "axis" );
}

_ID44468()
{
    self endon( "death" );
    _ID50965();
    thread _ID42237::_ID27000( "scn_af_caves_bh_overlook_rappel_hover", undefined, 0.8, 0.8 );
    self waittill( "unloaded" );
    wait 5;
    _ID42237::_ID36516( "scn_af_caves_bh_overlook_rappel_hover" );
    thread _ID42407::_ID27079( "scn_af_caves_bh_overlook_rappel_leaving" );
}

_ID46923()
{
    self endon( "death" );
    _ID50965();
    _ID42407::_ID27079( "scn_af_caves_bh_overlook_01" );
}

_ID46647()
{
    self endon( "death" );
    _ID50965();
    self waittill( "unloading" );
    thread _ID42237::_ID27000( "scn_bh_skylight_01_hover", undefined, 0.8, 0.8 );
}

_ID43927( var_0 )
{
    self endon( "death" );
    var_0 _ID50965();
    var_0 thread _ID42237::_ID27000( "scn_af_caves_airstrip_heli01_fly_in", undefined, 0.05, 0.8 );
    var_0 waittill( "unloading" );
    var_0 _ID42237::_ID36516( "scn_af_caves_airstrip_heli01_fly_in" );
    var_0 thread _ID42237::_ID27000( "scn_af_caves_airstrip_heli01_hover", undefined, 0.8, 0.8 );
    var_0 waittill( "unloaded" );
    var_0 _ID42237::_ID36516( "scn_af_caves_airstrip_heli01_hover" );
    var_0 thread _ID42407::_ID27079( "scn_af_caves_airstrip_heli01_leaving" );
}

_ID46273( var_0 )
{
    self endon( "death" );
    var_0 _ID50965();
    var_0 thread _ID42407::_ID27079( "scn_af_caves_airstrip_heli02_landing" );
}

_ID50965()
{
    wait 0.1;
    self vehicle_turnengineoff();
    self._ID31138 = 1;
}

aud_chess_soldiers_barracks()
{
    var_0 = getent( "walla_chess_group", "targetname" );
    var_0 thread _ID42237::_ID27000( "emt_afcaves_wall_chess_group" );
    level waittill( "_stealth_spotted" );
    var_0 _ID42237::_ID36516( "emt_afcaves_wall_chess_group" );
}

aud_ammo_crate_guy_idle_foley( var_0 )
{
    var_0 _ID42407::_ID27081( "scn_af_caves_ammo_crate_npc", "J_Head" );
}

aud_ammo_crate_guy_bump_into_foley( var_0 )
{
    var_0 _ID42407::_ID27081( "scn_af_caves_ammo_crate_npc_react", "J_Head" );
}

price_start_typing_loop( var_0 )
{
    if ( !isdefined( var_0.price_typing ) )
        var_0.price_typing = 0;

    if ( !var_0.price_typing )
    {
        var_0 playloopsound( "scn_afcaves_enter_code_typing" );
        var_0.price_typing = 1;
    }
}

stop_price_typing_loop( var_0 )
{
    if ( isdefined( var_0.price_typing ) && var_0.price_typing )
    {
        var_0 stopsounds( "scn_afcaves_enter_code_typing" );
        var_0.price_typing = 0;
    }
}
