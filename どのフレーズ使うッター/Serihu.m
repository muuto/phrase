//
//  Serihu.m
//  どのフレーズ使うッター
//
//  Created by 森川夢佑斗 on 2014/07/13.
//  Copyright (c) 2014年 森川夢佑斗. All rights reserved.
//

#import "Serihu.h"

@implementation Serihu
- (IBAction)Play
{
    SystemSoundID soundID;
    NSURL* soundURL = [[NSBundle mainBundle] URLForResource:@"何をするだー"
                                              withExtension:@"m4a"];
    // AudioServicesCreateSystemSoundID ((CFURLRef)soundURL, &soundID); /*こちらでは動きはするもののエラーが出ます下の行を使用*/
    AudioServicesCreateSystemSoundID ((__bridge CFURLRef)soundURL, &soundID); /*ご指摘ありがとうございました m(__)m */
    AudioServicesPlaySystemSound (soundID);
}
@end
