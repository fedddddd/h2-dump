// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self.animtree = "";
    self.additionalassets = "";
    self.team = "allies";
    self.type = "human";
    self.subclass = "militia";
    self.accuracy = 0.2;
    self.health = 150;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self.secondaryweapon = "";
    self.sidearm = "ak47";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    self.weapon = "beretta";
    _id_C874::main();
}

spawner()
{
    self setspawnerteam( "allies" );
}

precache()
{
    _id_C874::precache();
    precacheitem( "beretta" );
    precacheitem( "ak47" );
    precacheitem( "fraggrenade" );
}
