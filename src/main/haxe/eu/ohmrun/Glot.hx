package eu.ohmrun;

using eu.ohmrun.Glot;

import haxe.macro.Expr;

using stx.Nano;
using stx.Log;

class Lang{
  static public function glot(wildcard:Wildcard){
    return new eu.ohmrun.glot.Module();  
  }
}

typedef GlotFailure                 = stx.fail.GlotFailure;
typedef GSource                     = eu.ohmrun.glot.GSource;

typedef GAccessCtr                  = eu.ohmrun.glot.expr.GAccess.GAccessCtr;
typedef GAccessSum                  = eu.ohmrun.glot.expr.GAccess.GAccessSum;
typedef GAccess                     = eu.ohmrun.glot.expr.GAccess;

typedef GExprCtr                    = eu.ohmrun.glot.expr.GExpr.GExprCtr;
typedef GExprSum                    = eu.ohmrun.glot.expr.GExpr.GExprSum;
typedef GExpr                       = eu.ohmrun.glot.expr.GExpr;

typedef GBinopCtr                   = eu.ohmrun.glot.expr.GBinop.GBinopCtr;
typedef GBinopSum                   = eu.ohmrun.glot.expr.GBinop.GBinopSum;
typedef GBinop                      = eu.ohmrun.glot.expr.GBinop;

typedef GCaseCtr                    = eu.ohmrun.glot.expr.GCase.GCaseCtr;
typedef GCaseDef                    = eu.ohmrun.glot.expr.GCase.GCaseDef;
typedef GCase                       = eu.ohmrun.glot.expr.GCase;

typedef GCatchCtr                   = eu.ohmrun.glot.expr.GCatch.GCatchCtr;
typedef GCatchDef                   = eu.ohmrun.glot.expr.GCatch.GCatchDef;
typedef GCatch                      = eu.ohmrun.glot.expr.GCatch;

typedef GComplexTypeCtr             = eu.ohmrun.glot.expr.GComplexType.GComplexTypeCtr;
typedef GComplexTypeSum             = eu.ohmrun.glot.expr.GComplexType.GComplexTypeSum;
typedef GComplexType                = eu.ohmrun.glot.expr.GComplexType;

typedef GConstantCtr                = eu.ohmrun.glot.expr.GConstant.GConstantCtr;
typedef GConstantSum                = eu.ohmrun.glot.expr.GConstant.GConstantSum;
typedef GConstant                   = eu.ohmrun.glot.expr.GConstant;

typedef GEFieldCtr                  = eu.ohmrun.glot.expr.GEField.GEFieldCtr;
typedef GEFieldDef                  = eu.ohmrun.glot.expr.GEField.GEFieldDef;
typedef GEField                     = eu.ohmrun.glot.expr.GEField;

#if (haxe_ver > 4.205)
typedef GEFieldKind                 = eu.ohmrun.glot.expr.GEFieldKind;
#end

typedef GFieldTypeCtr               = eu.ohmrun.glot.expr.GFieldType.GFieldTypeCtr;
typedef GFieldTypeSum               = eu.ohmrun.glot.expr.GFieldType.GFieldTypeSum;
typedef GFieldType                  = eu.ohmrun.glot.expr.GFieldType;

typedef GFunctionCtr                = eu.ohmrun.glot.expr.GFunction.GFunctionCtr;
typedef GFunctionDef                = eu.ohmrun.glot.expr.GFunction.GFunctionDef;
typedef GFunction                   = eu.ohmrun.glot.expr.GFunction;

typedef GFunctionArgCtr             = eu.ohmrun.glot.expr.GFunctionArg.GFunctionArgCtr;
typedef GFunctionArgDef             = eu.ohmrun.glot.expr.GFunctionArg.GFunctionArgDef;
typedef GFunctionArg                = eu.ohmrun.glot.expr.GFunctionArg;

typedef GFunctionKindCtr            = eu.ohmrun.glot.expr.GFunctionKind.GFunctionKindCtr;
typedef GFunctionKindSum            = eu.ohmrun.glot.expr.GFunctionKind.GFunctionKindSum;
typedef GFunctionKind               = eu.ohmrun.glot.expr.GFunctionKind;

