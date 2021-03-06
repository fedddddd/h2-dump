// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID2131( var_0 )
{
    self endon( "death" );

    if ( !animscripts\battlechatter::_ID4954() )
        return;

    if ( self._ID7336 )
        return;

    if ( !isdefined( self._ID35507._ID7336 ) || !self._ID35507._ID7336 )
        self._ID35507 animscripts\battlechatter::_ID19809();

    self._ID12971 = "infantry";
    self._ID6666 = [];

    if ( isplayernumber( self ) )
    {
        self._ID4912 = 0;
        self._ID14542 = 0;
        self.type = "human";
        return;
    }

    if ( self.type == "dog" )
    {
        self._ID12971 = undefined;
        self._ID4912 = 0;
        self._ID14542 = 0;
        return;
    }

    if ( self.team == "neutral" )
    {
        self._ID12971 = undefined;
        self._ID4912 = 0;
        self._ID14542 = 0;
        return;
    }

    if ( _ID14784() )
    {
        if ( self.team == "allies" )
            self._ID31069 = 0;
        else
            self._ID40757 = "american";
    }

    if ( self._ID40757 == "multilingual" )
    {
        var_1 = "russian";
        self._ID8774 = anim._ID8775[var_1];
        self._ID40757 = var_1;
    }
    else
        self._ID8774 = anim._ID8775[self._ID40757];

    if ( isdefined( self._ID31217 ) )
    {
        var_2 = tolower( self._ID31217 );

        if ( issubstr( var_2, "price" ) )
            self._ID25173 = "pri";
        else if ( issubstr( var_2, "mactavish" ) || issubstr( var_2, "soap" ) )
            self._ID25173 = "mct";
        else if ( issubstr( var_2, "ghost" ) )
            self._ID25173 = "gst";
        else if ( issubstr( var_2, "dunn" ) )
            self._ID25173 = "cpd";
        else if ( issubstr( var_2, "foley" ) )
            self._ID25173 = "mcy";
        else
            _ID32708();
    }
    else
        _ID32708();

    thread _ID2442();
    _ID19573();
    thread _ID2473();
}

_ID14784()
{
    if ( !getdvarint( "bcs_forceEnglish", 0 ) )
        return 0;

    switch ( level.script )
    {
        case "airlift":
        case "armada":
        case "bog_a":
        case "bog_b":
        case "launchfacility_a":
        case "launchfacility_b":
        case "scoutsniper":
        case "sniperescape":
        case "co_hunted":
        case "so_ac130_co_hunted":
        case "co_armada":
        case "co_break":
        case "co_crossfire":
        case "co_launchfacility_a":
        case "co_scoutsniper":
        case "co_strike":
        case "pmc_strike":
            return 1;
    }

    return 0;
}

_ID2473()
{
    self endon( "death" );
    self endon( "removed from battleChatter" );
    var_0 = 0.5;
    wait(var_0);
    thread _ID2392();
    thread _ID2391();

    if ( self.team == "allies" )
    {
        wait(var_0);
        thread _ID2386();
    }
    else if ( ( self.team == "axis" || self.team == "team3" ) && !_ID20662( self._ID8774 ) )
        thread _ID2399();

    if ( self.team == level.player.team )
        thread _ID27431();

    wait(var_0);
    thread _ID2379();
}

_ID20662( var_0 )
{
    if ( var_0 == "UK" || var_0 == "US" || var_0 == "NS" || var_0 == "TF" || var_0 == "SS" )
        return 1;

    return 0;
}

_ID32708()
{
    var_0 = anim._ID39932[self._ID40757];
    var_1 = var_0.size;
    var_2 = randomintrange( 0, var_1 );
    var_3 = var_2;

    for ( var_4 = 0; var_4 <= var_1; var_4++ )
    {
        if ( var_0[( var_2 + var_4 ) % var_1].count < var_0[var_3].count )
            var_3 = ( var_2 + var_4 ) % var_1;
    }

    thread _ID25174( var_3 );
    self._ID25173 = var_0[var_3]._ID25173;
}

