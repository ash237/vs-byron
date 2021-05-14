package;

import flixel.FlxSprite;

class HealthIcon extends FlxSprite
{
	/**
	 * Used for FreeplayState! If you use it elsewhere, prob gonna annoying
	 */
	public var sprTracker:FlxSprite;

	public function new(char:String = 'bf', isPlayer:Bool = false)
	{
		super();
		
		loadGraphic(Paths.image('iconGrid'), true, 150, 150);

		antialiasing = true;
		animation.add('bf', [0, 1], 0, false, isPlayer);
		animation.add('bf-car', [0, 1], 0, false, isPlayer);
		animation.add('bf-christmas', [0, 1], 0, false, isPlayer);
		animation.add('bf-pixel', [0, 1], 0, false, isPlayer);
		animation.add('spooky', [3, 4], 0, false, isPlayer);
		animation.add('pico', [3, 4], 0, false, isPlayer);
		animation.add('mom', [3, 4], 0, false, isPlayer);
		animation.add('mom-car', [3, 4], 0, false, isPlayer);
		animation.add('tankman', [3, 4], 0, false, isPlayer);
		animation.add('face', [6, 6], 0, false, isPlayer);
		animation.add('dad', [3, 4], 0, false, isPlayer);
		animation.add('senpai', [3, 3], 0, false, isPlayer);
		animation.add('senpai-angry', [4, 4], 0, false, isPlayer);
		animation.add('spirit', [6, 6], 0, false, isPlayer);
		animation.add('bf-old', [0, 1], 0, false, isPlayer);
		animation.add('gf', [2], 0, false, isPlayer);
		animation.add('gf-christmas', [2], 0, false, isPlayer);
		animation.add('gf-pixel', [2], 0, false, isPlayer);
		animation.add('parents-christmas', [3, 4], 0, false, isPlayer);
		animation.add('monster', [3, 4], 0, false, isPlayer);
		animation.add('monster-christmas', [3, 4], 0, false, isPlayer);
		animation.add('byron', [3, 4], 0, false, isPlayer);
		animation.add('byronMad', [5, 6], 0, false, isPlayer);
		animation.play(char);

		switch(char)
		{
			case 'bf-pixel' | 'senpai' | 'senpai-angry' | 'spirit' | 'gf-pixel':
				antialiasing = false;
		}

		scrollFactor.set();
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (sprTracker != null)
			setPosition(sprTracker.x + sprTracker.width + 10, sprTracker.y - 30);
	}
}
