// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self.animtree = "";
    self.additionalassets = "";
    self.team = "allies";
    self.type = "human";
    self.subclass = "regular";
    self.accuracy = 0.2;
    self.health = 100;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self.secondaryweapon = "at4";
    self.sidearm = "usp_silencer";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    self.weapon = "m4_grunt";
    _id_C456::main();
}

spawner()
{
    self setspawnerteam( "allies" );
}

precache()
{
    _id_C456::precache();
    precacheitem( "m4_grunt" );
    precacheitem( "at4" );
    precacheitem( "usp_silencer" );
    precacheitem( "fraggrenade" );
}