_ID25174( var_0 )
{
    anim._ID39932[self._ID40757][var_0].count++;
    self waittill( "death" );

    if ( !animscripts\battlechatter::_ID4954() )
        return;

    anim._ID39932[self._ID40757][var_0].count--;
}

_ID2399()
{
    self endon( "death" );
    self endon( "removed from battleChatter" );

    for (;;)
    {
        if ( distance( self.origin, level.player.origin ) < 1024 )
        {
            if ( isdefined( self._ID35507._ID23459 ) && self._ID35507._ID23459 > 1 )
                _ID2087( "taunt", "hostileburst" );
        }

        wait(randomfloatrange( 2, 5 ));
    }
}

_ID2379()
{
    self endon( "death" );
    self endon( "removed from battleChatter" );

    for (;;)
    {
        animscripts\battlechatter::_ID27185();
        wait(0.3 + randomfloat( 0.2 ));
    }
}

_ID2442()
{
    self endon( "death" );
    self endon( "removed from battleChatter" );

    for (;;)
    {
        self._ID4933 = animscripts\battlechatter::_ID16435();
        self._ID4937 = animscripts\battlechatter::_ID16556();
        self waittill( "set name and rank" );
    }
}

_ID29617( var_0 )
{
    if ( !isalive( self ) && animscripts\battlechatter::_ID4954() )
    {
        _ID2383();
        _ID2381();
    }

    if ( isdefined( self ) )
    {
        self._ID4912 = 0;
        self._ID7336 = 0;
    }

    self notify( "removed from battleChatter" );

    if ( isdefined( self ) )
    {
        self._ID7337 = undefined;
        self._ID24797 = undefined;
        self._ID24798 = undefined;
        self._ID20918 = undefined;
        self._ID12971 = undefined;
        self._ID6666 = undefined;
        self._ID8774 = undefined;
        self._ID25173 = undefined;
    }
}

_ID19573()
{
    self._ID7337 = [];
    self._ID7337["threat"] = spawnstruct();
    self._ID7337["threat"]._ID13599 = 0;
    self._ID7337["threat"]._ID28609 = 0.0;
    self._ID7337["response"] = spawnstruct();
    self._ID7337["response"]._ID13599 = 0;
    self._ID7337["response"]._ID28609 = 0.0;
    self._ID7337["reaction"] = spawnstruct();
    self._ID7337["reaction"]._ID13599 = 0;
    self._ID7337["reaction"]._ID28609 = 0.0;
    self._ID7337["inform"] = spawnstruct();
    self._ID7337["inform"]._ID13599 = 0;
    self._ID7337["inform"]._ID28609 = 0.0;
    self._ID7337["order"] = spawnstruct();
    self._ID7337["order"]._ID13599 = 0;
    self._ID7337["order"]._ID28609 = 0.0;
    self._ID7337["custom"] = spawnstruct();
    self._ID7337["custom"]._ID13599 = 0;
    self._ID7337["custom"]._ID28609 = 0.0;
    self._ID24797 = gettime() + 50;
    self._ID24798["threat"] = 0;
    self._ID24798["reaction"] = 0;
    self._ID24798["response"] = 0;
    self._ID24798["inform"] = 0;
    self._ID24798["order"] = 0;
    self._ID24798["custom"] = 0;
    self._ID20918 = 0;
    self._ID4944 = 0.0;
    self._ID2727 = [];
    animscripts\battlechatter::_ID1995( "rpg" );
    animscripts\battlechatter::_ID1995( "exposed" );

    if ( self._ID40757 != "shadowcompany" )
    {
        animscripts\battlechatter::_ID1995( "ai_contact_clock" );
        animscripts\battlechatter::_ID1995( "ai_target_clock" );
        animscripts\battlechatter::_ID1995( "ai_cardinal" );
    }

    if ( self.team == "allies" )
    {
        animscripts\battlechatter::_ID1995( "ai_yourclock" );
        animscripts\battlechatter::_ID1995( "player_yourclock" );
        animscripts\battlechatter::_ID1995( "player_contact_clock" );
        animscripts\battlechatter::_ID1995( "player_target_clock" );
        animscripts\battlechatter::_ID1995( "player_cardinal" );
        animscripts\battlechatter::_ID1995( "player_obvious" );
        animscripts\battlechatter::_ID1995( "player_object_yourclock" );
        animscripts\battlechatter::_ID1995( "ai_object_yourclock" );
        animscripts\battlechatter::_ID1995( "player_object_clock" );
        animscripts\battlechatter::_ID1995( "player_location" );
        animscripts\battlechatter::_ID1995( "ai_location" );
    }

    if ( isdefined( self._ID31069 ) && !self._ID31069 )
        self._ID4912 = 0;
    else
        self._ID4912 = level._ID4912[self.team];

    if ( animscripts\battlechatter::_ID40760() )
        self._ID14542 = 1;
    else
        self._ID14542 = 0;

    if ( level._ID15012 )
        _ID42407::_ID32324( 1 );
    else
        _ID42407::_ID32324( 0 );

    self._ID7336 = 1;
}

