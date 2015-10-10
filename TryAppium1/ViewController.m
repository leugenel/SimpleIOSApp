//
//  ViewController.m
//  TryAppium1
//
//  Created by Eugene Leibovich on 9/18/15.
//  Copyright © 2015 Eugene Leibovich. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UILabel *messageLabel;
@property (nonatomic, weak) IBOutlet UITextField *inputField;


@end

@implementation ViewController

-(IBAction)Enter {
    NSString *yourName = self.inputField.text;
    NSString *myName = @"Eugene";
    NSString *message;
    
    if ([yourName length] == 0) {
        yourName = @"World";
    }
    
    if ([yourName isEqualToString:myName]) {
        message = [NSString stringWithFormat:@"Hello %@ We have the same name", yourName];
    }else {
        message = [NSString stringWithFormat:@"Hello %@", yourName  ];
    }
    
    self.messageLabel.text = message;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
