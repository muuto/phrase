//
//  SuportViewController.h
//  どのフレーズ使うッター
//
//  Created by 森川夢佑斗 on 2014/07/06.
//  Copyright (c) 2014年 森川夢佑斗. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>



@interface SuportViewController : UIViewController
{CFURLRef soundURL;
    SystemSoundID soundID;
    
    
}

- (IBAction)play; //playというアクションをIB上で行う





@end
