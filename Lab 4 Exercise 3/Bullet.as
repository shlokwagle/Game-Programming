package  {
	
	import flash.display.MovieClip;
	
	
	public class Bullet extends MovieClip {
		private var vY:int = -10;
		
		public function Bullet() {
			// constructor code
			this.x = 430;
			this.y = 480;
		}
		
		public function shootBullet(){
			for(var i:int = 0; i < 500; i++){
				this.y -= vY; // moves the bullet upwards 
			}
		}
	}
}
