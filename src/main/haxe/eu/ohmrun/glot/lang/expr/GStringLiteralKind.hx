package eu.ohmrun.glot.lang.expr;

@:using(eu.ohmrun.glot.lang.expr.GStringLiteralKind.GStringLiteralKindLift)
enum GStringLiteralKind {
	GDoubleQuotes;
	GSingleQuotes;
}
class GStringLiteralKindLift{
	static public function to_macro_at(self:GStringLiteralKind,pos:Position):StringLiteralKind{
		return switch(self){
			case GDoubleQuotes: DoubleQuotes;
			case GSingleQuotes: SingleQuotes;
		}
	}
	// static public function spell(self:GStringLiteralKind){
	// 	final e = __.g().expr();
	// 	return e.Path(
	// 		switch(self){
	// 			case GDoubleQuotes : e.Path('eu.ohmrun.glot.lang.expr.GStringLiteralKind.GDoubleQuotes');
	// 			case GSingleQuotes : e.Path('eu.ohmrun.glot.lang.expr.GStringLiteralKind.GSingleQuotes');
	// 		}
	// 	);
	// }
}