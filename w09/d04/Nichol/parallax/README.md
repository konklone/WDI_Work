bl .
# Parallax Scroller

### Commit 1

* Alter the CSS so that the picture of the beach is behind the cats, dogs and goldenrod sections. You are going to have to change it's positioning.

  * [Positioning](https://developer.mozilla.org/en-US/docs/Web/CSS/position)
  * [Z-index](https://developer.mozilla.org/en-US/docs/Web/CSS/z-index)

### Commit 2

* Add a parallax effect by changing the 'top' property of the background div css by a factor of how far the user has scrolled. HINT: we are going to have to use `$(window).scrollTop()` again.
* Add more parallax effects by changing the 'top' property each of the images css by a different factor of how far the user has scrolled. The kittens and puppies should move.
* Have it so that the goldenrod bans are behind the kittens and puppies when they overlap, but the `h1` titles be in front of the kittens and puppies when they overlap.

### Bonus

* Play with different scroll speeds and effects!