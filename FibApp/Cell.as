package  {
	
	import flash.display.*;
	import flash.events.*;
	
	
	public class Cell extends MovieClip {
		//Data members
		public var mX:Number;
		public var mY:Number;
		
		public function Cell(radius:Number, rotate:Number) {
			//task 1 compute the mX position
			mX = Math.cos(rotate) * radius + 300;
			//task 2 compute the mY position
			mY = Math.sin(rotate) * radius + 300;
		}
	}
	
}
