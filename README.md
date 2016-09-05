##UIScorllView
-  UIScrollView是一个能够滚动的视图控件，可以用来展示大量的内容，并且可以通过滚动查看所有的内容
- 设置UIScrollView的contentoffSize属性，告诉UIScrollView的所有内容的尺寸，也就是告诉它的滚动范围(可以滚多远，滚到哪里是尽头)
- 如果UIScrollView无法滚动，可能是一下原因
- 没有设置contentSize
- scrollEnabled =No;
- UIScorllView的常见属性
- CGPoint contentoffset 这个属性用来表示UIScrollView滚动的位置（就是内容左上角与UIScrollView左上角的间距值）
- CGSize contentSize 这个属性用来表示UIScrollView内容的尺寸，滚动范围（能滚多远）