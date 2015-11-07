# Movement

Move the ship around the screen by using 3 keys:

1. Left Arrow - rotate counter clockwise
2. Right Arrow - rotate clockwise
3. Up Arrow - Accelerate in the direction the ship is pointing

Assumptions:

1. The ship accelerates at 10px/s^2
2. The ship's max speed is 50px/s

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
  * Use [`Gosu.angle`](https://www.libgosu.org/rdoc/Gosu.html#angle-class_method) and [`Gosu.distance`](https://www.libgosu.org/rdoc/Gosu.html#distance-class_method) to turn a point into a vector
  * Keep all vectors relative to origin (0, 0)
2. The ship should have a velocity vector that is independent of its heading (where it's pointing)
3. Accelrating will change the velocity vector
4. A non-zero velocity vector will change the ship's position
5. Calculate acceleration in terms of change in velocity per update (remember 60 updates per second)