typedef GMetadataCtr                = eu.ohmrun.glot.expr.GMetadata.GMetadataCtr;
typedef GMetadataDef                = eu.ohmrun.glot.expr.GMetadata.GMetadataDef;
typedef GMetadata                   = eu.ohmrun.glot.expr.GMetadata;

typedef GMetadataEntryCtr           = eu.ohmrun.glot.expr.GMetadataEntry.GMetadataEntryCtr;
typedef GMetadataEntryDef           = eu.ohmrun.glot.expr.GMetadataEntry.GMetadataEntryDef;
typedef GMetadataEntry              = eu.ohmrun.glot.expr.GMetadataEntry;

typedef GObjectFieldCtr             = eu.ohmrun.glot.expr.GObjectField.GObjectFieldCtr;
typedef GObjectFieldDef             = eu.ohmrun.glot.expr.GObjectField.GObjectFieldDef;
typedef GObjectField                = eu.ohmrun.glot.expr.GObjectField;

typedef GPropAccessCtr              = eu.ohmrun.glot.expr.GPropAccess.GPropAccessCtr;
typedef GPropAccessSum              = eu.ohmrun.glot.expr.GPropAccess.GPropAccessSum;
typedef GPropAccess                 = eu.ohmrun.glot.expr.GPropAccess;

typedef GQuoteStatusCtr             = eu.ohmrun.glot.expr.GQuoteStatus.GQuoteStatusCtr;
typedef GQuoteStatusSum             = eu.ohmrun.glot.expr.GQuoteStatus.GQuoteStatusSum;
typedef GQuoteStatus                = eu.ohmrun.glot.expr.GQuoteStatus;

typedef GStringLiteralKindCtr       = eu.ohmrun.glot.expr.GStringLiteralKind.GStringLiteralKindCtr;
typedef GStringLiteralKindSum       = eu.ohmrun.glot.expr.GStringLiteralKind.GStringLiteralKindSum;
typedef GStringLiteralKind          = eu.ohmrun.glot.expr.GStringLiteralKind;

typedef GTypeDefinitionCtr          = eu.ohmrun.glot.expr.GTypeDefinition.GTypeDefinitionCtr;
typedef GTypeDefinitionDef          = eu.ohmrun.glot.expr.GTypeDefinition.GTypeDefinitionDef;
typedef GTypeDefinition             = eu.ohmrun.glot.expr.GTypeDefinition;

typedef GTypeDefKindCtr             = eu.ohmrun.glot.expr.GTypeDefKind.GTypeDefKindCtr;
typedef GTypeDefKindSum             = eu.ohmrun.glot.expr.GTypeDefKind.GTypeDefKindSum;
typedef GTypeDefKind                = eu.ohmrun.glot.expr.GTypeDefKind;

typedef GTypeParamCtr               = eu.ohmrun.glot.expr.GTypeParam.GTypeParamCtr;
typedef GTypeParamSum               = eu.ohmrun.glot.expr.GTypeParam.GTypeParamSum;
typedef GTypeParam                  = eu.ohmrun.glot.expr.GTypeParam;

typedef GTypeParamDeclCtr           = eu.ohmrun.glot.expr.GTypeParamDecl.GTypeParamDeclCtr;
typedef GTypeParamDeclDef           = eu.ohmrun.glot.expr.GTypeParamDecl.GTypeParamDeclDef;
typedef GTypeParamDecl              = eu.ohmrun.glot.expr.GTypeParamDecl;

typedef GTypePathCtr                = eu.ohmrun.glot.expr.GTypePath.GTypePathCtr;
typedef GTypePathDef                = eu.ohmrun.glot.expr.GTypePath.GTypePathDef;
typedef GTypePath                   = eu.ohmrun.glot.expr.GTypePath;

typedef GUnopCtr                    = eu.ohmrun.glot.expr.GUnop.GUnopCtr;
typedef GUnopSum                    = eu.ohmrun.glot.expr.GUnop.GUnopSum;
typedef GUnop                       = eu.ohmrun.glot.expr.GUnop;

