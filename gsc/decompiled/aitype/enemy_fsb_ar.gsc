// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self.animtree = "";
    self.additionalassets = "riotshield.csv";
    self.team = "axis";
    self.type = "human";
    self.subclass = "elite";
    self.accuracy = 0.2;
    self.health = 150;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self.secondaryweapon = "";
    self.sidearm = "usp";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    switch ( codescripts\character::get_random_weapon( 6 ) )
    {
        case 0:
            self.weapon = "tavor_acog";
            break;
        case 1:
            self.weapon = "tavor_mars";
            break;
        case 2:
            self.weapon = "fn2000";
            break;
        case 3:
            self.weapon = "fn2000_acog";
            break;
        case 4:
            self.weapon = "fn2000_reflex";
            break;
        case 5:
            self.weapon = "fn2000_scope";
            break;
    }

    _id_B282::main();
}

spawner()
{
    self setspawnerteam( "axis" );
}

precache()
{
    _id_B282::precache();
    precacheitem( "tavor_acog" );
    precacheitem( "tavor_mars" );
    precacheitem( "fn2000" );
    precacheitem( "fn2000_acog" );
    precacheitem( "fn2000_reflex" );
    precacheitem( "fn2000_scope" );
    precacheitem( "usp" );
    precacheitem( "fraggrenade" );
}
