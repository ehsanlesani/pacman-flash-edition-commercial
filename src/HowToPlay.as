/**
 * HowToPlay.as
 * 
 * This class manages the "How To Play" screen in the game.
 * It initializes the play button and handles its click event to transition
 * from the tutorial screen to the gameplay scene.
 * 
 * Usage:
 * - Displays a button (GelRight) for starting the game
 * - On click, fades out UI elements and starts the game from frame 2
 * 
 * Author: Ehsan Lesani
 * Date: 2016
 */
package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	public class HowToPlay extends MovieClip {
		
		public static var buttonPlay:GelRight=new GelRight();
		public static var bbuttonPlay:Boolean=false;
		public static var _this:*;

		public function HowToPlay() {
			_this=this;
		}
			
		public static function fl_MouseClickHandler_7(event:MouseEvent):void
		{
			Main.buttonBack.removeEventListener(MouseEvent.CLICK,Main._this.fbuttonBackHowtoPlay);
			HowToPlay.buttonPlay.removeEventListener(MouseEvent.CLICK, HowToPlay.fl_MouseClickHandler_7);

			Main.fadeIn(10,100,function()
			{
				HowToPlay.buttonPlay.visible=false;
				Main.buttonBack.visible=false;
			},null,HowToPlay.buttonPlay,Main.buttonBack);

			_this.gotoAndPlay(2);
		}

	}
}
