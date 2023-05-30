package eu.ohmrun.glot;

import eu.ohmrun.glot.test.*;

import eu.ohmrun.Glot;
using stx.Nano;
using stx.Test;
using stx.Log;

class Test{
  static public function main(){
    __.test().run(
      [
        new GlotTest(),
        new GlotOmTest(),
      ],[]
    );
  }
}
class GlotTest extends TestCase{

}
