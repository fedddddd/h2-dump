// H2 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_airborne_smg_c" );
    codescripts\character::attachhead( "alias_airborne_heads", _id_D21B::main() );
    self.voice = "russian";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_airborne_smg_c" );
    codescripts\character::precachemodelarray( _id_D21B::main() );
}