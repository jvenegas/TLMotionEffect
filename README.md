TLMotionEffect
====================

This category adds a motion effect to your UIView. This is a similar effect can be seen in the bacground of the Home Screen on iOS 7. 

Feel Free to complete this category with more motion effects. :)

The library has been tested on iOS 7.0+ for ARC environments.

## Set up your Xcode project

* Add into your project the following classes:

  `UIView+TLMotionEffect.h` 
  `UIView+TLMotionEffect.m` 


* Import the category and call the following method

```objc
	#import "UIView+TLMotionEffect.h"
```

```objc
	- (void)addCenterMotionEffectsXYWithOffset:(CGFloat)offset;
```
* Example

```objc
	UIView *myView = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 100.0f, 100.0f)];
    [myView addCenterMotionEffectsXYWithOffset:40];
```
## Test the catergory

You can run the tests in Xcode. Open `TLMotion/TLMotionEffect.xcodeproj`.


## Author

* Javier Venegas https://github.com/jvenegas


## MIT License

Copyright (c) 2013 Javier Venegas

Permission is hereby granted, free of charge, to any
person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the
Software without restriction, including without limitation
the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the
Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice
shall be included in all copies or substantial portions of
the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY
KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS
OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
