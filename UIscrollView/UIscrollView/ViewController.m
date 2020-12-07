//
//  ViewController.m
//  UIscrollView
//
//  Created by 刘长卿 on 2020/12/7.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic,strong) UIImageView *tea;
@property (nonatomic,strong) UITextField *t1;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIScrollView *scroll = [[UIScrollView alloc] init];
    scroll.frame = CGRectMake(39, 120, 300, 300);
    [self.view addSubview:scroll];
    scroll.contentSize = CGSizeMake(400, 400);
    UIImageView *imgview = [[UIImageView alloc] init];
    imgview.image = [UIImage imageNamed:@"tea"];
    imgview.frame = CGRectMake(0, 0, 300, 300);
    _tea =imgview;
    [scroll addSubview:imgview];
    scroll.contentOffset = CGPointMake(400, 100);
    scroll.delegate = self;
    scroll.minimumZoomScale = 1.0;
    scroll.maximumZoomScale = 4.0;
    scroll.zoomScale = 1;
    scroll.showsVerticalScrollIndicator = NO;
    scroll.showsHorizontalScrollIndicator = NO;
    UILabel *t1 = [[UILabel alloc] init];
    t1.frame = CGRectMake(107, 350, 300, 500);
    t1.text = @"THE BOX";
    t1.font = [UIFont systemFontOfSize:40];
    [self.view addSubview:t1];
    
}
- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
    return  _tea;}

@end
