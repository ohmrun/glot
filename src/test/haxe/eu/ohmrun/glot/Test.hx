package eu.ohmrun.glot;

import eu.ohmrun.glot.test.*;

using eu.ohmrun.Pml;
using eu.ohmrun.Glot;
using stx.Nano;
using stx.Test;
using stx.Log;

class Test{
  static public function main(){
    __.test().run(
      [
        new GlotTest(),
        new GlotOmTest(),
      ],[]
    );
  }
}
class GlotTest extends TestCase{
  public function test(){
    groo(
      {
        for (i in 0...10) { trace(i); }
      }
    );
  }
  static macro function groo(e:haxe.macro.Expr){
    final encode = __.pml().glot().encode;
    final glot   = e.toGlot();
    final pexpr  = encode.GExpr.apply(glot);
    trace(pexpr.toString());
    trace("GROOOOOOOO");
    return macro {}
  }
}
