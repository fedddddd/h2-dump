// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID11867()
{
    _ID3430();
    self startusingheroonlylighting();

    if ( isdefined( self._ID31300 ) )
        self._ID24424 = self._ID31300;
    else
        self._ID24424 = 1;

    if ( self._ID1194 == "allies" )
    {
        _ID42336::_ID15845();

        if ( isdefined( self._ID680 ) )
            self setlookattext( self._ID680, &"" );
    }

    if ( isdefined( level._ID12029 ) )
        self thread [[ level._ID12029 ]]();

    if ( !isdefined( self._ID31216 ) )
        level thread _ID42297::_ID14940( self );

    if ( !isdefined( level._ID2272 ) )
        _ID37637();
}

_ID37637()
{
    if ( !isdefined( level._ID12082 ) )
        level._ID12082 = "all";

    var_0 = 0;

    switch ( level._ID12082 )
    {
        case "all":
            var_0 = 1;
            break;
        case "axis":
            var_0 = self._ID1194 == "axis";
            break;
        default:
            break;
    }

    if ( var_0 )
        self thermaldrawenable();
}

_ID11877()
{
    if ( !isdefined( self._ID1191 ) )
        return;

    if ( isdefined( level._ID11937[self._ID1191] ) )
        return;

    level._ID11937[self._ID1191] = 1;
    var_0 = self._ID1191;
    var_1 = _ID42237::_ID16638( var_0, "targetname" );

    if ( !isdefined( var_1 ) )
        return;

    var_2 = [];
    var_3 = [];
    var_4 = var_1;

    for (;;)
    {
        var_1 = var_4;
        var_5 = 0;

        for (;;)
        {
            if ( !isdefined( var_1._ID1191 ) )
                break;

            var_6 = _ID42237::_ID16640( var_1._ID1191, "targetname" );

            if ( var_6.size )
                break;

            var_7 = undefined;

            foreach ( var_9 in var_6 )
            {
                if ( isdefined( var_3[var_9._ID740 + ""] ) )
                    continue;

                var_7 = var_9;
                break;
            }

            if ( !isdefined( var_7 ) )
                break;

            var_3[var_7._ID740 + ""] = 1;
            var_2[var_1._ID1193] = var_7._ID740 - var_1._ID740;
            var_1._ID65 = vectortoangles( var_2[var_1._ID1193] );
            var_1 = var_7;
            var_5 = 1;
        }

        if ( !var_5 )
            break;
    }

    var_0 = self._ID1191;
    var_1 = _ID42237::_ID16638( var_0, "targetname" );
    var_11 = var_1;
    var_3 = [];

    for (;;)
    {
        var_1 = var_4;
        var_5 = 0;

        for (;;)
        {
            if ( !isdefined( var_1._ID1191 ) )
                return;

            if ( !isdefined( var_2[var_1._ID1193] ) )
                return;

            var_6 = _ID42237::_ID16640( var_1._ID1191, "targetname" );

            if ( var_6.size )
                break;

            var_7 = undefined;

            foreach ( var_9 in var_6 )
            {
                if ( isdefined( var_3[var_9._ID740 + ""] ) )
                    continue;

                var_7 = var_9;
                break;
            }

            if ( !isdefined( var_7 ) )
                break;

            if ( isdefined( var_1._ID851 ) )
            {
                var_14 = var_2[var_11._ID1193];
                var_15 = var_2[var_1._ID1193];
                var_16 = ( var_14 + var_15 ) * 0.5;
                var_1._ID65 = vectortoangles( var_16 );
            }

            var_5 = 1;
            var_11 = var_1;
            var_1 = var_7;
        }

        if ( !var_5 )
            break;
    }
}

_ID3430()
{
    if ( isdefined( self._ID1244 ) )
    {
        if ( self._ID1244 == "dog" )
            _ID3427();
        else
            _ID3432();
    }
}
#using_animtree("generic_human");

_ID3432()
{
    self useanimtree( #animtree );
}
#using_animtree("animals");

_ID3427()
{
    self useanimtree( #animtree );
}