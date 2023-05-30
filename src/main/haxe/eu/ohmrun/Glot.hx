package eu.ohmrun;

import haxe.macro.Expr;

using stx.Nano;

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

#if (hax_ver > 4.205)
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
  static public function from_macro_at(self:Access,pos:Position):GAccess{
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
  #else
}
class LiftBinopToGlot{
  #if macro
  static public function from_macro_at(self:Binop,pos:Position):GBinop{
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
      case OpAssignOp(op)    : GOpAssignOp(from_macro_at(op,pos));
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
  static public function from_macro_at(self:Case,pos:Position):GCase{
    return @:privateAccess {
      values  : __.option(self.values).map(x -> x.map(y -> y.from_macro_at(pos)).prj()).defv([]),
      guard   : __.option(self.guard).map(x -> x.from_macro_at(pos)).defv(null),
      expr    : __.option(self.expr).map(x -> x.from_macro_at(pos)).defv(null) 
    }
  }
  #end
}
class LiftCatchToGlot{
  #if macro
  static public function from_macro_at(self:Catch,pos:Position):GCatch{
    return {
      name  : self.name,
      expr  : self.expr.from_macro_at(pos),
      type  : __.option(self.type).map(x -> x.from_macro_at(pos)).defv(null)
    };
  }
  #end
}
class LiftComplextTypeToGlot{
  #if macro
  static public function from_macro_at(self:ComplexType,pos:Position):GComplexType{
		return @:privateAccess switch(self){
			case TPath( p )             : GTPath( p.from_macro_at(pos) );
			case TFunction( args , ret ): GTFunction( args.map(arg -> from_macro_at(arg,pos)).prj() , from_macro_at(ret,pos) );
			case TAnonymous( fields  )  : GTAnonymous( fields.map(x -> x.from_macro_at(pos)).prj()  );
			case TParent( t )           : GTParent( t.from_macro_at(pos) );
			case TExtend( p , fields  ) : GTExtend( p.map(x -> x.from_macro_at(pos)).prj() , fields.map(x -> x.from_macro_at(pos)).prj()  );
			case TOptional( t )         : GTOptional( t.from_macro_at(pos) );
			case TNamed( n , t )        : GTNamed( n , t.from_macro_at(pos) );
			case TIntersection(tl)      : GTIntersection(tl.map(x -> x.from_macro_at(pos)).prj());
		}		
	}
  #end
}

class LiftConstantToGlot{
  #if macro
  static public function from_macro_at(self:Constant,pos:Position):GConstant{
    return switch(self){
      #if (haxe_ver > 4.205) 
      case CInt(v, s)        : GCInt(v, s);       
      case CFloat(f, s)      : GCFloat(f, s);     
      #else
      case CInt(v)           : GCInt(v);
      case CFloat(f)         : GCFloat(f);     
      #end       
      case CString(s, kind)  : GCString(s, __.option(kind).map(x -> x.from_macro_at(pos)).defv(null)); 
      case CIdent(s)         : GCIdent(s);        
      case CRegexp(r, opt)   : GCRegexp(r, opt);  
    }
  }
  #end
}
class LiftEFieldToGlot{
  #if macro
  static public function from_macro_at(self:EField,pos:Position):GEField{
    return @:privateAccess {
      name      : self.name,
      kind      : self.kind.from_macro_at(pos),
      access    : __.option(self.access).map(x -> x.map(y -> y.from_macro_at(pos)).prj()).defv([]),
      meta      : __.option(self.meta).map(x -> x.from_macro_at(pos)).defv(null),
      doc       : self.doc,
      pos       : pos
    }
  }
  #end
}
class LiftEFieldKindToGlot{
  #if macro
  static public function from_macro_at(self:GEField,pos:Position):Field{
    return @:privateAccess {
      name      : self.name,
      kind      : self.kind.from_macro_at(pos),
      access    : __.option(self.access).map(x -> x.map(y -> y.from_macro_at(pos)).prj()).defv([]),
      meta      : __.option(self.meta).map(x -> x.from_macro_at(pos)).defv(null),
      doc       : self.doc,
      pos       : pos
    }
  }
  #end
}
class LiftExprToGlot{
  #if macro
  static public function from_macro_at(self:haxe.macro.Expr,pos:Position):GExpr{
    return switch(self.def){
      case EConst(c)                     : GEConst(c.from_macro_at(pos));
      case EArray(e1, e2)                : GEArray(f(e1), f(e2));
      case EBinop(op, e1, e2)            : GEBinop(op.from_macro_at(pos), f(e1), f(e2));
      #if (haxe_ver > 4.205) 
      case EField(e, field, kind)        : GEField(f(e), field, __.option(kind).map(x -> x.from_macro_at(pos)).defv(null));
      #else
      case EField(e, field)              : GEField(f(e), field);
      #end
      case EParenthesis(e)               : GEParenthesis(f(e));
      case EObjectDecl(fields)           : GEObjectDecl(fields.map(e -> e.from_macro_at(pos)).prj());
      case EArrayDecl(values)            : GEArrayDecl(values.map(e -> e.from_macro_at(pos)).prj());
      case ECall(e, params)              : GECall(f(e), params.map(e -> e.from_macro_at(pos)).prj());
      case ENew(t, params)               : GENew(t.from_macro_at(pos), params.map(e -> e.from_macro_at(pos)).prj());
      case EUnop(op, postFix, e)         : GEUnop(op.from_macro_at(pos), postFix, e.from_macro_at(pos));
      case EVars(vars)                   : GEVars(vars.map(e -> GVar._.from_macro_at(e,pos)).prj());
      case EFunction(kind, f)            : GEFunction(__.option(kind).map(x -> x.from_macro_at(pos)).defv(null), f.from_macro_at(pos));
      case EBlock(exprs)                 : GEBlock(exprs.map(e -> e.from_macro_at(pos)).prj());
      case EFor(i, eexpr)                : GEFor(i.from_macro_at(pos), eexpr.from_macro_at(pos));
      case EIf(econd, eif, eelse)        : GEIf(econd.from_macro_at(pos), eif.from_macro_at(pos), __.option(eelse).map(x -> x.from_macro_at(pos)).defv(null));
      case EWhile(econd, e, normalWhile) : GEWhile(econd.from_macro_at(pos), e.from_macro_at(pos), normalWhile);
      case ESwitch(e, cases, edef)       : GESwitch(e.from_macro_at(pos), cases.map(e -> e.from_macro_at(pos)).prj(), __.option(edef).map(x -> x.from_macro_at(pos)).defv(null));
      case ETry(e, catches)              : GETry(e.from_macro_at(pos), catches.map(e -> e.from_macro_at(pos)).prj());
      case EReturn(e)                    : GEReturn(__.option(e).map(x -> x.from_macro_at(pos)).defv(null));
      case EBreak                        : GEBreak;
      case EContinue                     : GEContinue;
      case EUntyped(e)                   : GEUntyped(e.from_macro_at(pos));
      case EThrow(e)                     : GEThrow(e.from_macro_at(pos));
      case ECast(e, t)                   : GECast(e.from_macro_at(pos), __.option(t).map(x -> x.from_macro_at(pos)).defv(null));
      case ETernary(econd, eif, eelse)   : GETernary(econd.from_macro_at(pos), eif.from_macro_at(pos), eelse.from_macro_at(pos));
      case ECheckType(e, t)              : GECheckType(e.from_macro_at(pos), t.from_macro_at(pos));
      case EMeta(s, e)                   : GEMeta(s.from_macro_at(pos), e.from_macro_at(pos));
      case EIs(e, t)                     : GEIs(e.from_macro_at(pos), t.to_macro_at(pos));
      case null                           : null;
    }
  }
  #end
}
class LiftFieldTypeToGlot{
  #if macro
  static public function from_macro_at(self:FieldType,pos:Position):GFieldType{
    return switch(self){
      case FVar( t  , e)            :  GFVar(
        __.option(t).map(ct -> ct.from_macro_at(pos)).defv(null)  , 
        __.option(e).map(e -> e.from_macro_at(pos)).defv(null))
      ;
      case FFun( f  )               :  GFFun( GFunction._.from_macro_at(f,pos)  );
      case FProp( get , set , t, e) :  GFProp( 
        get , 
        set, 
        __.option(t).map(x -> x.from_macro_at(pos)).defv(null) , 
        __.option(e).map(x -> x.from_macro_at(pos)).defv(null)
      );
    } 
  }
  #end
}
class LiftFunctionToGlot{
  #if macro
  static public function from_macro_at(self:Function,pos:Position):GFunction{
    return @:privateAccess {
      args    : self.args.map(arg -> arg.from_macro_at(pos)).prj(),
      ret     : __.option(self.ret).map(ret -> ret.from_macro_at(pos)).defv(null),
      expr    : __.option(self.expr).map(x -> x.from_macro_at(pos)).defv(null),
      params  : __.option(self.params).map(x -> x.map(y -> y.from_macro_at(pos)).prj()).defv([])
    }
  }
  #end 
}
class LiftFunctionArgToGlot{
  #if macro
  static public function from_macro_at(self:FunctionArg,pos:Position):GFunctionArg{
    return {
      name    : self.name,
      type    : __.option(self.type).map(e -> e.from_macro_at(pos)).defv(null),
      opt     : self.opt,
      value   : __.option(self.value).map(e -> e.from_macro_at(pos)).defv(null),
      meta    : __.option(self.meta).map(x -> x.from_macro_at(pos)).defv(null)
    }
  }
  #end
}
class LiftFunctionKindToGlot{
  #if macro
  static public function from_macro_at(self:FunctionKind,pos:Position):GFunctionKind{
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
  static public function from_macro_at(self:Metadata,pos:Position):GMetadata{
    return @:privateAccess self.map(e -> e.from_macro_at(pos)).prj();
  }
  #end
}
class LiftMetadataEntryToGlot{
  #if macro
  static public function from_macro_at(self:MetadataEntry,pos:Position):GMetadataEntry{
    return @:privateAccess {
      name    : self.name,
	    params  : __.option(self.params).map(x -> x.map(y -> y.from_macro_at(pos)).prj()).defv([]),
      pos     : pos
    };
  }
  #end
}
class LiftObjectFieldToGlot{
  #if macro
  static public function from_macro_at(self:ObjectField,pos:Position):GObjectField{
    return {
      field  : self.field,
      expr   : self.expr.from_macro_at(pos),
      quotes : __.option(self.quotes).map(x -> x.from_macro_at(pos)).defv(null)
    }
  }
  #end
}
class LiftQuoteStatusToGlot{
  #if macro 
  static public function from_macro_at(self:GQuoteStatus,pos:Position){
		return switch(self){
			case Unquoted 	: GUnquoted;
			case Quoted 		: GQuoted;
		}
	}
  #end
}
class LiftStringLiteralKindToGlot{
  #if macro
  static public function from_macro_at(self:GStringLiteralKind,pos:Position):StringLiteralKind{
		return switch(self){
			case DoubleQuotes: GDoubleQuotes;
			case SingleQuotes: GSingleQuotes;
		}
	}
  #end
}
class LiftTypeDefinitionToGlot{
  #if macro
  static public function from_macro_at(self:haxe.macro.Expr.TypeDefinition,pos:Position):GTypeDefinition{
    __.log().debug('gtypedefinition.from_macro_at');
    return @:privateAccess {
      name        : self.name,
      pack        : self.pack.prj(),
      kind        : self.kind.from_macro_at(pos),
      fields      : self.fields.map(x -> x.from_macro_at(pos)).prj(),
      params      : __.option(self.params).map(x -> x.map(y -> y.from_macro_at(pos)).prj()).defv([]),
      meta        : __.option(self.meta).map( x -> x.from_macro_at(pos)).defv([]),
      isExtern    : self.isExtern,
      doc         : self.doc,
      pos         : pos
    }
  }
  #end
}
class LiftTypeDefKindToGlot{
  #if macro
  static public function from_macro_at(self:GTypeDefKind,pos:Position):TypeDefKind{
    return @:privateAccess switch(self){
      case TDEnum               : GTDEnum;
      case TDStructure          : GTDStructure;
      case TDClass( superClass , interfaces , isInterface , isFinal , isAbstract ) : 
        TDClass(
          __.option(superClass).map(x -> x.from_macro_at(pos)).defv(null),
          __.option(interfaces).map(x -> x.map(y -> y.from_macro_at(pos)).prj()).defv([]),
          isInterface,
          isFinal,
          isAbstract
        );
      case TDAlias( t ) : GTDAlias(t.from_macro_at(pos));
      case TDAbstract( tthis , from , to ) :
          GTDAbstract(
            __.option(tthis).map(x -> x.from_macro_at(pos)).defv(null),
            __.option(from).map(x -> x.map(y -> y.from_macro_at(pos)).prj()).defv([]),
            __.option(to).map(x -> x.map(y -> y.from_macro_at(pos)).prj()).defv([])
          );
      case TDField(kind, access) : 
          GTDField(kind.from_macro_at(pos),access.map(x -> x.from_macro_at(pos)).prj());
    }
  }
  #end
}
class LiftTypeParamToGlot{
  #if macro
  static public function from_macro_at(self:TypeParam,pos:Position):GTypeParam{
    return switch(self){
      case GTPType( t ) : TPType(t.from_macro_at(pos));
	    case GTPExpr( e ) : TPExpr(e.from_macro_at(pos));
    }
  }
  #end
}
class LiftTypePathToGlot{
  #if macro
  static public function from_macro_at(self:TypePath,pos:Position):GTypePath{
    return @:privateAccess {
      name    : self.name,
      pack    : __.option(self.pack).map(x -> x.prj()).defv([]),
      params  : __.option(self.params).map(x -> x.map(y -> y.from_macro_at(pos)).prj()).defv([]),
      sub     : self.sub
    }
  } 
  #end
}
class LiftUnopToGLot{
  #if macro
  static public function from_macro_at(self:Unop,pos:Position):GUnop{
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
  static public function from_macro_at(self:GVar,pos:Position):Var{
		return {
			name 				: self.name,
			type 				: __.option(self.type).map(x -> x.from_macro_at(pos)).defv(null),
			expr 				: __.option(self.expr).map(x -> x.from_macro_at(pos)).defv(null),
			isFinal 		: self.isFinal,
			isStatic 		: self.isStatic,
			meta 				: __.option(self.meta).map(x -> x.from_macro_at(pos)).defv(null)
		}		
	}
  #end
}