//
//  ViewController.m
//  Custom Modal
//
//  Created by clarence on 16/9/2.
//  Copyright © 2016年 clarence. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "FLTransitionManager.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UILabel *name = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 30)];
    name.center = self.view.center;
    name.text = @"小咧咧 Clarencelie";
    name.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:name];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    SecondViewController  *vc = [[SecondViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    
    nav.modalPresentationStyle = UIModalPresentationCustom;
    nav.transitioningDelegate = [FLTransitionManager shareManager];
    
    [self presentViewController:nav animated:YES completion:nil];
}

@end