_ID2115( var_0, var_1, var_2 )
{
    self endon( "death" );
    self endon( "removed from battleChatter" );

    if ( !animscripts\battlechatter::_ID6880( "threat", var_0, var_2 ) )
        return;

    if ( animscripts\battlechatter::_ID37687( var_1 ) && !isplayernumber( var_1 ) )
        return;

    var_3 = animscripts\battlechatter::_ID9197( "threat", var_0, var_2 );

    switch ( var_0 )
    {
        case "infantry":
            var_3._ID37658 = var_1;
            break;
    }

    if ( isdefined( var_1._ID35507 ) )
        self._ID35507 animscripts\battlechatter::_ID39693( var_1._ID35507._ID1010, self );

    self._ID7337["threat"] = undefined;
    self._ID7337["threat"] = var_3;
}

_ID2089( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    self endon( "death" );
    self endon( "removed from battleChatter" );
    thread _ID2090( var_0, var_1, var_2, var_3, var_4, var_5 );
}

_ID2090( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    self endon( "death" );
    self endon( "removed from battleChatter" );
    self endon( "responseEvent_failsafe" );
    thread _ID29831( var_2 );
    var_6 = var_2 _ID42237::_ID41075( "death", "done speaking", "cancel speaking" );

    if ( var_6 == "cancel speaking" )
        return;

    if ( !isalive( var_2 ) )
        return;

    if ( !animscripts\battlechatter::_ID6880( "response", var_0, var_3, var_1 ) )
        return;

    if ( !isplayernumber( var_2 ) )
    {
        if ( animscripts\battlechatter::_ID20967( var_2 ) )
            return;
    }

    var_7 = animscripts\battlechatter::_ID9197( "response", var_0, var_3 );

    if ( isdefined( var_4 ) )
        var_7._ID29704 = var_4;

    if ( isdefined( var_5 ) )
        var_7._ID22519 = var_5;

    var_7._ID29825 = var_2;
    var_7._ID23882 = var_1;
    self._ID7337["response"] = undefined;
    self._ID7337["response"] = var_7;
}

_ID29831( var_0 )
{
    self endon( "death" );
    self endon( "removed from battleChatter" );
    var_0 endon( "death" );
    var_0 endon( "done speaking" );
    var_0 endon( "cancel speaking" );
    wait 25;
    self notify( "responseEvent_failsafe" );
}

_ID2026( var_0, var_1, var_2, var_3 )
{
    self endon( "death" );
    self endon( "removed from battleChatter" );

    if ( !animscripts\battlechatter::_ID6880( "inform", var_0, var_3, var_1 ) )
        return;

    var_4 = animscripts\battlechatter::_ID9197( "inform", var_0, var_3 );

    switch ( var_0 )
    {
        case "reloading":
            var_4._ID23882 = var_1;
            var_4._ID19561 = var_2;
            break;
        default:
            var_4._ID23882 = var_1;
    }

    self._ID7337["inform"] = undefined;
    self._ID7337["inform"] = var_4;
}

