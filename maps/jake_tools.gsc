// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID9171( var_0, var_1 )
{
    var_2 = newhudelem();
    var_2._ID1331 = 0;
    var_2._ID1339 = 0;
    var_2 setshader( var_0, 640, 480 );
    var_2._ID44 = "left";
    var_2._ID45 = "top";
    var_2._ID983 = 1;
    var_2._ID499 = "fullscreen";
    var_2._ID1284 = "fullscreen";
    var_2._ID55 = var_1;
    var_2._ID408 = 1;
    return var_2;
}

_ID18520()
{
    self hide();
    self notsolid();

    if ( self._ID989 & 1 )
        self connectpaths();
}

_ID18542( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = getentarray( "hide", "script_noteworthy" );

    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
    {
        var_2 = var_0[var_1];

        switch ( var_2._ID170 )
        {
            case "script_vehicle":
                var_2 delete();
                continue;
            case "script_model":
                var_2 hide();
                continue;
            case "script_brushmodel":
                var_2 hide();
                var_2 notsolid();

                if ( var_2._ID989 & 1 )
                    var_2 connectpaths();

                continue;
            case "trigger_radius":
            case "trigger_multiple":
            case "trigger_use":
            case "trigger_use_touch":
            case "trigger_multiple_flag_set":
            case "trigger_multiple_breachIcon":
            case "trigger_multiple_flag_lookat":
            case "trigger_multiple_flag_looking":
                var_2 _ID42237::_ID38863();
                continue;
        }
    }
}

_ID2314( var_0, var_1 )
{
    self endon( "death" );
    var_1 = int( var_1 * 1000 );
    var_2 = gettime();
    var_3 = gettime();

    while ( var_3 < var_2 + var_1 )
    {
        wait 0.05;
        var_3 = gettime();
        self notify( var_0 );
    }

    self notify( "ai_notify_complete" );
}

_ID15552( var_0 )
{
    var_1 = [];
    var_2 = self;
    var_3 = 0;

    while ( isdefined( var_2._ID1191 ) )
    {
        wait 0.05;

        if ( isdefined( var_2._ID1191 ) )
        {
            switch ( var_0 )
            {
                case "vehiclenode":
                    var_2 = getvehiclenode( var_2._ID1191, "targetname" );
                    break;
                case "pathnode":
                    var_2 = getnode( var_2._ID1191, "targetname" );
                    break;
                case "ent":
                    var_2 = getent( var_2._ID1191, "targetname" );
                    break;
            }

            endswitch( 4 )  case "pathnode" loc_1D2 case "vehiclenode" loc_1BE case "ent" loc_1E6 default loc_1FA
            var_1[var_1.size] = var_2;
            continue;
        }

        break;
    }

    if ( var_1.size > 0 )
        return var_1;
    else
        return undefined;
}

_ID40876( var_0, var_1 )
{
    level endon( var_0 );
    wait(var_1);
}

_ID15548( var_0, var_1, var_2 )
{
    if ( isdefined( var_2 ) )
        var_3 = getaiarray( var_2 );
    else
        var_3 = getaiarray();

    var_4 = [];

    for ( var_5 = 0; var_5 < var_3.size; var_5++ )
    {
        if ( distance( var_1, self._ID740 ) <= var_0 )
            _ID42237::_ID3293( var_4, var_3[var_5] );
    }

    return var_4;
}

_ID2345( var_0 )
{
    self endon( "death" );

    if ( isdefined( self ) && isalive( self ) && _ID42407::_ID14508() )
        _ID42407::_ID14510( var_0 );
}

_ID36035( var_0 )
{
    self forceteleport( var_0._ID740, var_0._ID65 );
    self setgoalpos( self._ID740 );
    self setgoalnode( var_0 );
}

_ID41134( var_0, var_1 )
{
    for (;;)
    {
        if ( distance( var_0, level._ID794._ID740 ) <= var_1 )
            break;

        wait 0.5;
    }
}

