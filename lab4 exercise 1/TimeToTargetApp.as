package  {
	
	import flash.display.*;
	import flash.events.*;
	
	public class TimeToTargetApp extends MovieClip {
		private var ball:Ball;

		public function TimeToTargetApp() {
			// create 
			ball = new Ball();
			ball.x = ball.mX;
			ball.y = ball.mY;
			addChild(ball);
			
			addEventListener(Event.ENTER_FRAME, updateGame);
			
		}
		public function updateGame(event:Event){
			ball.moveBall(600, 200);
			ball.x = ball.mX;
		}

	}
	
}
