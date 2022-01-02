// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self._ID3217 = "";
    self._ID2032 = "";
    self.team = "allies";
    self.type = "human";
    self._ID36736 = "regular";
    self.accuracy = 0.2;
    self.health = 150;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self._ID949 = "usp";
    self._ID34144 = "usp";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    self.weapon = "m4_grunt";

    switch ( _ID42226::_ID15942( 3 ) )
    {
        case 0:
            _ID54070::main();
            break;
        case 1:
            _ID50097::main();
            break;
        case 2:
            _ID47140::main();
            break;
    }
}

_ID988()
{
    self setspawnerteam( "allies" );
}

_ID814()
{
    _ID54070::_ID814();
    _ID50097::_ID814();
    _ID47140::_ID814();
    precacheitem( "m4_grunt" );
    precacheitem( "usp" );
    precacheitem( "usp" );
    precacheitem( "fraggrenade" );
}
