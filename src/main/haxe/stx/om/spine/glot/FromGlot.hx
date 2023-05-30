package stx.om.spine.glot;


class FromGlot{
  public function apply(self:GExpr):Upshot<Spine,OMFailure>{
    return switch(self){
      case GEObjectDecl(fields)       : 
        Upshot.bind_fold(
          fields,
          (next,memo:Cluster<Field<Void->Spine>>) -> {
              return apply(next.expr).map(
                x -> Field.make(next.field,() -> x)
              ).map(memo.snoc);
          },
          [].imm()
        ).map(Collate);
      case GEArrayDecl(values)        : 
          Upshot.bind_fold(
            values,
            (next,memo:Cluster<Void->Spine>) -> apply(next).map(
              (x) -> () -> x
            ).map(memo.snoc),
            [].imm()
          ).map(Collect);
      case GEConst(GCInt(v, _))     : __.accept(Primate(PSprig(Byteal(NInt(Std.parseInt(v))))));
	    case GEConst(GCString(v, _))  : __.accept(Primate(PSprig(Textal(v))));
      default                       : __.reject(f -> f.of(E_OM('can\'t decode $self')));

    }
  }
}