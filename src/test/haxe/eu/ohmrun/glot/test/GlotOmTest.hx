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
    $type(meta);
    final glot = __.accept(meta).flat_map(
      arr -> Upshot.bind_fold(
        arr,
        (next,memo:Cluster<Spine>) -> {
          return Upshot.bind_fold(
            next.params,
            (nextI,memoI:Cluster<Spine>) -> {
              return new FromGlot().apply(nextI.toGlot()).map(
                spine -> spine.flat_map(
                  function recI(s){
                    return s.detuple(
                      (l,r) -> 
                        Collect(
                          [() -> Primate(PSprig(Textal(l)))].concat(r.map(x -> () -> x.flat_map(recI)))
                        )
                    );
                  }
                )
              ).map(memoI.snoc);
            },
            [].imm()
          ).map(memo.concat); 
        },
        [].imm()
      )
    );
    final pexpr = glot.flat_map(
      glot -> Upshot.bind_fold(
        glot,
        (next,memo:Cluster<PExpr<Atom>>) -> {
          return __.accept(memo.snoc(next.toPml()));
        },
        [].imm()
      )
    );
    $type(glot);
    $type(pexpr);
    trace(__.show(glot));
    for (arr in pexpr){
      for(v in arr){
        $type(v);
        trace(v.toString_with(x -> x.toString()));
      }
    }
    return macro {};
  }
}

@my_metadata({ some : "object" }, [ 1, 2, 3, 4 ], {bool : true}, 21.1)
class MyTestClassWithMetadata{
  public function new(){}
}