_ID40157( var_0, var_1 )
{
    var_2 = getvehiclenode( var_0, "targetname" );
    var_3 = "";

    switch ( var_1 )
    {
        case "truck":
            var_3 = "vehicle_pickup_4door";
            break;
        case "bmp":
            var_3 = "vehicle_bmp";
            break;
    }

    endswitch( 3 )  case "bmp" loc_326 case "truck" loc_31B default loc_331
    var_4 = spawnvehicle( var_3, "plane", "truck", var_2._ID740, var_2._ID65 );

    if ( var_1 == "truck" )
        var_4 _ID38997();

    var_4 attachpath( var_2 );
    var_4 startpath();
    var_4 vehicle_setspeed( 23, 20 );
    var_4 waittill( "reached_end_node" );
    var_4 delete();
}

_ID38997()
{
    playfxontag( level._ID1426["headlight_truck"], self, "tag_headlight_left" );
    playfxontag( level._ID1426["headlight_truck"], self, "tag_headlight_right" );
}

_ID32340( var_0, var_1 )
{
    self endon( "death" );

    if ( isdefined( var_0 ) )
        var_1 = getent( var_0, "targetname" );

    var_2 = getnode( var_1._ID1191, "targetname" );
    self._ID16983 = var_1;
    self setgoalnode( var_2 );
    self._ID452 = 0;

    if ( isdefined( var_2._ID851 ) )
        self._ID452 = var_2._ID851;

    self setgoalpos( var_1._ID740 );
    self setgoalvolume( var_1 );
}

_ID41155( var_0 )
{
    self endon( "death" );

    while ( !self istouching( var_0 ) )
        wait 0.05;
}

_ID29745()
{
    self endon( "death" );
    self setgoalpos( self._ID740 );
    self._ID16983 = undefined;
}

_ID28585( var_0, var_1, var_2, var_3 )
{
    self endon( "death" );

    if ( !isdefined( var_2 ) )
        var_2 = 0.25;

    if ( !isdefined( var_3 ) )
        var_3 = 0;

    if ( !isdefined( var_1 ) )
    {
        self notify( "stop_3dprint" );
        self endon( "stop_3dprint" );
        self endon( "death" );

        for (;;)
        {
            if ( isdefined( self ) )
            {

            }

            wait 0.05;
        }
    }
    else
    {
        for (;;)
            wait 0.05;
    }
}

_ID34434()
{
    self endon( "smoke_has_been_thrown" );
    self._ID34444 = 0;

    while ( self._ID34444 == 0 )
    {
        wait 0.05;
        var_0 = getentarray( "grenade", "classname" );

        for ( var_1 = 0; var_1 < var_0.size; var_1++ )
        {
            if ( var_0[var_1]._ID669 == "projectile_us_smoke_grenade" )
            {
                if ( var_0[var_1] istouching( self ) )
                {
                    self._ID34444 = 1;
                    self notify( "smoke_has_been_thrown" );
                }
            }
        }
    }
}

_ID10760( var_0 )
{
    self endon( "death" );
    _ID42407::_ID10805( var_0 );
}

_ID38744( var_0 )
{
    var_1 = getentarray( var_0, "targetname" );

    if ( var_1.size == 1 )
        _ID38950( var_0 );
    else
    {
        for ( var_2 = 0; var_2 < var_1.size; var_2++ )
            var_1[var_2] thread _ID38745( var_1 );

        var_1[0] waittill( "trigger" );
    }
}

_ID38745( var_0 )
{
    self waittill( "trigger" );

    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
    {
        var_0[var_1] notify( "trigger" );
        var_0[var_1] _ID42237::_ID38863();
    }
}

_ID38950( var_0 )
{
    var_1 = getent( var_0, "targetname" );
    var_1 waittill( "trigger" );
    var_1 _ID42237::_ID38863();
}

_ID38942( var_0, var_1, var_2 )
{
    var_3 = getentarray( var_0, var_1 );

    if ( var_2 == 1 )
        _ID42237::_ID3350( var_3, _ID42237::_ID38865 );
    else
        _ID42237::_ID3350( var_3, _ID42237::_ID38863 );
}

_ID38931( var_0 )
{
    var_1 = getent( var_0, "targetname" );
    var_1 notify( "trigger",  level._ID794  );
    var_1 _ID42237::_ID38863();
}

_ID1706()
{

}

_ID22613( var_0 )
{
    var_1 = vectortoangles( self._ID740 - var_0._ID740 );
    self setpotentialthreat( var_1[1] );
}

