package
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Tilemap;
	import net.flashpunk.graphics.Image;


	public class MyTile extends Entity
	{
		[Embed(source = 'img/tile.png')] private const TILE:Class;
		
		public var sprTile:Tilemap = new Tilemap(TILE, 512, 512, 128, 128);

		public function MyTile()
		{
			sprTile.line(0,0,3,0,0);
			graphic = new Image(TILE);
			y = 400;
			x = 200;
			setHitbox(128, 128);
			collidable = true;
		}
	}
}
