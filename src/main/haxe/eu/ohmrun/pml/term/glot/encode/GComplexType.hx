package eu.ohmrun.pml.term.glot.encode;

import eu.ohmrun.glot.expr.GTypeParam in TGTypeParam;

final encode = __.pml().glot().encode;

class GComplexType extends Clazz{
  public function apply(self:TGComplexType){
    return encode.EnumValue.apply(self);
  }
}