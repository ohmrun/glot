package eu.ohmrun.pml.term.glot;

using eu.ohmrun.Glot;

import eu.ohmrun.pml.term.glot.encode.GExpr;
import eu.ohmrun.pml.term.glot.encode.GConstant;
import eu.ohmrun.pml.term.glot.encode.GBinop;
import eu.ohmrun.pml.term.glot.encode.GEFieldKind;
import eu.ohmrun.pml.term.glot.encode.GTypePath;
import eu.ohmrun.pml.term.glot.encode.GTypeParam;
import eu.ohmrun.pml.term.glot.encode.GObjectField;
import eu.ohmrun.pml.term.glot.encode.GQuoteStatus;
import eu.ohmrun.pml.term.glot.encode.GUnop;
import eu.ohmrun.pml.term.glot.encode.EnumValue;
import eu.ohmrun.pml.term.glot.encode.Dyn;
import eu.ohmrun.pml.term.glot.encode.Object;

class Module extends Clazz{
   @:isVar public var encode(get,null):Encode;
   private function get_encode():Encode{
     return __.option(this.encode).def(() -> this.encode = new Encode());
   } 
}
private class Encode extends Clazz{
  @:isVar public var GExpr(get,null):GExpr;
  private function get_GExpr():GExpr{
    return __.option(this.GExpr).def(() -> this.GExpr = new GExpr());
  }
  @:isVar public var GConstant(get,null):GConstant;
  private function get_GConstant():GConstant{
    return __.option(this.GConstant).def(() -> this.GConstant = new GConstant());
  }
  @:isVar public var GBinop(get,null):GBinop;
  private function get_GBinop():GBinop{
    return __.option(this.GBinop).def(() -> this.GBinop = new GBinop());
  }
  @:isVar public var GEFieldKind(get,null):GEFieldKind;
  private function get_GEFieldKind():GEFieldKind{
    return __.option(this.GEFieldKind).def(() -> this.GEFieldKind = new GEFieldKind());
  }
  @:isVar public var GQuoteStatus(get,null):GQuoteStatus;
  private function get_GQuoteStatus():GQuoteStatus{
    return __.option(this.GQuoteStatus).def(() -> this.GQuoteStatus = new GQuoteStatus());
  }
  @:isVar public var GObjectField(get,null):GObjectField;
  private function get_GObjectField():GObjectField{
    return __.option(this.GObjectField).def(() -> this.GObjectField = new GObjectField());
  }
  @:isVar public var GUnop(get,null):GUnop;
  private function get_GUnop():GUnop{
    return __.option(this.GUnop).def(() -> this.GUnop = new GUnop());
  }
  @:isVar public var EnumValue(get,null):EnumValue;
  private function get_EnumValue():EnumValue{
    return __.option(this.EnumValue).def(() -> this.EnumValue = new EnumValue());
  }
  @:isVar public var Dyn(get,null):Dyn;
  private function get_Dyn():Dyn{
    return __.option(this.Dyn).def(() -> this.Dyn = new Dyn());
  }
  @:isVar public var Object(get,null):Object;
  private function get_Object():Object{
    return __.option(this.Object).def(() -> this.Object = new Object());
  }
  @:isVar public var GTypePath(get,null):GTypePath;
  private function get_GTypePath():GTypePath{
    return __.option(this.GTypePath).def(() -> this.GTypePath = new GTypePath());
  }
  @:isVar public var GTypeParam(get,null):GTypeParam;
  private function get_GTypeParam():GTypeParam{
    return __.option(this.GTypeParam).def(() -> this.GTypeParam = new GTypeParam());
  }
}