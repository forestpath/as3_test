package
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Spritemap;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;

	public class MyEntity extends Entity
	{
		[Embed(source = 'img/spritesheet.png')]
		private const ORBGUY:Class;

		public var sprOrbguy:Spritemap = new Spritemap(ORBGUY, 200, 200);
		
		public var v_sp = 0;
		public var grav = 0.1;

		public function MyEntity()
		{
			sprOrbguy.add("backward", [0, 1, 2, 3, 4, 5, 6, 7, 8, 9], 20, true);
			sprOrbguy.add("forward", [9, 8, 7, 6, 5, 4, 3, 2, 1, 0], 20, true);
			sprOrbguy.add("still", [0], 20, true);
			graphic = sprOrbguy;
			setHitbox(185, 185);
			collidable = true;
			y = 100;
			x = 200;
			
		}
		
		override public function update():void
		{
			if (Input.check(Key.LEFT)) {
				x -= 5; 
				sprOrbguy.play("forward");
			} else if (Input.check(Key.RIGHT)) {
				x += 5;
				sprOrbguy.play("backward");
			} else {
				sprOrbguy.play("still");
			}
			//v_sp = v_sp + grav;
			y = y + v_sp;
		}
	}
}
