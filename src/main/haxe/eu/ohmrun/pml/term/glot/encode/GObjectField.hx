package eu.ohmrun.pml.term.glot.encode;

import eu.ohmrun.glot.expr.GObjectField in TGObjectField;

final encode = __.pml().glot().encode;

class GObjectField extends Clazz{
  public function apply(self:TGObjectField){
    var arr = [
      tuple2( PLabel('field'), PValue(AnSym(self.field))),
      tuple2( PLabel('expr'),  encode.GExpr.apply(self.expr)),
    ];
    if(self.quotes != null){
      arr = arr.snoc(
        tuple2( 
          PLabel('quotes'),
          encode.GQuoteStatus.apply(self.quotes)
        )
      );
    }
    return PAssoc(arr);
  }
}