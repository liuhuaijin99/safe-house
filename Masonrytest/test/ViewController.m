//
//  ViewController.m
//  test
//
//  Created by 刘长卿 on 2020/12/3.
//

#import "ViewController.h"
#import <Masonry/Masonry.h>
#define STATUSBARHEIGHT [[UIApplication sharedApplication] statusBarFrame].size.height


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIView *view1 = [[UIView alloc]init];
    view1.backgroundColor = [UIColor redColor];
    [self.view addSubview:view1];

    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).offset(30+STATUSBARHEIGHT);
        make.right.equalTo(self.view).offset(-30);
        make.left.equalTo(self.view).offset(30);
        
        make.height.mas_equalTo(50);
        
        

    }];
    
    UIView *view2 = [[UIView alloc]init];
    view2.backgroundColor = [UIColor blueColor];
    [self.view addSubview:view2];

    [view2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(view1).multipliedBy(0.5);
        make.right.height.equalTo(view1);
        make.top.equalTo(view1.mas_bottom).offset(20);

    }];
}


@end
