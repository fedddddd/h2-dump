// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID36249()
{
    _ID12882();
    var_0 = self._ID1644._ID5029._ID2281["state"]["hidden"];
    thread _ID42386::_ID2310( var_0, "enemy_behavior" );
    var_0 = self._ID1644._ID5029._ID2281["state"]["spotted"];
    thread _ID42386::_ID2311( var_0, "enemy_behavior" );
    thread _ID12783();
}

_ID12783()
{
    self endon( "death" );
    self endon( "pain_death" );
    self endon( "damage" );

    for (;;)
    {
        self waittill( "event_awareness",  var_0  );

        if ( !_ID42407::_ID13019( "_stealth_enabled" ) )
            continue;

        var_1 = self._ID1644._ID5029._ID2281["animation"]["wrapper"];
        self thread [[ var_1 ]]( var_0 );
    }
}

_ID12927()
{
    self.fovcosine = 0.5;
    self.fovcosinebusy = 0.1;
    self.favoriteenemy = undefined;
    self._ID11566 = 1;
    self._ID11575 = 1;
    thread _ID42407::_ID32226( 0 );

    if ( self.type == "dog" )
        return;

    self.diequietly = 1;
    self clearenemy();
}

_ID12928( var_0 )
{
    self.fovcosine = 0.01;

    if ( !isdefined( self._ID11411 ) )
    {
        self.ignoreall = 0;
        thread _ID42407::_ID32226( 1 );
    }

    self._ID11566 = undefined;
    self._ID11575 = undefined;

    if ( isdefined( self._ID25550 ) )
        self.fixednode = self._ID25550;

    if ( self.type != "dog" )
    {
        self.diequietly = 0;

        if ( !isdefined( var_0 ) )
        {
            _ID42407::_ID7892();
            _ID42386::_ID12929();
        }
    }
    else
    {
        self._ID31246 = undefined;
        self._ID31356 = undefined;
    }

    if ( isdefined( var_0 ) )
        return;

    if ( isdefined( level._ID1644._ID17437._ID35477 ) )
    {
        var_1 = level._ID1644._ID17437._ID35477[self._ID31463];

        if ( isdefined( var_1 ) )
            self getenemyinfo( var_1 );
    }
}

_ID12882()
{
    _ID42407::_ID13024( "_stealth_override_goalpos" );
    _ID42407::_ID13024( "_stealth_enemy_alert_level_action" );
    _ID42407::_ID13024( "_stealth_running_to_corpse" );
    _ID42407::_ID13024( "_stealth_behavior_reaction_anim" );
    _ID42407::_ID13024( "_stealth_behavior_first_reaction" );
    _ID42407::_ID13024( "_stealth_behavior_reaction_anim_in_progress" );
    self._ID1644._ID5029 = spawnstruct();
    self._ID7._ID24902 = 1;
    self._ID1644._ID5029._ID2281 = [];
    _ID12833();
    _ID12830();
    self._ID1644._ID5029._ID13251 = spawnstruct();

    if ( self.type == "dog" )
        _ID12838();

    self._ID1644._ID28153 = spawnstruct();
    thread _ID42386::_ID2342();
}

_ID12838()
{
    if ( threatbiasgroupexists( "dog" ) )
        self setthreatbiasgroup( "dog" );

    if ( isdefined( self.enemy ) || isdefined( self.favoriteenemy ) )
        return;

    _ID42407::_ID13024( "_stealth_behavior_asleep" );

    if ( isdefined( self._ID31394 ) || isdefined( self._ID31391 ) )
        return;

    self.ignoreme = 1;
    self.ignoreall = 1;
    self.allowdeath = 1;
    thread _ID42259::_ID3022( self, "gravity", "_stealth_dog_sleeping" );
    _ID42407::_ID13025( "_stealth_behavior_asleep" );
}

_ID12828( var_0 )
{
    foreach ( var_3, var_2 in var_0 )
        _ID42386::_ID2261( "state", var_3, var_2 );

    var_4 = self._ID1644._ID5029._ID2281["state"]["hidden"];
    thread _ID42386::_ID2310( var_4, "enemy_behavior" );
    var_4 = self._ID1644._ID5029._ID2281["state"]["spotted"];
    thread _ID42386::_ID2311( var_4, "enemy_behavior" );
}

_ID12833()
{
    var_0 = [];
    var_0["hidden"] = ::_ID12927;
    var_0["spotted"] = ::_ID12928;
    _ID12828( var_0 );
}

_ID12830()
{
    _ID42386::_ID2261( "animation", "wrapper", _ID42386::_ID12789 );

    if ( self.type == "dog" )
    {
        _ID42386::_ID2261( "animation", "grenade danger", _ID42375::_ID11403 );
        _ID42386::_ID2261( "animation", "bulletwhizby", _ID42375::_ID11403 );
        _ID42386::_ID2261( "animation", "gunshot_teammate", _ID42375::_ID11403 );
        _ID42386::_ID2261( "animation", "projectile_impact", _ID42375::_ID11404 );
    }
    else
    {
        _ID42386::_ID2261( "animation", "grenade danger", _ID42375::_ID12784 );
        _ID42386::_ID2261( "animation", "bulletwhizby", _ID42375::_ID12784 );
        _ID42386::_ID2261( "animation", "gunshot_teammate", _ID42375::_ID12784 );
        _ID42386::_ID2261( "animation", "projectile_impact", _ID42375::_ID12784 );
    }
}
