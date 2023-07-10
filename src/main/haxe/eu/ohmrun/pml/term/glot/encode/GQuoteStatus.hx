package eu.ohmrun.pml.term.glot.encode;

import eu.ohmrun.glot.expr.GQuoteStatus in TGQuoteStatus;

class GQuoteStatus extends Clazz{
  public function apply(self:TGQuoteStatus){
    return switch(self){
      case GUnquoted  : PValue(AnSym('GUnquoted'));
      case GQuoted    : PValue(AnSym('GQuoted'));
    }
  }
}