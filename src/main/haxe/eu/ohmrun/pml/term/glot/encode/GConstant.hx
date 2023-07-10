package eu.ohmrun.pml.term.glot.encode;

import eu.ohmrun.glot.expr.GConstant in TGConstant;

class GConstant extends Clazz{
  public function apply(self:TGConstant){
    return switch(self){
      case GCInt(v, s)          : PValue(N(KLInt(Std.parseInt(v))));
      case GCFloat(f, s)        : PValue(N(KLFloat(Std.parseFloat(f))));
      case GCString(s, kind)    : PValue(Str(s));
      case GCIdent(s)           : PLabel(s);
      case GCRegexp(r, opt)     : PValue(Str('~/$r/$opt'));
    }
  }
}