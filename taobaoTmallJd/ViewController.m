//
//  ViewController.m
//  taobaoTmallJd
//
//  Created by quy21 on 2019/2/21.
//  Copyright © 2019 quy21. All rights reserved.
//

#import "ViewController.h"
#import "MallUrlJumpManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)pushToTaobaoAction:(id)sender {
    [MallUrlJumpManager jumpTaobaoProduct:@"578169079162"];
}



- (IBAction)pushToTamllAction:(id)sender {
    [MallUrlJumpManager jumpTmallProduct:@"578169079162"];

}


- (IBAction)pushToJDAction:(id)sender {
    [MallUrlJumpManager jumpJdProduct:@"26181281004"];

}

- (IBAction)pushToTaobaoStoreAction:(id)sender {
    [MallUrlJumpManager jumpTaobaoStore:@"36243719"];

}

- (IBAction)pushToTmallStoreAction:(id)sender {
    [MallUrlJumpManager jumpTmallStore:@"64585238"];
}


- (IBAction)pushToJdStoreAction:(id)sender {
    [MallUrlJumpManager jumpJdStore:@"683881"];
}

@end
