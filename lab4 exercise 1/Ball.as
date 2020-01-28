package  {
	
	import flash.display.*;
	import flash.events.*;
	
	public class Ball extends MovieClip {
		public var mX:Number;
		public var mY:Number;
		public var endZone:Number;
		public var startZone:Number;
		public var tttVelocity:Number;
		
		public function Ball() {
			// constructor code
			endZone = 600;
			startZone = -200;
			mX = startZone;
			mY = 200;
			tttVelocity = 30;
		}
		
		public function moveBall(targetX:Number, targetY:Number){
			var dx:Number = targetX - mX;
			mX += dx / tttVelocity;
			
			if(mX > endZone - 100){
				mX = startZone;
			}
		}

	}
	
}
