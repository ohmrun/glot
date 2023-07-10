package eu.ohmrun.pml.term.glot.encode;

import eu.ohmrun.glot.expr.GTypePath in TGTypePath;

final encode = __.pml().glot().encode;

class GTypePath extends Clazz{
  public function apply(self:TGTypePath){
    var arr = [
      tuple2(PLabel("name"),PValue(AnSym(self.name))),
      tuple2(PLabel("pack"),PArray(self.pack.map(x -> PValue(AnSym(x))))),
    ];
    if(self.sub != null){
      arr = arr.snoc(tuple2(PLabel("sub"),PValue(AnSym(self.sub))));
    }
    if(self.params != null){
      arr = arr.snoc(tuple2(PLabel("params"),PArray(self.params.map(x -> encode.GTypeParam.apply(x)))));
    }
    return PAssoc(arr.imm());
  }
}