_ID32474( var_0 )
{
    if ( !isdefined( self._ID25531 ) )
        self._ID25531 = self._ID1204;

    self._ID1204 = var_0;
}

_ID32520( var_0 )
{
    if ( !isdefined( self._ID25538 ) )
        self._ID25538 = self._ID1298;

    self._ID1298 = var_0;
}

_ID29763()
{
    if ( isdefined( self._ID25538 ) )
        self._ID1298 = self._ID25538;

    self._ID25538 = undefined;
}

_ID32345( var_0 )
{
    self._ID25512 = self._ID486;
    self._ID486 = var_0;
}

_ID29747()
{
    if ( isdefined( self._ID25512 ) )
        self._ID486 = self._ID25512;
}

_ID32218( var_0 )
{
    if ( !isdefined( self._ID25496 ) )
        self._ID25496 = self._ID3189;

    self._ID3189 = var_0;
}

_ID29733()
{
    if ( isdefined( self._ID25496 ) )
        self._ID3189 = self._ID25496;

    self._ID25496 = undefined;
}

_ID32373( var_0 )
{
    if ( !isdefined( self._ID25520 ) )
        self._ID25520 = self._ID628;

    self._ID628 = var_0;
}

_ID29749()
{
    if ( isdefined( self._ID25520 ) )
        self._ID628 = self._ID25520;

    self._ID25520 = undefined;
}

_ID32475( var_0 )
{
    if ( !threatbiasgroupexists( var_0 ) )
    {

    }

    if ( !isdefined( self._ID25532 ) )
        self._ID25532 = self._ID37673;

    self._ID37673 = var_0;
    self setthreatbiasgroup( var_0 );
}

_ID29756()
{
    if ( isdefined( self._ID25532 ) )
    {
        self._ID37673 = self._ID25532;
        self setthreatbiasgroup( self._ID25532 );

        if ( !threatbiasgroupexists( self._ID25532 ) )
        {

        }
    }
    else
    {
        self._ID37673 = undefined;
        self setthreatbiasgroup();
    }

    self._ID25532 = undefined;
}

_ID32642( var_0 )
{
    if ( !isdefined( self._ID25510 ) )
        self._ID25510 = self._ID452;

    self._ID452 = var_0;
}

_ID29775()
{
    if ( isdefined( self._ID25510 ) )
        self._ID452 = self._ID25510;

    self._ID25510 = undefined;
}

_ID32665( var_0 )
{
    if ( !isdefined( self._ID25516 ) )
        self._ID25516 = self._ID525;

    self._ID525 = var_0;
}

_ID29776()
{
    if ( isdefined( self._ID25516 ) )
        self._ID525 = self._ID25516;

    self._ID25516 = undefined;
}

_ID32177( var_0 )
{
    if ( !isdefined( self._ID25493 ) )
        self._ID25493 = self._ID4867;

    self._ID4867 = var_0;
}

_ID29730()
{
    if ( isdefined( self._ID25493 ) )
        self._ID4867 = self._ID25493;

    self._ID25493 = undefined;
}

_ID15605( var_0 )
{
    var_1 = undefined;

    if ( !isdefined( var_0 ) )
        var_2 = level._ID794 getorigin();
    else
        var_2 = var_0 getorigin();

    if ( isdefined( level._ID13290 ) )
        var_1 = _ID42407::_ID15602( var_2, "allies", level._ID13290 );
    else
        var_1 = _ID42407::_ID15601( var_2, "allies" );

    return var_1;
}

_ID15606()
{
    var_0 = _ID42407::_ID15601( level._ID794 getorigin(), "axis" );
    return var_0;
}

_ID17474( var_0, var_1 )
{
    var_2 = getnodearray( var_1, "targetname" );

    for ( var_3 = 0; var_3 < var_0.size; var_3++ )
    {
        if ( isdefined( var_2[var_3] ) )
            var_0[var_3] teleport( var_2[var_3]._ID740 );
    }
}

