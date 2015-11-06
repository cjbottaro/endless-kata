# Draw a ship

Draw a ship in the center of the window.

When you hold the right arrow, the ship should rotate clockwise.

When you hold the left arrow, the ship should rotate counter clockwise.

The ship should have a property for how quickly it rotates.

## Examples

[](http://zippy.gfycat.com/ComfortablePalatableFlyinglemur.gif)

## Hints

1. Start with [`hello_world.rb`](https://github.com/cjbottaro/endless-kata/blob/master/hello_world.rb)
1. Use [`Gosu::Image#draw_rot`](https://www.libgosu.org/rdoc/Gosu/Image.html#draw_rot-instance_method)
1. Use [`assets/ship.png`](https://github.com/cjbottaro/endless-kata/blob/master/assets/ship.png) for the ship image
1. See Gosu's [Constant Summary](https://www.libgosu.org/rdoc/Gosu.html) for keyboard codes
1. Make a class to represent a ship
1. Remember your `#update` method gets called 60 times per second
