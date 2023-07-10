package eu.ohmrun.pml.term.glot.encode;

import eu.ohmrun.glot.expr.GUnop in TGUnop;

final encode = __.pml().glot().encode;

class GUnop extends Clazz{
  public function apply(self:TGUnop){
    return PValue(AnSym(self.canonical()));
  }
}