/**
 * FruitLevel1.as
 * 
 * This class represents the fruit object used in Level 1 of the game.
 * It defines the visual size of the fruit based on a given width, maintaining
 * the original aspect ratio of 34:39.
 * 
 * Usage:
 * - Instantiate with a desired width (default: 34)
 * - The height is automatically scaled to preserve proportions
 * 
 * Author: Ehsan Lesani
 * Date: 2016
 */
package  {
	
	import flash.display.MovieClip;
	
	public class FruitLevel1 extends MovieClip {
		
		public function FruitLevel1(width:int=34) {
			this.height=width*39/34;
			this.width=width;
		}

	}
}

