package eu.ohmrun.pml.term.glot.encode;

import eu.ohmrun.glot.expr.GTypeParam in TGTypeParam;

final encode = __.pml().glot().encode;

class GTypeParam extends Clazz{
  public function apply(self:TGTypeParam){
    return encode.Object.apply(self);
  } 
}