// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_shadow_co_lmg" );
    codescripts\character::attachhead( "alias_shad_co_heads", _id_CEEA::main() );
    self.voice = "shadowcompany";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_shadow_co_lmg" );
    codescripts\character::precachemodelarray( _id_CEEA::main() );
}
