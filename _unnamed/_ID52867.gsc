// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_op_miltia_sniper" );
    self attach( "head_op_militia_sniper", "", 1 );
    self._ID18304 = "head_op_militia_sniper";
    self._ID40757 = "portuguese";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "body_op_miltia_sniper" );
    precachemodel( "head_op_militia_sniper" );
}
