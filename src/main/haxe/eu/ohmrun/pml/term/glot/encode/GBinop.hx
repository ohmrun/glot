package eu.ohmrun.pml.term.glot.encode;

import eu.ohmrun.glot.expr.GBinop in TGBinop;

class GBinop extends Clazz{
  public function apply(self:TGBinop){
    return PValue(AnSym(self.canonical()));
  }
}