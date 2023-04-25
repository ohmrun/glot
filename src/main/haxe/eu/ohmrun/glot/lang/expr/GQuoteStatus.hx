package eu.ohmrun.glot.lang.expr;

@:using(eu.ohmrun.glot.lang.expr.GQuoteStatus.GQuoteStatusLift)
enum GQuoteStatus {
	GUnquoted;
	GQuoted;
}
class GQuoteStatusLift{
	static public function to_macro_at(self:GQuoteStatus,pos:Position){
		return switch(self){
			case GUnquoted 	: Unquoted;
			case GQuoted 		: Quoted;
		}
	}
}