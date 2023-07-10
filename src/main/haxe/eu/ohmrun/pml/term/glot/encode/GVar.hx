package eu.ohmrun.pml.term.glot.encode;

import eu.ohmrun.glot.expr.GVar in TGVar;

final encode = __.pml().glot().encode;

class GVar extends Clazz{
  public function apply(self:TGVar){
    var arr = [
      tuple2(PLabel("name"),PValue(Str(self.name)))
    ];
    function add(label:String,v:PExpr<Atom>){
      arr = arr.push(tuple2(PLabel(label),v));
    }
    if(self.type != null){
      add('type',encode.GComplexType.apply(self.type));
    }
    if(self.expr != null){
      add('expr',encode.GExpr.apply(self.expr));
    }
    if(self.meta != null){
      add('meta',encode.GMetadata.apply(self.meta));
    }
    if(self.isFinal != null){
      add('isFinal',PValue(B(self.isFinal)));
    }
    if(self.isStatic != null){
      add('isStatic',PValue(B(self.isStatic)));
    }
    return self;
  }
}