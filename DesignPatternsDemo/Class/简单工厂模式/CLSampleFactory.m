//
//  CLSampleFactory.m
//  DesignPatternsDemo
//
//  Created by Apple on 2017/4/20.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLSampleFactory.h"
#import "CLCalculateFactory.h"

@interface CLSampleFactory ()<UITextFieldDelegate>

@property (nonatomic, strong)UITextField *textFieldA;
@property (nonatomic, strong)UITextField *textFieldB;
@property (nonatomic, strong)UITextField *textFiledC;
@property (nonatomic, strong)UIButton *doneBtn;

@end

@implementation CLSampleFactory

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"请输入数字和运算符";
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.textFieldA];
    [self.view addSubview:self.textFieldB];
    [self.view addSubview:self.textFiledC];
    [self.view addSubview:self.doneBtn];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)caclulate{
    id<CLCalculate> cal;
    cal = [CLCalculateFactory creatCalculate:self.textFieldB.text];
    if (cal) {
        cal.numberA = [self.textFieldA.text floatValue];
        cal.numberB = [self.textFiledC.text floatValue];
        CGFloat result =  [cal calculate];
        [self.doneBtn setTitle:[@(result) stringValue] forState:UIControlStateNormal];
    }else{
        NSLog(@"输入非法运算符");
    }
}

- (UITextField *)textFieldA{
    if (!_textFieldA) {
        _textFieldA = [[UITextField alloc]initWithFrame:CGRectMake(16,100,60,44)];
        _textFieldA.returnKeyType = UIReturnKeyDone;
        _textFieldA.delegate = self;
        _textFieldA.text = @"";
        _textFieldA.borderStyle = UITextBorderStyleRoundedRect;
    }
    return _textFieldA;
}
- (UITextField *)textFieldB{
    if (!_textFieldB) {
        _textFieldB = [[UITextField alloc]initWithFrame:CGRectMake(16 + 76,100,60,44)];
        _textFieldB.returnKeyType = UIReturnKeyDone;
        _textFieldB.delegate = self;
        _textFieldB.text = @"";
        _textFieldB.borderStyle = UITextBorderStyleRoundedRect;
    }
    return _textFieldB;
}

- (UITextField *)textFiledC{
    if (!_textFiledC) {
        _textFiledC = [[UITextField alloc]initWithFrame:CGRectMake(16 + 76*2,100,60,44)];
        _textFiledC.returnKeyType = UIReturnKeyDone;
        _textFiledC.delegate = self;
        _textFiledC.text = @"";
        _textFiledC.borderStyle = UITextBorderStyleRoundedRect;
    }
    return _textFiledC;
}

- (UIButton *)doneBtn{
    if (!_doneBtn) {
        _doneBtn = [[UIButton alloc]initWithFrame:CGRectMake(16,160,180, 44)];
        _doneBtn.backgroundColor = [UIColor lightGrayColor];
        [_doneBtn setTitle:@"运算" forState:UIControlStateNormal];
        [_doneBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_doneBtn addTarget:self action:@selector(caclulate) forControlEvents:UIControlEventTouchUpInside];
    }
    return _doneBtn;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

@end
