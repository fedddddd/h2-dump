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
    self.secondaryweapon = "";
    self.sidearm = "pp2000";

    if ( isai( self ) )
    {
        self setengagementmindist( 1250.0, 1024.0 );
        self setengagementmaxdist( 1600.0, 2400.0 );
    }

    switch ( codescripts\character::get_random_weapon( 2 ) )
    {
        case 0:
            self.weapon = "dragunov";
            break;
        case 1:
            self.weapon = "dragunov_woodland";
            break;
    }

    _id_B258::main();
}

spawner()
{
    self setspawnerteam( "axis" );
}

precache()
{
    _id_B258::precache();
    precacheitem( "dragunov" );
    precacheitem( "dragunov_woodland" );
    precacheitem( "pp2000" );
    precacheitem( "fraggrenade" );
    maps\_sniper_glint::main();
}
