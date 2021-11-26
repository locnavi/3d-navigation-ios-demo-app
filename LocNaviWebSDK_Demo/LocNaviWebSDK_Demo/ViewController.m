//
//  ViewController.m
//  LocNaviWebSDK_Demo
//
//  Created by zhangty on 2020/7/3.
//  Copyright © 2020 locnavi. All rights reserved.
//

#import "ViewController.h"
#import <LocNaviWebSDK/LocNaviWebSDK.h>

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *tfAppKey;
@property (weak, nonatomic) IBOutlet UITextField *tfMapId;
@property (weak, nonatomic) IBOutlet UITextField *tfUserId;
@property (weak, nonatomic) IBOutlet UITextField *tfPoi;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.tfAppKey.text = [LocNaviMapService sharedInstance].appKey;
    self.tfMapId.text = @"m1tTIWHjsq";
    NSString *userId = [LocNaviMapService sharedInstance].userId;
    if (!userId) {
        NSString *uuid = [UIDevice currentDevice].identifierForVendor.UUIDString;
        userId = [uuid copy];
    }
    self.tfUserId.text = userId;
    self.tfPoi.text = @"3015";
    
    UITapGestureRecognizer *recognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onTap)];
    [self.view addGestureRecognizer:recognizer];
}

//医院列表
- (IBAction)onControlEngine:(UIButton *)btn {
    LocNaviWebViewController *vc = [[LocNaviWebViewController alloc] initWithMapId:NULL];
    vc.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)onShowMap:(UIButton *)btn {
    LocNaviWebViewController *vc = [[LocNaviWebViewController alloc] initWithMapId:self.tfMapId.text];
    vc.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:vc animated:YES completion:nil];
}

- (void)onTap {
    [self.view endEditing:YES];
}


@end