_ID16097( var_0, var_1, var_2 )
{
    if ( !isdefined( var_2 ) )
        var_2 = getent( var_1, "targetname" );

    if ( var_0 == "all" )
        var_3 = getaiarray();
    else
        var_3 = getaiarray( var_0 );

    var_4 = [];

    for ( var_5 = 0; var_5 < var_3.size; var_5++ )
    {
        if ( var_3[var_5] istouching( var_2 ) )
            var_4[var_4.size] = var_3[var_5];
    }

    return var_4;
}

_ID25172( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( var_3 ) )
    {
        var_3 = [];
        var_3[0] = level._ID28543;
    }

    var_4 = getent( var_0, "targetname" );

    if ( !isdefined( var_2 ) )
        var_2 = 0;

    var_5 = undefined;

    if ( var_1 == "all" )
        var_5 = getaiarray();
    else
        var_5 = getaiarray( var_1 );

    if ( isdefined( var_3 ) )
    {
        for ( var_6 = 0; var_6 < var_3.size; var_6++ )
        {
            if ( _ID42407::_ID20542( var_5, var_3[var_6] ) )
                var_5 = _ID42237::_ID3321( var_5, var_3[var_6] );
        }
    }

    for ( var_6 = 0; var_6 < var_5.size; var_6++ )
    {
        if ( var_5[var_6] istouching( var_4 ) )
        {
            var_5[var_6] _ID20395( 0 );

            if ( var_2 == 1 )
            {
                var_5[var_6] kill( ( 0, 0, 0 ) );
                continue;
            }

            var_5[var_6] delete();
        }
    }
}

_ID16244( var_0, var_1 )
{
    var_2 = undefined;

    for ( var_3 = 0; var_3 < var_0.size; var_3++ )
    {
        if ( isdefined( var_0[var_3]._ID922 ) && var_0[var_3]._ID922 == var_1 )
            var_2 = var_0[var_3];
    }

    return var_2;
}

_ID16245( var_0, var_1 )
{
    var_2 = [];

    if ( isdefined( var_1 ) )
    {
        for ( var_3 = 0; var_3 < var_0.size; var_3++ )
        {
            if ( isdefined( var_0[var_3]._ID922 ) && var_0[var_3]._ID922 == var_1 )
                var_2[var_2.size] = var_0[var_3];
        }

        jump loc_9F6
    }

    if ( var_2.size > 0 )
        return var_2;
    else
        return undefined;
}

_ID17031( var_0 )
{
    self endon( "death" );
    var_1 = getnode( var_0, "targetname" );
    _ID32642( var_1._ID851 );
    self setgoalnode( var_1 );
    self waittill( "goal" );
    _ID29775();
}

_ID17032( var_0 )
{
    if ( !isdefined( self ) )
        return;

    if ( !isalive( self ) )
        return;

    self endon( "death" );
    var_1 = getnode( var_0, "targetname" );
    self setgoalnode( var_1 );
    _ID32642( var_1._ID851 );
    self waittill( "goal" );
    self delete();
}

_ID17033( var_0 )
{
    if ( !isdefined( self ) )
        return;

    if ( !isalive( self ) )
        return;

    self endon( "death" );
    var_1 = getnode( var_0, "targetname" );
    self setgoalnode( var_1 );
    _ID32642( var_1._ID851 );
    self waittill( "goal" );
    _ID32218( "guy" );
    self waittill( "stop_waiting_at_node" );
    _ID29775();
}

_ID14802( var_0 )
{
    self endon( "death" );
    var_1 = getnode( var_0, "targetname" );
    self pushplayer( 1 );
    self setgoalnode( var_1 );
    self waittill( "goal" );
    self pushplayer( 0 );
    _ID29775();
}

_ID32759( var_0 )
{
    if ( var_0 == "all" )
        self allowedstances( "stand", "crouch", "prone" );
    else
        self allowedstances( var_0 );
}

_ID20395( var_0 )
{
    if ( var_0 == 0 )
    {
        if ( isdefined( self._ID22746 ) )
            _ID42407::_ID36519();
    }
    else if ( !isdefined( self._ID22746 ) )
        thread _ID42407::_ID22746();

    self._ID7._ID11043 = var_0;
}

_ID21352()
{
    self endon( "death" );

    if ( !isdefined( self ) )
        return;

    if ( !isalive( self ) )
        return;

    self._ID49 = 1;
    _ID20395( 0 );
    self kill();
}

