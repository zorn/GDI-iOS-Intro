# Animations

^ More than moving a view around the screen.

^ Animations primarily should help us inform the user about what the UX can and is doing.

^ Can also delight. Make a program feel more human with lifelike movement and personality

---

# Two Systems

* Core Animation
* UIView Animations

---
# In some UIViewController...

````swift
// viewDidLoad
self.logoImageView.alpha = 0.0

// viewDidAppear:
UIView.animateWithDuration(2.0, animations: {
    self.logoImageView.alpha = 1.0
})
````

^ prepareAnimation

^ runAnimation

---

# Things to animate

* alpha
* constraint constants
* transforms (scale, 3D)
* background colors

---
# Controlling an Animation

````swift
class func animateWithDuration(_ duration: NSTimeInterval,
                         delay delay: NSTimeInterval,
                       options options: UIViewAnimationOptions,
                    animations animations: () -> Void,
                    completion completion: ((Bool) -> Void)?)
````
---
# UIViewAnimationOptions

````OBJC
enum {
   ...
   UIViewAnimationOptionCurveEaseInOut,
   UIViewAnimationOptionCurveEaseIn,
   UIViewAnimationOptionCurveEaseOut,
   UIViewAnimationOptionCurveLinear,
    ...
};
typedef NSUInteger UIViewAnimationOptions;
````

---
# With "Spring"

````swift
class func animateWithDuration(_ duration: NSTimeInterval,
                         delay delay: NSTimeInterval,
        usingSpringWithDamping dampingRatio: CGFloat,
         initialSpringVelocity velocity: CGFloat,
                       options options: UIViewAnimationOptions,
                    animations animations: () -> Void,
                    completion completion: ((Bool) -> Void)?)
````

---

# Demos