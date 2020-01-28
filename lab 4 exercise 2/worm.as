package  {
	
	import flash.display.*;
	import flash.events.*;
	
	public class worm extends MovieClip {
		var ballList = new Array();
		public function worm() {
			
			
			for(var i:int = 0; i < 30; i++){
				var ball:Ball = new Ball(i + 1);
				ball.x = ball.mX;
				ball.y = ball.mY;
				addChild(ball);
				ballList.push(ball);
			}
			
			addEventListener(Event.ENTER_FRAME, updateGame);
			
		}
		public function updateGame(event:Event){
			for(var i:Number = 0; i < ballList.length; i++){
				ballList[i].moveBall(mouseX, mouseY);
				ballList[i].x = ballList[i].mX;
				ballList[i].y = ballList[i].mY;
			}
		}

	}
	
}
