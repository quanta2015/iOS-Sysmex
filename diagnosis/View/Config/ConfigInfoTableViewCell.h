//
//  ConfigInfoTableViewCell.h
//  diagnosis
//
//  Created by QUANTA on 16/6/14.
//  Copyright © 2016年 sysmex. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ConfigInfoTableViewCell : UITableViewCell {
    UILabel * usernameLable, *ptLabel, *typeLabel, *fieldLabel, *companyLabel;
    UIImageView *userImage;
}

-(void)setData;

@end
