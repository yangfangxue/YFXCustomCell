//
//  YFX_CustomTableViewCell.m
//  YFX_CustomCell
//
//  Created by fangxue on 2016/10/9.
//  Copyright © 2016年 fangxue. All rights reserved.
//

#import "YFX_CustomTableViewCell.h"
#import "YFX_Model.h"

/** 等级图片宽度 */
#define kIconWidth 25
/** 等级图片高度 */
#define kIconHeight 25
/** 屏幕宽      */
#define kWidth [UIScreen mainScreen].bounds.size.width

@implementation YFX_CustomTableViewCell

- (void)setModel:(YFX_Model *)model {
    
    NSString * name = [NSString stringWithFormat:@"rank_%@",model.graide];
    
    self.iconImageView.image = [UIImage imageNamed:name];
    
    
    self.nickNameLabel.text = model.nickName;
    [self.nickNameLabel sizeToFit];
    CGRect frame = self.nickNameLabel.frame;
    frame.size.height = kIconHeight;
    self.nickNameLabel.frame = frame;
    
    //定宽设高
    self.contentLabel.text = model.content;
    CGRect contentFrame = self.nickNameLabel.frame;
    contentFrame.size.width = kWidth - kIconWidth - self.nickNameLabel.frame.size.width - 80;
    self.contentLabel.frame = contentFrame;
    //根据label里的文字来自动适应尺寸 sizeToFit
    [self.contentLabel sizeToFit];
    
    model.cellHeight = CGRectGetMaxY(self.contentLabel.frame) + 10;
    
}
#pragma mark - 布局
- (void)layoutSubviews {
    
    [super layoutSubviews];
    
    // 等级图片
    self.iconImageView.frame = CGRectMake(5, 0, kIconWidth, kIconHeight);
    
    // 昵称
    self.nickNameLabel.frame = CGRectMake(kIconWidth + 10 , 0, self.nickNameLabel.frame.size.width, kIconHeight);
    
    // 内容大小
    self.contentLabel.frame = CGRectMake(CGRectGetMaxX(self.nickNameLabel.frame) + 5, 5, self.contentLabel.frame.size.width, self.contentLabel.frame.size.height);
    
}
#pragma mark - 懒加载
- (UIImageView *)iconImageView{
    if (_iconImageView == nil) {
        UIImageView * iconImageView = [[UIImageView alloc] init];
        [self.contentView addSubview:iconImageView];
        _iconImageView = iconImageView;
    }
    return _iconImageView;
}

- (UILabel *)nickNameLabel{
    if (_nickNameLabel == nil) {
        UILabel * nickNameLabel = [[UILabel alloc] init];
        nickNameLabel.textColor = [UIColor orangeColor];
        nickNameLabel.font = [UIFont systemFontOfSize:13.0];
        [self.contentView addSubview:nickNameLabel];
        _nickNameLabel = nickNameLabel;
    }
    return _nickNameLabel;
}

- (UILabel *)contentLabel{
    if (_contentLabel == nil) {
        UILabel * contentLabel = [[UILabel alloc] init];
        contentLabel.textColor = [UIColor blackColor];
        contentLabel.numberOfLines = 0;
        contentLabel.font = [UIFont systemFontOfSize:13.0];
        [self.contentView addSubview:contentLabel];
        _contentLabel = contentLabel;
    }
    return _contentLabel;
}

- (void)awakeFromNib {
    
    [super awakeFromNib];
    
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
