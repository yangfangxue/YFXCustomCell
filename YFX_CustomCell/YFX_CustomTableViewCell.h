//
//  YFX_CustomTableViewCell.h
//  YFX_CustomCell
//
//  Created by fangxue on 2016/10/9.
//  Copyright © 2016年 fangxue. All rights reserved.
//

#import <UIKit/UIKit.h>

@class  YFX_Model;

@interface YFX_CustomTableViewCell : UITableViewCell

//模型
@property(nonatomic,strong)YFX_Model *model;

/** 头像 */
@property (nonatomic,weak) UIImageView * iconImageView;
/** 昵称 */
@property (nonatomic,weak) UILabel * nickNameLabel;
/** 内容 */
@property (nonatomic,weak) UILabel * contentLabel;

@end
