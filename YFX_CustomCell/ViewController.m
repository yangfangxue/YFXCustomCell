//
//  ViewController.m
//  YFX_CustomCell
//
//  Created by fangxue on 2016/10/9.
//  Copyright © 2016年 fangxue. All rights reserved.
//

#import "ViewController.h"
#import "YFX_Model.h"
#import "YFX_CustomTableViewCell.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,strong)NSMutableArray *dataArray;//数据源数组(存放model)

@property(nonatomic,strong)UITableView *YFX_TableView;

@end

@implementation ViewController
//懒加载
- (UITableView *)YFX_TableView{
    
    if (!_YFX_TableView) {
        
        _YFX_TableView = [[UITableView alloc]initWithFrame:self.view.frame style:UITableViewStylePlain];
        _YFX_TableView.delegate = self;
        _YFX_TableView.dataSource = self;
    }
    return _YFX_TableView;
}
- (NSMutableArray *)dataArray{
    if (!_dataArray) {
        
        _dataArray = [NSMutableArray array];
    }
    return _dataArray;
}
- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    // 数据
    NSArray * array = @[
                        @{
                            @"nickName":@"你成佛了",
                            @"graide":@"16",
                            @"content":@"连接方式李金发欧式24234242342冯绍峰烦死拉伸的减肥了敬爱是骄傲是激发按时发放费；啊； 拉伸放假接方式李反对党的圾费垃圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法lkjslajflsajflasjlasjflajflj零距离圣诞节佛按实际大量积分垃圾地方啦垃圾了房间爱令肌肤拉伸件地方垃圾垃圾了极大浪费就暗恋的激发了设计费垃圾费拉激发偶尔加乱收费来释放接方式李反对党的圾费垃圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法lkjslajflsajflasjlasjflajflj零距离圣诞节佛按实际大量积分垃圾地方啦垃圾了房间爱令肌肤拉伸件地方垃圾垃圾了极大浪费就暗恋的激发了设计费垃圾费拉激发偶尔加乱收费来释放接方式李反对党的圾费垃圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法lkjslajflsajflasjlasjflajflj零距离圣诞节佛按实际大量积分垃圾地方啦垃圾了房间爱令肌肤拉伸件地方垃圾垃圾了极大浪费就暗恋的激发了设计费垃圾费拉激发偶尔加乱收费来释放接方式李反对党的圾费垃圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法lkjslajflsajflasjlasjflajflj零距离圣诞节佛按实际大量积分垃圾地方啦垃圾了房间爱令肌肤拉伸件地方垃圾垃圾了极大浪费就暗恋的激发了设计费垃圾费拉激发偶尔加乱收费来释放啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"式李金发",
                            @"graide":@"13",
                            @"content":@"连接方式323242342432圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"垃圾费垃圾房间",
                            @"graide":@"1",
                            @"content":@"连接方式李反对党的圾费垃圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"了仨解放啦",
                            @"graide":@"6",
                            @"content":@"连接方式沙发沙发"
                            },
                        @{
                            @"nickName":@"式李金发",
                            @"graide":@"13",
                            @"content":@"连接方式323242342432圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"垃圾费垃圾房间",
                            @"graide":@"1",
                            @"content":@"连接方式李反对党的圾费垃圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"式李金发",
                            @"graide":@"13",
                            @"content":@"连接方式323242342432圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"垃圾费垃圾房间",
                            @"graide":@"1",
                            @"content":@"连接方式李反对党的圾费垃圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"式李金发",
                            @"graide":@"13",
                            @"content":@"连接方式323242342432圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"垃圾费垃圾房间",
                            @"graide":@"1",
                            @"content":@"连接方式李反对党的圾费垃圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"式李金发",
                            @"graide":@"13",
                            @"content":@"连接方式323242342432圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"垃圾费垃圾房间",
                            @"graide":@"1",
                            @"content":@"连接方式李反对党的圾费垃圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"式李金发",
                            @"graide":@"13",
                            @"content":@"连接方式323242342432圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"垃圾费垃圾房间",
                            @"graide":@"1",
                            @"content":@"连接方式李反对党的圾费垃圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"式李金发",
                            @"graide":@"13",
                            @"content":@"连接方式323242342432圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"垃圾费垃圾房间",
                            @"graide":@"1",
                            @"content":@"连接方式李反对党的圾费垃圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"式李金发",
                            @"graide":@"13",
                            @"content":@"连接方式323242342432圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"垃圾费垃圾房间",
                            @"graide":@"1",
                            @"content":@"连接方式李反对党的圾费垃圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"式李金发",
                            @"graide":@"13",
                            @"content":@"连接方式323242342432圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"垃圾费垃圾房间",
                            @"graide":@"1",
                            @"content":@"连接方式李反对党的圾费垃圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"式李金发",
                            @"graide":@"13",
                            @"content":@"连接方式323242342432圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"垃圾费垃圾房间",
                            @"graide":@"1",
                            @"content":@"连接方式李反对党的圾费垃圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"式李金发",
                            @"graide":@"13",
                            @"content":@"连接方式323242342432圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"垃圾费垃圾房间",
                            @"graide":@"1",
                            @"content":@"连接方式接方式李反对党的圾费垃圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法lkjslajflsajflasjlasjflajflj零距离圣诞节佛按实际大量积分垃圾地方啦垃圾了房间爱令肌肤拉伸件地方垃圾垃圾了极大浪费就暗恋的激发了设计费垃圾费拉激发偶尔加乱收费来释放接方式李反对党的圾费垃圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法lkjslajflsajflasjlasjflajflj零距离圣诞节佛按实际大量积分垃圾地方啦垃圾了房间爱令肌肤拉伸件地方垃圾垃圾了极大浪费就暗恋的激发了设计费垃圾费拉激发偶尔加乱收费来释放接方式李反对党的圾费垃圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法lkjslajflsajflasjlasjflajflj零距离圣诞节佛按实际大量积分垃圾地方啦垃圾了房间爱令肌肤拉伸件地方垃圾垃圾了极大浪费就暗恋的激发了设计费垃圾费拉激发偶尔加乱收费来释放李反对党的圾费垃圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"式李金发",
                            @"graide":@"13",
                            @"content":@"连接方式接方式李反对党的圾费垃圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法lkjslajflsajflasjlasjflajflj零距离圣诞节佛按实际大量积分垃圾地方啦垃圾了房间爱令肌肤拉伸件地方垃圾垃圾了极大浪费就暗恋的激发了设计费垃圾费拉激发偶尔加乱收费来释放323242342432圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"垃圾费垃圾房间",
                            @"graide":@"1",
                            @"content":@"连接方式接方式李反对党的圾费垃圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法lkjslajflsajflasjlasjflajflj零距离圣诞节佛按实际大量积分垃圾地方啦垃圾了房间爱令肌肤拉伸件地方垃圾垃圾了极大浪费就暗恋的激发了设计费垃圾费拉激发偶尔加乱收费来释放李反对党的圾费垃圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"式李金发",
                            @"graide":@"13",
                            @"content":@"连接方式接方式李反对党的圾费垃圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法lkjslajflsajflasjlasjflajflj零距离圣诞节佛按实际大量积分垃圾地方啦垃圾了房间爱令肌肤拉伸件地方垃圾垃圾了极大浪费就暗恋的激发了设计费垃圾费拉激发偶尔加乱收费来释放323242342432圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"垃圾费垃圾房间",
                            @"graide":@"1",
                            @"content":@"连接方式接方式李反对党的圾费垃圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法lkjslajflsajflasjlasjflajflj零距离圣诞节佛按实际大量积分垃圾地方啦垃圾了房间爱令肌肤拉伸件地方垃圾垃圾了极大浪费就暗恋的激发了设计费垃圾费拉激发偶尔加乱收费来释放李反对党的圾费垃圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"式李金发",
                            @"graide":@"13",
                            @"content":@"连接方式接方式李反对党的圾费垃圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法lkjslajflsajflasjlasjflajflj零距离圣诞节佛按实际大量积分垃圾地方啦垃圾了房间爱令肌肤拉伸件地方垃圾垃圾了极大浪费就暗恋的激发了设计费垃圾费拉激发偶尔加乱收费来释放323242342432圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"垃圾费垃圾房间",
                            @"graide":@"1",
                            @"content":@"连接方式李反对党的圾费垃圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法lkjslajflsajflasjlasjflajflj零距离圣诞节佛按实际大量积分垃圾地方啦垃圾了房间爱令肌肤拉伸件地方垃圾垃圾了极大浪费就暗恋的激发了设计费垃圾费拉激发偶尔加乱收费来释放"
                            }
                        ];
    
    // 将数据转换成模型
    for (NSDictionary * dict in array) {
        
        YFX_Model * model = [YFX_Model modelWithDict:dict];
        
        [self.dataArray addObject:model];
    }
    
    [self.view addSubview:self.YFX_TableView];
    
    [self.YFX_TableView reloadData];
}
#pragma mark =====TableView代理======
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.dataArray.count;
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString * identifier = @"cell";
    
    YFX_CustomTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        cell = [[YFX_CustomTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    cell.model = self.dataArray[indexPath.row];
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    YFX_Model * model = self.dataArray[indexPath.row];
    
    return model.cellHeight;
}
// 先给cell表格一个预估计高度
- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}
- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