_ID2087( var_0, var_1, var_2, var_3 )
{
    self endon( "death" );
    self endon( "removed from battleChatter" );

    if ( !isdefined( self._ID7337 ) )
        return;

    var_4 = animscripts\battlechatter::_ID9197( "reaction", var_0, var_3 );
    var_4._ID29138 = var_2;
    var_4._ID23882 = var_1;
    self._ID7337["reaction"] = undefined;
    self._ID7337["reaction"] = var_4;
}

_ID2078( var_0, var_1, var_2, var_3 )
{
    self endon( "death" );
    self endon( "removed from battleChatter" );

    if ( !animscripts\battlechatter::_ID6880( "order", var_0, var_3, var_1 ) )
        return;

    if ( isdefined( var_2 ) && var_2.type == "dog" )
        return;

    var_4 = animscripts\battlechatter::_ID9197( "order", var_0, var_3 );
    var_4._ID23882 = var_1;
    var_4._ID25987 = var_2;
    self._ID7337["order"] = undefined;
    self._ID7337["order"] = var_4;
}

_ID35542()
{
    anim endon( "battlechatter disabled" );
    anim endon( "squad deleted " + self._ID1010 );

    for (;;)
    {
        var_0 = undefined;

        if ( self._ID25465.size )
            var_1 = self._ID25465;
        else
            var_1 = self._ID23465;

        var_2 = [];

        for ( var_3 = 0; var_3 < var_1.size; var_3++ )
        {
            if ( isalive( var_1[var_3] ) )
                var_2[var_2.size] = var_1[var_3];
        }

        if ( var_2.size )
        {
            var_0 = _ID42237::_ID16182( level.player.origin, var_2 );
            var_0 _ID2443();
            var_0 waittill( "death" );
        }

        wait 3.0;
    }
}

_ID44530( var_0 )
{
    var_1 = [];

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
    {
        if ( !isdefined( var_0[var_2]._ID12971 ) )
            continue;

        if ( !_ID37682( var_0[var_2] ) )
            continue;

        var_0[var_2]._ID48274 = var_1.size;
        var_1[var_1.size] = var_0[var_2];
    }

    var_1 = _ID42237::_ID15566( level.player.origin, var_1 );
    var_3 = [];
    var_4 = [];

    foreach ( var_6 in var_1 )
    {
        var_7 = var_6 animscripts\battlechatter::_ID16397();

        if ( isdefined( var_7 ) && !animscripts\battlechatter::_ID22523( var_7 ) )
        {
            var_3[var_3.size] = var_6;
            continue;
        }

        var_4[var_4.size] = var_6;
    }

    var_1 = _ID42237::_ID3296( var_3, var_4 );
    return var_1;
}

_ID37682( var_0 )
{
    if ( !level.player animscripts\battlechatter::_ID13070( var_0 ) )
        return 0;

    var_1 = level._ID47738 * level._ID47738;

    if ( distancesquared( level.player.origin, var_0.origin ) > var_1 )
        return 0;

    return 1;
}

_ID35546()
{
    anim endon( "battlechatter disabled" );
    anim endon( "squad deleted " + self._ID1010 );

    for (;;)
    {
        wait(randomfloatrange( 0.25, 0.75 ));

        if ( self.team == "allies" )
            var_0 = _ID44530( getaiarray( "axis", "team3" ) );
        else if ( self.team == "team3" )
            var_0 = _ID44530( getaiarray( "allies", "axis" ) );
        else
        {
            var_0 = getaiarray( "allies", "team3" );
            var_0[var_0.size] = level.player;
        }

        if ( !var_0.size )
            continue;

        var_1 = [];

        foreach ( var_7, var_3 in self._ID23465 )
        {
            if ( !isalive( var_3 ) )
                continue;

            if ( !var_0.size )
            {
                var_0 = var_1;
                var_1 = [];
            }

            foreach ( var_6, var_5 in var_0 )
            {
                if ( isdefined( level.battlechattermaxcanseeperframe ) && level.battlechattermaxcanseeperframe > 0 && var_6 > 0 && var_6 % level.battlechattermaxcanseeperframe == 0 )
                {
                    waittillframeend;

                    if ( !isalive( var_3 ) )
                        break;
                }

                if ( !isdefined( var_5 ) )
                {
                    if ( var_6 == 0 )
                        var_0 = [];

                    continue;
                }

                if ( !isalive( var_5 ) )
                    continue;

                if ( !var_3 cansee( var_5 ) )
                {
                    if ( isplayernumber( var_5 ) )
                        continue;

                    if ( var_5.team == level.player.team )
                        continue;

                    if ( !_ID42407::_ID27291( var_5 ) )
                        continue;
                }

                var_3 _ID2115( var_5._ID12971, var_5 );
                var_1[var_1.size] = var_5;
                var_0 = _ID42237::_ID3321( var_0, var_5 );
                break;
            }

            wait 0.05;
        }
    }
}

