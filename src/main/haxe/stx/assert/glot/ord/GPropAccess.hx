package stx.assert.glot.ord;

import eu.ohmrun.glot.expr.GPropAccess as GPropAccessT;

class GPropAccess extends OrdCls<GPropAccessT>{
  public function new(){}
  public function comply(lhs:GPropAccessT,rhs:GPropAccessT){
    return Ord.String().comply(lhs.toString(),rhs.toString());
  }
}