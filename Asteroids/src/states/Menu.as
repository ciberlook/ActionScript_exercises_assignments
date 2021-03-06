package states 
{
	import core.Game;
	import core.SoundManager;
	import core.State;
	import ui.Label;
	import core.Config;
	import core.Key;
	import core.Utils;
	import flash.events.KeyboardEvent;
	
	public class Menu extends State {

		private var _lblAsteroids:Label;
		private var _lblInstructionsTitle:Label;
		private var _lblControls:Label;
		private var _lblFire:Label;
		private var _lblPause:Label;
		
		private var _lblLivesIns:Label;
		private var _lblHighestScoreIns:Label;
		
		private var _lblAnyKeyStart:Label;
		
		public function Menu(fsm:Game, soundManager:SoundManager){
			super(fsm, soundManager);
			_lblAsteroids = new Label("MY ASTEROIDS", 90, Config.getColor("hex", ["color", "white"]), "Ostrich", true);
			_lblAsteroids.x = Utils.getWorldCenter().x - _lblAsteroids.textWidth * 0.5;
			_lblAsteroids.y = 50;
			
			_lblInstructionsTitle = new Label("HERE IS SOME INSTRUCTIONS YOU WILL NEED:", 40,Config.getColor("hex", ["color", "white"]), "Ostrich", true);
			_lblInstructionsTitle.x = Utils.getWorldCenter().x - _lblInstructionsTitle.textWidth * 0.5;
			_lblInstructionsTitle.y = 200;
			
			_lblControls = new Label("CONTROL THE SHIP WITH: W A D", 37, Config.getColor("hex", ["color", "white"]), "Ostrich", true);
			_lblControls.x = Utils.getWorldCenter().x - _lblControls.textWidth * 0.5;
			_lblControls.y = 250;
			
			_lblFire = new Label("FIRE BULLETS USING SPACE", 37, Config.getColor("hex", ["color", "white"]), "Ostrich", true);
			_lblFire.x = Utils.getWorldCenter().x - _lblFire.textWidth * 0.5;
			_lblFire.y = 300;
			
			_lblPause = new Label("PAUSE WITH ESC", 37, Config.getColor("hex", ["color", "white"]), "Ostrich", true);
			_lblPause.x = Utils.getWorldCenter().x - _lblPause.textWidth * 0.5;
			_lblPause.y = 350;
			
			_lblLivesIns = new Label("YOU HAVE "+Config.getNumber("tot_lives", ["entities", "ship"])+" LIVES!", 37, Config.getColor("hex", ["color", "white"]), "Ostrich", true);
			_lblLivesIns.x = Utils.getWorldCenter().x - _lblLivesIns.textWidth * 0.5;
			_lblLivesIns.y = 450;
			
			_lblHighestScoreIns = new Label("HIGHEST SCORE WILL WIN!", 37, Config.getColor("hex", ["color", "white"]), "Ostrich", true);
			_lblHighestScoreIns.x = Utils.getWorldCenter().x - _lblHighestScoreIns.textWidth * 0.5;
			_lblHighestScoreIns.y = 500;
			
			_lblAnyKeyStart = new Label("PRESS ANY KEY TO START", 45, Config.getColor("hex", ["color", "white"]), "Ostrich", true);
			_lblAnyKeyStart.x = Utils.getWorldCenter().x - _lblAnyKeyStart.textWidth * 0.5;
			_lblAnyKeyStart.y = Config.getNumber("height", ["world"])- _lblAnyKeyStart.textHeight - 50;
			
			
			addChild(_lblAsteroids);
			addChild(_lblInstructionsTitle);
			addChild(_lblControls);
			addChild(_lblFire);
			addChild(_lblPause);
			addChild(_lblLivesIns);
			addChild(_lblHighestScoreIns);
			addChild(_lblAnyKeyStart);
			
			Key.addEventListener(KeyboardEvent.KEY_DOWN, onKeyDown, false, 0, true);
		}
		
		private function onKeyDown(e:KeyboardEvent):void{
			_fsm.changeState(Game.GAME_STATE_PLAY);
		}
		
		override public function destroy():void{
			removeChild(_lblAsteroids);
			_lblAsteroids = null;
			removeChild(_lblInstructionsTitle);
			_lblInstructionsTitle = null;
			removeChild(_lblControls);
			_lblControls = null;
			removeChild(_lblFire);
			_lblFire = null;
			removeChild(_lblPause);
			_lblPause = null;
			removeChild(_lblLivesIns);
			_lblLivesIns = null;
			removeChild(_lblHighestScoreIns);
			_lblHighestScoreIns = null;
			removeChild(_lblAnyKeyStart);
			_lblAnyKeyStart = null;
			
			Key.removeEventListener(KeyboardEvent.KEY_DOWN, onKeyDown);
		}
		
	}

}