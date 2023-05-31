package eu.ohmrun.glot.test;

using stx.Show;

import stx.om.spine.glot.FromGlot;

class GlotOmTest extends TestCase{
  public function test(){
    final md = new MyTestClassWithMetadata();
    use_glot_to_om(md);
  }
  static public macro function use_glot_to_om(e:haxe.macro.Expr){
    final type = Context.typeof(e);
    final meta = switch(type){
      case TMono(t)               : [];
      case TEnum(t,params)        : t.get().meta.get();
      case TInst(t,params)        : t.get().meta.get();
      case TType(t,params)        : t.get().meta.get();
      case TFun(args, ret)        : [];
      case TAnonymous(a)          : [];
      case TDynamic(t)            : [];
      case TLazy(f)               : [];
      case TAbstract(t, params)   : [];
    }
    final glot = $type(__.accept(meta).map(
      arr -> arr.toGlot()
    ));
    $type(glot);
    final pexpr = glot.flat_map(
      glot -> glot.toPml()
    ).map(
      x -> x.map(y -> y.mapr(z -> z.map(a -> a.toSpine())))
    ).map(
      arr -> Collate(arr.map(
        tup -> Field.make(tup.fst(),() -> Collect(tup.snd().map(x -> () -> x.toSpineNada())))
      ))
    );
    $type(pexpr);
    for(v in pexpr){
      trace((v:Spine)); 
    }
    return macro {};
  }
}

@my_metadata({ some : "object" }, [ 1, 2, 3, 4 ], {bool : true}, 21.1)
class MyTestClassWithMetadata{
  public function new(){}
}