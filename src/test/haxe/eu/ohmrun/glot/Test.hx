package eu.ohmrun.glot;

import eu.ohmrun.Glot;
using stx.Nano;
using stx.Test;
using stx.Log;

class Test{
  static public function main(){
    __.test().run(
      [
        new GlotTest()
      ],[]
    );
  }
}
class GlotTest extends TestCase{

}