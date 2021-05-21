//
//  Task2ViewController.m
//  Task3
//
//  Created by jackzz on 2021/5/20.
//  Copyright © 2021 jackzz. All rights reserved.
//

#import "Task2ViewController.h"
#import "Task2.h"

@interface Task2ViewController ()

@property (nonatomic, strong) IBOutlet UITextField *textField;
@property (nonatomic, strong) IBOutlet UILabel *label;

@end

@interface Task2ViewController ()

@end

@implementation Task2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _label = [[UILabel alloc]init];
    
    self.title = @"Operater Calculater";
    UIButton * button = [UIButton buttonWithType:
    UIButtonTypeRoundedRect];
    [button setBackgroundColor: [UIColor lightGrayColor]];
    button.frame = CGRectMake(80, 200, 240, 30);
    [button setTitle:@"Run"
            forState:UIControlStateNormal];
    [button addTarget:self
            action:@selector(runTask2)
                forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    _textField = [[UITextField  alloc] initWithFrame:
      CGRectMake(80, 100, 240, 30)];

      // This sets the border style of the text field
    _textField.borderStyle = UITextBorderStyleRoundedRect;
    _textField.contentVerticalAlignment =
      UIControlContentVerticalAlignmentCenter;
    [_textField setFont:[UIFont boldSystemFontOfSize:12]];

      //Placeholder text is displayed when no text is typed
    _textField.placeholder = @"Simple Text field";

      //It set when the left prefixLabel to be displayed
    _textField.leftViewMode = UITextFieldViewModeAlways;

      // Adds the textField to the view.
    [self.view addSubview:_textField];

}

-(void)runTask2{
    
    NSString *str = [Task2 calculatePrefixExpression:_textField.text];
    
    _label.text  = str;
    // 设置文本视图的视图大小
    [_label sizeToFit];
    // 设置文本视图的位置为中央
    _label.center = CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2);
    [self.view addSubview: _label];
}





/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
