package  {
	
	import flash.display.*;
	import flash.events.*;
	
	
	public class FibApp extends MovieClip {
		//constants for golden ratio and golden angle
		private const ratio:Number = 1.618025751; //golden ratio
		private const angle:Number = ratio * 360; //golden angle
		//data memebers
		public var cell:Cell;
		public var rotate:Number;
		public var radius:Number;
		public var radiusGrowth:Number;
		
		public function FibApp() {
			// constructor code
			rotate = 0;
			radius = 50;
			radiusGrowth = 1.0005;
			
			addEventListener(Event.ENTER_FRAME, addCell);
		}
		public function addCell(event:Event){
			//task 1: Compute the new rotation angle using the golden angle.
			rotate = (rotate + angle) % 360;
			//task 2: compute the new radius using the growth factor
			radius *= radiusGrowth;
			//task 3: create a new cell
			cell = new Cell(radius, rotate);
			cell.x = cell.mX;
			cell.y = cell.mY;
			//task 4: place the cell on the stage and set its x and y position
			addChild(cell);
		}
	}
	
}