typedef GVarCtr                     = eu.ohmrun.glot.expr.GVar.GVarCtr;
typedef GVarDef                     = eu.ohmrun.glot.expr.GVar.GVarDef;
typedef GVar                        = eu.ohmrun.glot.expr.GVar;

class LiftAccessToGlot{
  #if macro
  static public function fromMacro(self:Access):GAccess{
		return switch(self){
			case APrivate 			: GAPrivate;
			case APublic 				: GAPublic;
			case AStatic  			: GAStatic;
			case AOverride			: GAOverride;
			case ADynamic 			: GADynamic;
			case AInline  			: GAInline;
			case AMacro   			: GAMacro;
			case AFinal   			: GAFinal;
			case AExtern  			: GAExtern;
			case AAbstract			: GAAbstract;
			case AOverload			: GAOverload;
		}
	}
  #end
}
class LiftBinopToGlot{
  #if macro
  static public function fromMacro(self:Binop):GBinop{
    return switch(self){
      case OpAdd             : GOpAdd;
      case OpMult            : GOpMult;
      case OpDiv             : GOpDiv;
      case OpSub             : GOpSub;
      case OpAssign          : GOpAssign;
      case OpEq              : GOpEq;
      case OpNotEq           : GOpNotEq;
      case OpGt              : GOpGt;
      case OpGte             : GOpGte;
      case OpLt              : GOpLt;
      case OpLte             : GOpLte;
      case OpAnd             : GOpAnd;
      case OpOr              : GOpOr;
      case OpXor             : GOpXor;
      case OpBoolAnd         : GOpBoolAnd;
      case OpBoolOr          : GOpBoolOr;
      case OpShl             : GOpShl;
      case OpShr             : GOpShr;
      case OpUShr            : GOpUShr;
      case OpMod             : GOpMod;
      case OpAssignOp(op)    : GOpAssignOp(fromMacro(op,));
      case OpInterval        : GOpInterval;
      case OpArrow           : GOpArrow;
      case OpIn              : GOpIn;
      #if (haxe_ver > 4.205)
      case OpNullCoal        : GOpNullCoal;
      #end
    }
  }
  #end
}
class LiftCaseToGlot{
  #if macro
  static public function fromMacro(self:Case):GCase{
    return @:privateAccess {
      values  : __.option(self.values).map(x -> x.map(y -> y.fromMacro())).defv([]),
      guard   : __.option(self.guard).map(x -> x.fromMacro()).defv(null),
      expr    : __.option(self.expr).map(x -> x.fromMacro()).defv(null) 
    }
  }
  #end
}
class LiftCatchToGlot{
  #if macro
  static public function fromMacro(self:Catch):GCatch{
    return {
      name  : self.name,
      expr  : self.expr.fromMacro(),
      type  : __.option(self.type).map(x -> x.fromMacro()).defv(null)
    };
  }
  #end
}
class LiftComplextTypeToGlot{
  #if macro
  static public function fromMacro(self:ComplexType):GComplexType{
		return @:privateAccess switch(self){
			case TPath( p )             : GTPath( p.fromMacro() );
			case TFunction( args , ret ): GTFunction( args.map(arg -> fromMacro(arg,)) , fromMacro(ret,) );
			case TAnonymous( fields  )  : GTAnonymous( fields.map(x -> x.fromMacro())  );
			case TParent( t )           : GTParent( t.fromMacro() );
			case TExtend( p , fields  ) : GTExtend( p.map(x -> x.fromMacro()) , fields.map(x -> x.fromMacro())  );
			case TOptional( t )         : GTOptional( t.fromMacro() );
			case TNamed( n , t )        : GTNamed( n , t.fromMacro() );
			case TIntersection(tl)      : GTIntersection(tl.map(x -> x.fromMacro()));
		}		
	}
  #end
}

