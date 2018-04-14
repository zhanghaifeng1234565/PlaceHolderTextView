//
//  ViewController.m
//  PlaceHolderTextView
//
//  Created by iOS on 2018/4/14.
//  Copyright © 2018年 iOS. All rights reserved.
//

#import "ViewController.h"

#import "PHTextView.h"

@interface ViewController ()

@property (nonatomic, strong) PHTextView *textView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.textView = [[PHTextView alloc] initWithFrame:CGRectMake(15, 100, [UIScreen mainScreen].bounds.size.width-30, 100)];
    self.textView.placeholderColor = [UIColor grayColor];
    self.textView.placeholderFont = 15;
    self.textView.placeholder = @"我是打酱油的";
    [self.view addSubview:self.textView];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    paragraphStyle.lineSpacing = 10;
    self.textView.typingAttributes = @{NSFontAttributeName:[UIFont systemFontOfSize:15],NSParagraphStyleAttributeName:paragraphStyle};
    self.textView.layer.borderWidth = 0.5;
    self.textView.layer.borderColor = [UIColor redColor].CGColor;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
