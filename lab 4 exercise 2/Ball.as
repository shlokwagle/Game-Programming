package  {
	
	import flash.display.*;
	import flash.events.*;
	
	public class Ball extends MovieClip {
		public var mX:Number;
		public var mY:Number;
		public var tttVelocity:Number;
		
		public function Ball(ttt:Number) {
			// constructor code
			mX = 200;
			mY = 200;
			tttVelocity = ttt;
		}
		
		public function moveBall(targetX:Number, targetY:Number){
			var dx:Number = targetX - mX;
			var dy:Number = targetY - mY;
			
			mX += dx / tttVelocity;	
			mY += dy / tttVelocity;
		}

	}
	
}
