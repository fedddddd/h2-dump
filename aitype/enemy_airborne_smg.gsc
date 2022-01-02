// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self._ID3217 = "";
    self._ID2032 = "";
    self.team = "axis";
    self.type = "human";
    self._ID36736 = "regular";
    self.accuracy = 0.2;
    self.health = 150;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self._ID949 = "";
    self._ID34144 = "pp2000";

    if ( isai( self ) )
    {
        self setengagementmindist( 128.0, 0.0 );
        self setengagementmaxdist( 512.0, 768.0 );
    }

    switch ( _ID42226::_ID15950( 8 ) )
    {
        case 0:
            self.weapon = "p90";
            break;
        case 1:
            self.weapon = "p90_acog";
            break;
        case 2:
            self.weapon = "p90_reflex";
            break;
        case 3:
            self.weapon = "p90_eotech";
            break;
        case 4:
            self.weapon = "ump45_digital_acog";
            break;
        case 5:
            self.weapon = "ump45_digital_eotech";
            break;
        case 6:
            self.weapon = "kriss";
            break;
        case 7:
            self.weapon = "kriss_reflex";
            break;
    }

    switch ( _ID42226::_ID15942( 3 ) )
    {
        case 0:
            _ID44099::main();
            break;
        case 1:
            _ID52117::main();
            break;
        case 2:
            _ID51016::main();
            break;
    }
}

_ID988()
{
    self setspawnerteam( "axis" );
}

_ID814()
{
    _ID44099::_ID814();
    _ID52117::_ID814();
    _ID51016::_ID814();
    precacheitem( "p90" );
    precacheitem( "p90_acog" );
    precacheitem( "p90_reflex" );
    precacheitem( "p90_eotech" );
    precacheitem( "ump45_digital_acog" );
    precacheitem( "ump45_digital_eotech" );
    precacheitem( "kriss" );
    precacheitem( "kriss_reflex" );
    precacheitem( "pp2000" );
    precacheitem( "fraggrenade" );
}
