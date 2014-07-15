//
//  SuportViewController.m
//  どのフレーズ使うッター
//
//  Created by 森川夢佑斗 on 2014/07/06.
//  Copyright (c) 2014年 森川夢佑斗. All rights reserved.
//

#import "SuportViewController.h"

@interface SuportViewController ()

@end

@implementation SuportViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)play
{
        //[何をするだー.m4a]というファイルを読み込んで、soundURLを生成
        CFBundleRef mainBundle = CFBundleGetMainBundle();
        soundURL=CFBundleCopyResourceURL(mainBundle,CFSTR("何をするだー"),CFSTR("m4a"),nil);
        //soundURLをもとに、soundIDを生成
        AudioServicesCreateSystemSoundID(soundURL, &soundID);
    
    //AudioServicesPlaySystemSoundでsoundIDが示す音を再生する
    
     AudioServicesPlaySystemSound(soundID);
}


@end
