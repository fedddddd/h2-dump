// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self.animtree = "";
    self.additionalassets = "sniper_glint.csv";
    self.team = "axis";
    self.type = "human";
    self.subclass = "regular";
    self.accuracy = 0.2;
    self.health = 150;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self.secondaryweapon = "pp2000_silencer";
    self.sidearm = "usp_silencer";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    self.weapon = "wa2000";
    _id_B258::main();
}

spawner()
{
    self setspawnerteam( "axis" );
}

precache()
{
    _id_B258::precache();
    precacheitem( "wa2000" );
    precacheitem( "pp2000_silencer" );
    precacheitem( "usp_silencer" );
    precacheitem( "fraggrenade" );
    maps\_sniper_glint::main();
}
