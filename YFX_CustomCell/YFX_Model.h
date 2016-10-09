//
//  YFX_Model.h
//  YFX_CustomCell
//
//  Created by fangxue on 2016/10/9.
//  Copyright © 2016年 fangxue. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface YFX_Model : NSObject

// 字典模型转换
+ (instancetype)modelWithDict:(NSDictionary *)dict;
/** 昵称 */
@property (nonatomic,copy) NSString * nickName;
/** 等级 */
@property (nonatomic,copy) NSString * graide;
/** 内容 */
@property (nonatomic,copy) NSString * content;
/** 高度，用来存放计算后的cell高度 */
@property (nonatomic,assign) CGFloat cellHeight;

@end
