package eu.ohmrun.glot.comparable;

import stx.g.lang.expr.GTypeDefinition as GTypeDefinitionT;

class GTypeDefinition extends ComparableCls<GTypeDefinitionT>{
  public function new(){}
  public function eq():Eq<GTypeDefinitionT>{
    return new eu.ohmrun.glot.eq.GTypeDefinition();
  }
  public function lt():Ord<GTypeDefinitionT>{
    return new eu.ohmrun.glot.ord.GTypeDefinition();
  }
}