class LiftConstantToGlot{
  #if macro
  static public function fromMacro(self:Constant):GConstant{
    return switch(self){
      #if (haxe_ver > 4.205) 
      case CInt(v, s)        : GCInt(v, s);       
      case CFloat(f, s)      : GCFloat(f, s);     
      #else
      case CInt(v)           : GCInt(v);
      case CFloat(f)         : GCFloat(f);     
      #end       
      case CString(s, kind)  : GCString(s, __.option(kind).map(x -> x.fromMacro()).defv(null)); 
      case CIdent(s)         : GCIdent(s);        
      case CRegexp(r, opt)   : GCRegexp(r, opt);  
    }
  }
  #end
}
class LiftEFieldToGlot{
  #if macro
  static public function fromMacro(self:haxe.macro.Expr.Field):GEField{
    return @:privateAccess {
      name      : self.name,
      kind      : self.kind.fromMacro(),
      access    : __.option(self.access).map(x -> x.map(y -> y.fromMacro())).defv([]),
      meta      : __.option(self.meta).map(x -> x.fromMacro()).defv(null),
      doc       : self.doc
    }
  }
  #end
}
class LiftEFieldKindToGlot{
  #if macro
  static public function fromMacro(self:haxe.macro.Expr.EFieldKind):GEFieldKind{
		return switch(self){
			case Normal 	: GNormal;
			case Safe 		: GSafe;
		}
	}
  #end
}
class LiftExprToGlot{
  #if macro
  static public function fromMacro(self:haxe.macro.Expr):GExpr{
    final f = fromMacro;
    return switch(self.expr){
      case EConst(c)                     : GEConst(c.fromMacro());
      case EArray(e1, e2)                : GEArray(f(e1), f(e2));
      case EBinop(op, e1, e2)            : GEBinop(op.fromMacro(), f(e1), f(e2));
      case EDisplay(e, _)                : fromMacro(e);
      #if (haxe_ver > 4.205) 
      case EField(e, field, kind)        : GEField(f(e), field, __.option(kind).map(x -> x.fromMacro()).defv(null));
      #else
      case EField(e, field)              : GEField(f(e), field);
      #end
      case EParenthesis(e)               : GEParenthesis(f(e));
      case EObjectDecl(fields)           : GEObjectDecl(fields.map(e -> e.fromMacro()));
      case EArrayDecl(values)            : GEArrayDecl(values.map(e -> e.fromMacro()));
      case ECall(e, params)              : GECall(f(e), params.map(e -> e.fromMacro()));
      case ENew(t, params)               : GENew(t.fromMacro(), params.map(e -> e.fromMacro()));
      case EUnop(op, postFix, e)         : GEUnop(op.fromMacro(), postFix, e.fromMacro());
      case EVars(vars)                   : GEVars(vars.map(e -> LiftVarToGlot.fromMacro(e)));
      case EFunction(kind, f)            : GEFunction(__.option(kind).map(x -> x.fromMacro()).defv(null), f.fromMacro());
      case EBlock(exprs)                 : GEBlock(exprs.map(e -> e.fromMacro()));
      case EFor(i, eexpr)                : GEFor(i.fromMacro(), eexpr.fromMacro());
      case EIf(econd, eif, eelse)        : GEIf(econd.fromMacro(), eif.fromMacro(), __.option(eelse).map(x -> x.fromMacro()).defv(null));
      case EWhile(econd, e, normalWhile) : GEWhile(econd.fromMacro(), e.fromMacro(), normalWhile);
      case ESwitch(e, cases, edef)       : GESwitch(e.fromMacro(), cases.map(e -> e.fromMacro()), __.option(edef).map(x -> x.fromMacro()).defv(null));
      case ETry(e, catches)              : GETry(e.fromMacro(), catches.map(e -> e.fromMacro()));
      case EReturn(e)                    : GEReturn(__.option(e).map(x -> x.fromMacro()).defv(null));
      case EBreak                        : GEBreak;
      case EContinue                     : GEContinue;
      case EUntyped(e)                   : GEUntyped(e.fromMacro());
      case EThrow(e)                     : GEThrow(e.fromMacro());
      case ECast(e, t)                   : GECast(e.fromMacro(), __.option(t).map(x -> x.fromMacro()).defv(null));
      case ETernary(econd, eif, eelse)   : GETernary(econd.fromMacro(), eif.fromMacro(), eelse.fromMacro());
      case ECheckType(e, t)              : GECheckType(e.fromMacro(), t.fromMacro());
      case EMeta(s, e)                   : GEMeta(s.fromMacro(), e.fromMacro());
      case EIs(e, t)                     : GEIs(e.fromMacro(), t.fromMacro());
      case null                           : null;
    }
  }
  #end
}
class LiftFieldTypeToGlot{
  #if macro
  static public function fromMacro(self:FieldType):GFieldType{
    return switch(self){
      case FVar( t  , e)            :  GFVar(
        __.option(t).map(ct -> ct.fromMacro()).defv(null)  , 
        __.option(e).map(e -> e.fromMacro()).defv(null))
      ;
      case FFun( f  )               :  GFFun( LiftFunctionToGlot.fromMacro(f)  );
      case FProp( get , set , t, e) :  GFProp( 
        GPropAccess.fromString(get), 
        GPropAccess.fromString(set), 
        __.option(t).map(x -> x.fromMacro()).defv(null) , 
        __.option(e).map(x -> x.fromMacro()).defv(null)
      );
    } 
  }
  #end
}
class LiftFunctionToGlot{
  #if macro
  static public function fromMacro(self:Function):GFunction{
    return @:privateAccess {
      args    : self.args.map(arg -> arg.fromMacro()),
      ret     : __.option(self.ret).map(ret -> ret.fromMacro()).defv(null),
      expr    : __.option(self.expr).map(x -> x.fromMacro()).defv(null),
      params  : __.option(self.params).map(x -> x.map(y -> y.fromMacro())).defv([])
    }
  }
  #end 
}
class LiftFunctionArgToGlot{
  #if macro
  static public function fromMacro(self:FunctionArg):GFunctionArg{
    return {
      name    : self.name,
      type    : __.option(self.type).map(e -> e.fromMacro()).defv(null),
      opt     : self.opt,
      value   : __.option(self.value).map(e -> e.fromMacro()).defv(null),
      meta    : __.option(self.meta).map(x -> x.fromMacro()).defv(null)
    }
  }
  #end
}
class LiftFunctionKindToGlot{
  #if macro
  static public function fromMacro(self:FunctionKind):GFunctionKind{
		return switch(self){
			case FAnonymous           :		GFAnonymous;
			case FNamed(name, inlined):		GFNamed(name, inlined);
			case FArrow               :		GFArrow;
		}
	}
  #end
}
class LiftMetadataToGlot{
  #if macro
  static public function fromMacro(self:Metadata):GMetadata{
    return @:privateAccess self.map(e -> e.fromMacro());
  }
  #end
}
class LiftMetadataEntryToGlot{
  #if macro
  static public function fromMacro(self:MetadataEntry):GMetadataEntry{
    return @:privateAccess {
      name    : self.name,
	    params  : __.option(self.params).map(x -> x.map(y -> y.fromMacro())).defv([])
    };
  }
  #end
}
class LiftObjectFieldToGlot{
  #if macro
  static public function fromMacro(self:ObjectField):GObjectField{
    return {
      field  : self.field,
      expr   : self.expr.fromMacro(),
      quotes : __.option(self.quotes).map(x -> x.fromMacro()).defv(null)
    }
  }
  #end
}
class LiftQuoteStatusToGlot{
  #if macro 
  static public function fromMacro(self:QuoteStatus):GQuoteStatus{
		return switch(self){
			case Unquoted 	: GUnquoted;
			case Quoted 		: GQuoted;
		}
	}
  #end
}
class LiftStringLiteralKindToGlot{
  #if macro
  static public function fromMacro(self:StringLiteralKind):GStringLiteralKind{
		return switch(self){
			case DoubleQuotes: GDoubleQuotes;
			case SingleQuotes: GSingleQuotes;
		}
	}
  #end
}
class LiftTypeDefinitionToGlot{
  #if macro
  static public function fromMacro(self:haxe.macro.Expr.TypeDefinition):GTypeDefinition{
    __.log().debug('gtypedefinition.fromMacro');
    return @:privateAccess {
      name        : self.name,
      pack        : self.pack,
      kind        : self.kind.fromMacro(),
      fields      : self.fields.map(x -> x.fromMacro()),
      params      : __.option(self.params).map(x -> x.map(y -> y.fromMacro())).defv([]),
      meta        : __.option(self.meta).map( x -> x.fromMacro()).defv([]),
      isExtern    : self.isExtern,
      doc         : self.doc
    }
  }
  #end
}
class LiftTypeDefKindToGlot{
  #if macro
  static public function fromMacro(self:TypeDefKind):GTypeDefKind{
    return @:privateAccess switch(self){
      case TDEnum               : GTDEnum;
      case TDStructure          : GTDStructure;
      case TDClass( superClass , interfaces , isInterface , isFinal , isAbstract ) : 
        GTDClass(
          __.option(superClass).map(x -> x.fromMacro()).defv(null),
          __.option(interfaces).map(x -> x.map(y -> y.fromMacro())).defv([]),
          isInterface,
          isFinal,
          isAbstract
        );
      case TDAlias( t ) : GTDAlias(t.fromMacro());
      case TDAbstract( tthis , from , to ) :
          GTDAbstract(
            __.option(tthis).map(x -> x.fromMacro()).defv(null),
            __.option(from).map(x -> x.map(y -> y.fromMacro())).defv([]),
            __.option(to).map(x -> x.map(y -> y.fromMacro())).defv([])
          );
      case TDField(kind, access) : 
          GTDField(kind.fromMacro(),access.map(x -> x.fromMacro()));
    }
  }
  #end
}
class LiftTypeParamToGlot{
  #if macro
  static public function fromMacro(self:TypeParam):GTypeParam{
    return switch(self){
      case TPType( t ) : GTPType(t.fromMacro());
	    case TPExpr( e ) : GTPExpr(e.fromMacro());
    }
  }
  #end
}
class GTypeParamDeclToGlot{
  #if macro
  static public function fromMacro(self:TypeParamDecl):GTypeParamDecl{
    return @:privateAccess {
      name        : self.name,
      constraints : __.option(self.constraints).map(x -> x.map(y -> y.fromMacro())).defv([]),
      params      : __.option(self.params).map(x -> x.map(y -> y.fromMacro())).defv([]),
      meta        : __.option(self.meta).map(x -> x.map(y -> y.fromMacro())).defv([]),
      #if (haxe_ver > 4.205) 
      defaultType : __.option(self.defaultType).map(x -> x.fromMacro()).defv(null)
      #end
    };
  }
  #end
}
class LiftTypePathToGlot{
  #if macro
  static public function fromMacro(self:TypePath):GTypePath{
    return @:privateAccess {
      name    : self.name,
      pack    : __.option(self.pack).map(x -> x).defv([]),
      params  : __.option(self.params).map(x -> x.map(y -> y.fromMacro())).defv([]),
      sub     : self.sub
    }
  } 
  #end
}
class LiftUnopToGLot{
  #if macro
  static public function fromMacro(self:Unop):GUnop{
    return switch(self){
      case OpIncrement     : GOpIncrement;
      case OpDecrement     : GOpDecrement;
      case OpNot           : GOpNot;
      case OpNeg           : GOpNeg;
      case OpNegBits       : GOpNegBits;
      case OpSpread        : GOpSpread;
    }
  }
  #end
}
class LiftVarToGlot{
  #if macro
  static public function fromMacro(self:Var):GVar{
		return {
			name 				: self.name,
			type 				: __.option(self.type).map(x -> x.fromMacro()).defv(null),
			expr 				: __.option(self.expr).map(x -> x.fromMacro()).defv(null),
			isFinal 		: self.isFinal,
			isStatic 		: self.isStatic,
			meta 				: __.option(self.meta).map(x -> x.fromMacro()).defv(null)
		}		
	}
  #end
}