# Movement

Move the ship around the screen.

Assume the ship accelerates at 10px/s^2.

Assume the ship's max speed is 50px/s.

Remember in space, if you rotate without firing the engines, your trajectory
will not change.

## Examples

Rotating does not affect trajectory

[![](http://zippy.gfycat.com/SoupyAfraidKingfisher.gif)](http://gfycat.com/SoupyAfraidKingfisher)

Trajectory is affected by acceleration

[![](http://fat.gfycat.com/ThoughtfulMagnificentCowrie.gif)](http://gfycat.com/ThoughtfulMagnificentCowrie)

## Hints

1. Use vectors (angle and magnitude)
  * Use [`Gosu.offset_x`](https://www.libgosu.org/rdoc/Gosu.html#offset_x-class_method) and [`Gosu.offset_y`](https://www.libgosu.org/rdoc/Gosu.html#offset_y-class_method) to split a vector into components
  * Use [`Gosu.angle`](https://www.libgosu.org/rdoc/Gosu.html#angle-class_method) and [`Gosu.distance`](https://www.libgosu.org/rdoc/Gosu.html#distance-class_method) to turn a point into a vector relative to (0, 0)
