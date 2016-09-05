//
//  ViewController.m
//  UI-04-UIScrollView
//
//  Created by liuxingchen on 16/9/5.
//  Copyright © 2016年 liuxingchen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"minion"]];
    [self.scrollView addSubview:imageView];
    self.scrollView.contentSize = imageView.image.size;
}
- (IBAction)left:(id)sender {
    [UIView animateWithDuration:1.5 animations:^{
      self.scrollView.contentOffset = CGPointMake(0, self.scrollView.contentOffset.y);
    }];
    
}
- (IBAction)top:(id)sender {
    [UIView animateWithDuration:1.5 animations:^{
      self.scrollView.contentOffset = CGPointMake(self.scrollView.contentOffset.x, 0);
    }];
    
}
- (IBAction)bottom:(id)sender {
    [UIView animateWithDuration:1.5 animations:^{
        //用内容也就是imageView的高度 - scrollView.frame.size的高度
        CGFloat offsetY = self.scrollView.contentSize.height - self.scrollView.frame.size.height;
        self.scrollView.contentOffset = CGPointMake(self.scrollView.contentOffset.x, offsetY);
    }];
    
}
- (IBAction)right:(id)sender {
    [UIView animateWithDuration:1.5 animations:^{
        //用内容也就是imageView的宽度 - scrollView.frame.size的宽度
        CGFloat offsetX = self.scrollView.contentSize.width - self.scrollView.frame.size.width;
        self.scrollView.contentOffset = CGPointMake(offsetX, self.scrollView.contentOffset.y);
    }];
    
}
@end
