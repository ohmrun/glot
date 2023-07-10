package eu.ohmrun.pml.term.glot.encode;

import eu.ohmrun.glot.expr.GEFieldKind in TGEFieldKind;

class GEFieldKind extends Clazz{
  public function apply(self:TGEFieldKind){
    return switch(self){
      case GNormal  : PLabel('GNormal'); 
	    case GSafe    : PLabel('GSafe');
    }
  }
}