_ID2383()
{
    var_0 = self._ID85;
    _ID42237::_ID3350( self._ID35507._ID23465, ::_ID2382 );

    if ( isalive( var_0 ) && issentient( var_0 ) && isdefined( var_0._ID35507 ) && var_0._ID4912 )
    {
        if ( isdefined( var_0._ID6666[var_0._ID35507._ID1010] ) )
            var_0._ID6666[var_0._ID35507._ID1010] = undefined;

        if ( !isdefined( var_0._ID12971 ) )
            return;

        if ( !var_0 animscripts\battlechatter::_ID20543() )
            return;

        foreach ( var_2 in self._ID35507._ID23465 )
        {
            if ( gettime() > var_2._ID21920 + 2000 )
                continue;

            var_2 _ID2115( var_0._ID12971, var_0 );
        }
    }
}

_ID2382()
{
    if ( !isalive( self ) )
        return;

    self endon( "death" );
    self endon( "removed from battleChatter" );
    wait 1.5;
    _ID2087( "casualty", "generic", self, 0.9 );
}

_ID2381()
{
    var_0 = self._ID85;

    if ( !isalive( var_0 ) || !issentient( var_0 ) || !isdefined( var_0._ID35507 ) )
        return;

    if ( !isdefined( var_0._ID8774 ) || var_0._ID8774 != "NS" )
        return;

    if ( !isplayernumber( var_0 ) )
        var_0 thread _ID2403();
}

_ID2403()
{
    self endon( "death" );
    self endon( "removed from battleChatter" );
    wait 1.5;
    _ID2026( "killfirm", "generic" );
}

_ID2443()
{
    self endon( "death" );
    self endon( "removed from battleChatter" );

    if ( !isdefined( self._ID35507._ID7336 ) )
        self._ID35507 waittill( "squad chat initialized" );

    for (;;)
    {
        if ( getdvar( "bcs_enable", "on" ) == "off" )
        {
            wait 1.0;
            continue;
        }

        _ID2095();
        wait(randomfloatrange( 3.0, 6.0 ));
    }
}

_ID2392()
{
    self endon( "death" );
    self endon( "removed from battleChatter" );

    for (;;)
    {
        self waittill( "grenade danger",  var_0  );

        if ( getdvar( "bcs_enable", "on" ) == "off" )
            continue;

        if ( !isdefined( var_0 ) || var_0.model != "projectile_m67fraggrenade" )
            continue;

        if ( distance( var_0.origin, level.player.origin ) < 512 )
            _ID2026( "incoming", "grenade" );
    }
}

_ID2386()
{
    self endon( "death" );
    self endon( "removed from battleChatter" );

    for (;;)
    {
        self waittill( "trigger" );

        if ( getdvar( "bcs_enable", "on" ) == "off" )
            continue;

        if ( gettime() < self._ID7._ID26210 + 4000 )
            continue;

        _ID2089( "ack", "yes", level.player, 1.0 );
    }
}