_ID17037( var_0 )
{
    self endon( "death" );
    var_1 = getent( var_0, "targetname" );
    var_2 = getnode( var_1._ID1191, "targetname" );
    self setgoalnode( var_2 );
    self setgoalvolume( var_1 );
    self._ID452 = var_2._ID851;
}

_ID1715()
{

}

_ID49620( var_0, var_1 )
{
    if ( isdefined( var_1 ) )
        var_2 = var_0 stalingradspawn();
    else
        var_2 = var_0 dospawn();

    _ID42407::_ID35060( var_2 );
    return var_2;
}

_ID1707()
{

}

_ID11599( var_0, var_1, var_2 )
{
    if ( !isdefined( var_1 ) )
        var_1 = 1;

    if ( !isdefined( var_2 ) )
        var_2 = 1;

    if ( var_1 == 1 )
        self playsound( level._ID30909["snd_wood_door_kick"] );

    if ( self._ID170 == "script_brushmodel" )
        var_3 = getent( self._ID1191, "targetname" );
    else
    {
        var_4 = getent( self._ID1191, "targetname" );
        var_3 = getent( var_4._ID31273, "script_linkname" );
    }

    switch ( var_0 )
    {
        case "explosive":
            thread _ID11592();
            _ID11591( var_2 );
            self playsound( level._ID30909["snd_breach_wooden_door"] );
            earthquake( 0.4, 1, self._ID740, 1000 );
            radiusdamage( self._ID740, 56, level._ID23089, level._ID23622 );
            break;
        case "kicked":
            self rotateyaw( -175, 0.5 );
            _ID11591( var_2 );
            break;
        case "kicked_down":
            thread _ID11592();
            _ID11591( var_2 );
            break;
        default:
            self rotateyaw( -175, 0.5 );
            _ID11591();
            break;
    }

    var_5 = var_3._ID31170;
    _ID42234::_ID13611( var_5 );
}

_ID11591( var_0 )
{
    if ( self._ID170 == "script_brushmodel" )
        self connectpaths();
    else
    {
        var_1 = getent( self._ID1191, "targetname" );
        var_1 hide();
        var_1 notsolid();
        var_1 connectpaths();
    }
}

_ID11592()
{
    var_0 = anglestoforward( self._ID65 );
    var_1 = ( var_0[0] * 20, var_0[1] * 20, var_0[2] * 20 );
    self moveto( self._ID740 + var_1, 0.5, 0, 0.5 );
    self rotatepitch( 90, 0.45, 0.4 );
    wait 0.449;
    self rotatepitch( -4, 0.2, 0, 0.2 );
    wait 0.2;
    self rotatepitch( 4, 0.15, 0.15 );
}

_ID9861( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = 16;
    var_7 = 360 / var_6;
    var_8 = [];

    for ( var_9 = 0; var_9 < var_6; var_9++ )
    {
        var_10 = var_7 * var_9;
        var_11 = cos( var_10 ) * var_1;
        var_12 = sin( var_10 ) * var_1;
        var_13 = var_0[0] + var_11;
        var_14 = var_0[1] + var_12;
        var_15 = var_0[2];
        var_8[var_8.size] = ( var_13, var_14, var_15 );
    }

    if ( isdefined( var_4 ) )
        wait(var_4);

    thread _ID9862( var_8, var_2, var_3, var_5, var_0 );
}

_ID9862( var_0, var_1, var_2, var_3, var_4 )
{
    if ( !isdefined( var_3 ) )
        var_3 = 0;

    if ( !isdefined( var_4 ) )
        var_3 = 0;

    for ( var_5 = 0; var_5 < var_0.size; var_5++ )
    {
        var_6 = var_0[var_5];

        if ( var_5 + 1 >= var_0.size )
            var_7 = var_0[0];
        else
            var_7 = var_0[var_5 + 1];

        thread _ID9902( var_6, var_7, var_1, var_2 );

        if ( var_3 )
            thread _ID9902( var_4, var_6, var_1, var_2 );
    }
}

_ID9902( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( var_3 ) )
        var_3 = ( 1, 1, 1 );

    for ( var_4 = 0; var_4 < var_2 * 20; var_4++ )
        wait 0.05;
}