//
//  ViewController.m
//  UI test
//
//  Created by 刘长卿 on 2020/12/1.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *passwordtestfield;
@property (weak, nonatomic) IBOutlet UIButton *login;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.passwordtestfield.secureTextEntry = YES;
    [self.login addTarget:self action:@selector(jump) forControlEvents:UIControlEventTouchUpInside];
}
-(void)jump{
    NSLog(@"你点你🐎呢");
}

@end
