//
//  ViewController.m
//  Calculator
//
//  Created by user on 2016. 8. 24..
//  Copyright © 2016년 Lotte, Inc. All rights reserved.
//

#import "ViewController.h"
#import "Calculator.h"
enum opr{plus, minus, multiply, divide, none};
typedef enum opr Operator;
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *myLabel;

@end

@implementation ViewController
{
    int currentValue;
    Operator currentOpr;
    Calculator *calc;
}
-(IBAction)buttonClicked:(id)sender{
    UIButton *btn = (UIButton *)sender;
    int value = (int)btn.tag;
    
    
    if(currentOpr==none){
        currentValue = currentValue * 10 + value;
    }
    else{
        currentValue = value;
    }
    self.myLabel.text = [NSString stringWithFormat:@"%d",currentValue];
    
}
- (IBAction)clickOpr:(id)sender {
    
    UIButton *btn = (UIButton *)sender;
    int tagNum = (int)btn.tag;
    
    switch (tagNum) {
        case 1:
            currentOpr = plus;
            break;
        case 2:
            currentOpr = minus;
            break;
        case 3:
            currentOpr = multiply;
            break;
        case 4:
            currentOpr = divide;
            break;
            
        default:
            break;
    }

    [calc setAccumalator: currentValue];
}

- (IBAction)clickEqual:(id)sender {

    switch (currentOpr) {
        case plus:
            [calc add: currentValue];
            currentValue = [calc accumalator];
            //self.myLabel.text = [NSString stringWithFormat:@"%d",currentValue];
            break;
        case minus:
            [calc subtract: currentValue];
            currentValue = [calc accumalator];
            //self.myLabel.text = [NSString stringWithFormat:@"%d",currentValue];
            break;
        case multiply:
            [calc multiply: currentValue];
            currentValue = [calc accumalator];
            //self.myLabel.text = [NSString stringWithFormat:@"%d",currentValue];
            break;
        case divide:
            [calc divide: currentValue];
            currentValue = [calc accumalator];
            //self.myLabel.text = [NSString stringWithFormat:@"%d",currentValue];
            break;
            
            
        default:
            break;
    }
    self.myLabel.text = [NSString stringWithFormat:@"%d",currentValue];

}
- (IBAction)unwind:(UIStoryboardSegue *)sender{
    
}
- (IBAction)clear:(id)sender {
        self.myLabel.text =@"0";
        currentValue = 0;
}
- (void)viewDidLoad {
    [super viewDidLoad];

    
    calc = [[Calculator alloc]init];
    currentOpr = none;
    currentValue = 0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