_ID13240( var_0 )
{
    self endon( "death" );
    self endon( "removed from battleChatter" );

    if ( !animscripts\battlechatter::_ID4954() )
        return;

    if ( !isdefined( self.node ) )
        return;

    var_1 = distance( self.origin, self.node.origin );

    if ( var_1 < 512 )
        return;

    if ( !animscripts\battlechatter::_ID20832() )
        return;

    if ( !_ID24680() )
        return;

    var_2 = animscripts\battlechatter::_ID16571( 24, 1024, "response" );

    if ( self.team != "axis" && self.team != "team3" )
    {
        if ( !isdefined( var_2 ) )
            var_2 = level.player;
        else if ( randomint( 100 ) < anim._ID13277["moveEvent"]["ordertoplayer"] )
            var_2 = level.player;
    }

    if ( self._ID8376 > 0.0 )
    {
        if ( randomint( 100 ) < anim._ID13277["moveEvent"]["coverme"] )
            _ID2078( "action", "coverme", var_2 );
        else
            _ID2078( "move", "combat", var_2 );
    }
    else if ( _ID24681() )
        _ID2078( "move", "noncombat", var_2 );
}

_ID24680()
{
    if ( self._ID8774 == "SS" )
        return 0;

    return 1;
}

_ID24681()
{
    if ( self._ID8774 == "US" )
        return 1;

    return 0;
}

_ID2391()
{
    self endon( "death" );
    self endon( "removed from battleChatter" );

    for (;;)
    {
        level waittill( "follow order",  var_0  );

        if ( !animscripts\battlechatter::_ID4954() )
            return;

        if ( var_0.team != self.team )
            continue;

        if ( distance( self.origin, var_0.origin ) < 600 )
            _ID2089( "ack", "yes", var_0, 0.9 );
    }
}

_ID27431()
{
    self endon( "death" );
    self endon( "removed from battleChatter" );
    thread _ID27432();

    for (;;)
    {
        self waittill( "bulletwhizby",  var_0, var_1  );

        if ( !animscripts\battlechatter::_ID4954() )
            continue;

        if ( !isplayernumber( var_0 ) )
            continue;

        if ( _ID15016( var_0, var_1 ) )
        {
            _ID27430();
            wait 3;
        }
    }
}

_ID27430()
{
    _ID2087( "friendlyfire", undefined, level.player, 1.0 );
}

_ID27432()
{
    self endon( "death" );
    self endon( "removed from battleChatter" );

    for (;;)
    {
        self waittill( "damage",  var_0, var_1, var_2, var_3, var_4  );

        if ( isdefined( var_1 ) && isplayernumber( var_1 ) )
        {
            if ( _ID9608( var_4 ) )
                _ID27430();
        }
    }
}

_ID9608( var_0 )
{
    if ( !isdefined( var_0 ) )
        return 0;

    switch ( var_0 )
    {
        case "MOD_GRENADE":
        case "MOD_GRENADE_SPLASH":
        case "MOD_CRUSH":
        case "MOD_MELEE":
        case "MOD_IMPACT":
            return 0;
    }

    return 1;
}

_ID15016( var_0, var_1 )
{
    var_2 = 65536;
    var_3 = 42;

    if ( distancesquared( var_0.origin, self.origin ) < var_2 )
        return 0;

    if ( var_1 > var_3 )
        return 0;

    return 1;
}

_ID13241()
{
    self endon( "death" );
    self endon( "removed from battleChatter" );

    if ( !animscripts\battlechatter::_ID4954() )
        return;

    _ID2026( "reloading", "generic" );
}

_ID13239()
{
    self endon( "death" );
    self endon( "removed from battleChatter" );

    if ( !animscripts\battlechatter::_ID4954() )
        return 0;

    if ( !isdefined( self.enemy ) )
        return 0;

    return 0;
}

_ID13238()
{
    self endon( "death" );
    self endon( "removed from battleChatter" );

    if ( !animscripts\battlechatter::_ID4954() )
        return;

    if ( !isdefined( self.enemy ) )
        return;
}

_ID13242()
{
    self endon( "death" );
    self endon( "removed from battleChatter" );

    if ( !animscripts\battlechatter::_ID4954() )
        return;

    if ( !self._ID36839 )
        return;

    _ID2026( "suppressed", "generic" );
}

_ID13236( var_0 )
{
    self endon( "death" );
    self endon( "removed from battleChatter" );

    if ( !animscripts\battlechatter::_ID4954() )
        return;

    _ID2026( "attack", "grenade" );
}

_ID2095()
{
    self endon( "death" );
    self endon( "removed from battleChatter" );

    if ( self._ID35507._ID35545["combat"]._ID20649 )
        _ID2094();
}

