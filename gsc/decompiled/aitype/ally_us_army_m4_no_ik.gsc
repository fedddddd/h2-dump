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
    self.secondaryweapon = "";
    self.sidearm = "beretta";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    switch ( codescripts\character::get_random_weapon( 2 ) )
    {
        case 0:
            self.weapon = "m4_grenadier";
            break;
        case 1:
            self.weapon = "m4_grunt";
            break;
    }

    switch ( codescripts\character::get_random_character( 3 ) )
    {
        case 0:
            character\character_us_army_assault_a_no_ik::main();
            break;
        case 1:
            character\character_us_army_assault_b_no_ik::main();
            break;
        case 2:
            character\character_us_army_assault_c_no_ik::main();
            break;
    }
}

spawner()
{
    self setspawnerteam( "allies" );
}

precache()
{
    character\character_us_army_assault_a_no_ik::precache();
    character\character_us_army_assault_b_no_ik::precache();
    character\character_us_army_assault_c_no_ik::precache();
    precacheitem( "m4_grenadier" );
    precacheitem( "m203_m4" );
    precacheitem( "m4_grunt" );
    precacheitem( "beretta" );
    precacheitem( "fraggrenade" );
}
