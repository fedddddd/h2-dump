// H2 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_militia_lmg_ab_blk" );
    codescripts\character::attachhead( "alias_opforce_militia_heads_blk", _id_BAF8::main() );
    self.voice = "portuguese";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_militia_lmg_ab_blk" );
    codescripts\character::precachemodelarray( _id_BAF8::main() );
}