_ID2094()
{
    self endon( "death" );
    self endon( "removed from battleChatter" );
    var_0 = self._ID35507;
    var_0 animscripts\squadmanager::_ID39802();

    if ( var_0._ID35545["suppressed"]._ID20649 )
    {
        if ( var_0._ID35545["cover"]._ID20649 )
        {
            var_1 = animscripts\battlechatter::_ID16571( 96, 512, "response" );
            _ID2078( "action", "grenade", var_1 );
        }
        else
            _ID2078( "displace", "generic" );
    }
    else if ( var_0._ID35545["combat"]._ID20649 )
    {
        if ( self._ID8774 != "SS" )
        {
            var_1 = animscripts\battlechatter::_ID16571( 24, 1024, "response" );
            _ID2078( "action", "suppress", var_1 );
        }
    }
}

_ID9528()
{
    var_0 = [];
    var_0[var_0.size] = "order_move_combat";
    var_0[var_0.size] = "order_move_noncombat";
    var_0[var_0.size] = "order_action_coverme";
    var_0[var_0.size] = "inform_reloading";
    level._ID9560 = var_0;
}

_ID9530( var_0 )
{
    var_1 = 0;

    foreach ( var_3 in level._ID9560 )
    {
        if ( var_3 == var_0 )
        {
            var_1 = 1;
            break;
        }
    }

    return var_1;
}

_ID9529( var_0 )
{
    if ( !isdefined( level._ID9560 ) )
        _ID9528();

    var_0 = tolower( var_0 );
    var_1 = anim._ID4935 + "custom battlechatter phrase '" + var_0 + "' isn't valid.  look at _utility::custom_battlechatter_init_valid_phrases(), or the util script documentation for custom_battlechatter(), for a list of valid phrases.";
    var_2 = anim._ID4935 + "AI at origin " + self.origin + "wasn't able to play custom battlechatter because his nationality is '" + self._ID8774 + "'.";

    if ( !_ID9530( var_0 ) )
        return 0;

    var_3 = animscripts\battlechatter::_ID16571( 24, 512, "response" );
    _ID5021();

    switch ( var_0 )
    {
        case "order_move_combat":
            if ( !_ID24680() )
                return 0;

            animscripts\battlechatter::_ID39077( self._ID9563, var_3 );
            _ID2051();
            break;
        case "order_move_noncombat":
            if ( !_ID24681() )
                return 0;

            _ID2052();
            break;
        case "order_action_coverme":
            animscripts\battlechatter::_ID39077( self._ID9563, var_3 );
            _ID1990();
            break;
        case "inform_reloading":
            _ID2027();
            break;
        default:
            return 0;
    }

    _ID12635( 2000 );
    return 1;
}

_ID5021()
{
    if ( !animscripts\battlechatter::_ID4954() )
        return;

    self._ID9563 = animscripts\battlechatter::_ID9198();
}

_ID1990()
{
    self._ID9563 animscripts\battlechatter::_ID2077( "action", "coverme" );
}

_ID2051()
{
    self._ID9563 animscripts\battlechatter::_ID2077( "move", "combat" );
}

_ID2052()
{
    self._ID9563 animscripts\battlechatter::_ID2077( "move", "noncombat" );
}

_ID2027()
{
    self._ID9563 animscripts\battlechatter::_ID2025( "reloading", "generic" );
}

_ID2054( var_0 )
{
    if ( !animscripts\battlechatter::_ID4954() )
        return;

    self._ID9563 animscripts\battlechatter::_ID2053( var_0 );
}

_ID12635( var_0, var_1 )
{
    if ( !animscripts\battlechatter::_ID4954() )
        return;

    var_2 = animscripts\battlechatter::_ID9197( "custom", "generic", 1.0 );

    if ( isdefined( var_0 ) )
        var_2._ID13599 = gettime() + var_0;

    if ( isdefined( var_1 ) )
        var_2.type = var_1;
    else
        var_2.type = "custom";

    self._ID7337["custom"] = undefined;
    self._ID7337["custom"] = var_2;
}
