package eu.ohmrun.glot.test;

import stx.om.spine.glot.FromGlot;

class GlotOmTest extends TestCase{
  public function test(){
    final md = new MyTestClassWithMetadata();
    use_glot_to_om(md);
  }
  static public macro function use_glot_to_om(e:haxe.macro.Expr){
    final type = Context.typeof(e);
    trace(type);
    return macro {};
  }
}

@my_metadata({ some : "object" }, [ 1, 2, 3, 4 ], {bool : true}, 21.1)
class MyTestClassWithMetadata{
  public function new(){}
}