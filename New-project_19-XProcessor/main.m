//
//  main.m
//  New-project_19-XProcessor
//
//  Created by Geraint on 2018/5/2.
//  Copyright © 2018年 kilolumen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        
        
        // 先创建了一个含有4个条目的NSArray对象，然后从该数组中检索出一个条目，并将其显示在输出窗格中。
        
        // 因为如果指定索引超出了该数组的范围，NSArray对象中用于在对象检索指定索引的方法会抛出一个NSRangeException常数，所以这条语句被放置在异常处理域中。
        
        NSArray *words = @[@"Hello",@"Bonjour",@"Guten Tag",@"Hola"];
        @try {
            int count = 0;  // 索引的常数
            NSLog(@"\nSalutation = %@",words[count]);
        }
        @catch (NSException *exception) {
            NSLog(@"\nEXCEPTION\nName-> %@\nDescription-> %@",[exception name],[exception description]);
        }
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
