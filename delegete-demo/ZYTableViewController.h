//
//  ZYTableViewController.h
//  delegete-demo
//
//  Created by 周亚-Sun on 2017/2/26.
//  Copyright © 2017年 zhouya. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol passValue <NSObject>

-(void)passValue:(NSString *)passString;

@end


@interface ZYTableViewController : UITableViewController

@property(assign,nonatomic)id<passValue>delegate;

@end
