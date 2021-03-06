package 
{
	public class Config {
		public static const BLACK:uint = 0x000000;
		public static const WHITE:uint = 0xFFFFFF;
		
		public static const WORLD_WIDTH:Number = 1280;
		public static const WORLD_HEIGHT:Number = 720;
		public static const WORLD_CENTER_X:Number = WORLD_WIDTH * 0.5;
		public static const WORLD_CENTER_Y:Number = WORLD_HEIGHT * 0.5;
		
		public static const PADDLE_HEIGHT:Number = 150;
		public static const PADDLE_WIDTH:Number = 30;
		public static const PADDLE_WALL_OFFSET:Number = 50;
		
		public static const PADDLE_FRICTION:Number = 0.93;
		
		public static const GAME_WINNING_POINTS:Number = 3;
		
		public static const GAME_STATE_MENU:Number = 0;
		public static const GAME_STATE_PLAY:Number = 1;
		public static const GAME_STATE_GAMEOVER:Number = 2;
		public static const GAME_STATE_INSTRUCTIONS:Number = 3;
		
		public static const BALL_SIZE:Number = 20;
		public static const BALL_MAX_SPEED:Number = 20;
		public static const BALL_MIN_SPEED:Number = 9;
	
		public static const SOUND_VERY_LOW:Number = 0.1;
		public static const SOUND_LOW:Number = 0.25;
		public static const SOUND_MED:Number = 0.5;
		public static const SOUND_HIGH:Number = 0.7;
		public static const SOUND_HIGHEST:Number = 1;
	}

} 