//
//  YFX_Model.m
//  YFX_CustomCell
//
//  Created by fangxue on 2016/10/9.
//  Copyright © 2016年 fangxue. All rights reserved.
//

#import "YFX_Model.h"

@implementation YFX_Model

+ (instancetype)modelWithDict:(NSDictionary *)dict {
    
    YFX_Model * model = [[self alloc] init];
    
    //KVC字典转模型
    [model setValuesForKeysWithDictionary:dict];
    
    return model;
    
}
- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
    
    // 这里对没有定义的键值对不进行任何操作
    
}

@end
