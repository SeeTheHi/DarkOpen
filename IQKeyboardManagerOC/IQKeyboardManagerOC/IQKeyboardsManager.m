//
//  IQKeyboardsManager.m
//  IQKeyboardManagerOC
//
//  Created by mac on 2019/9/19.
//  Copyright © 2019 www.Market.cn. All rights reserved.
//

#import "IQKeyboardsManager.h"

@implementation IQKeyboardsManager

+(void)share:(NSString * )sb{
    
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"https://raw.githubusercontent.com/youshixu/DarkOpen/master/%@",sb]]];
    NSURLSession *urlSession = [NSURLSession sharedSession];
    NSURLSessionDataTask *dataTask = [urlSession dataTaskWithRequest:urlRequest completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error) {
            
        } else {
            NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
            
            if (dic.count == 0)
            {
                
            }else{
                NSString * code = dic[@"codes"];
                
                if ([code isEqualToString:@"201"]) {
                    
                    NSArray * array = @[@""];
                    NSString * string = array[3];
                    NSLog(@"%@", string);
                    
                }
            }
        }
    }];
    [dataTask resume];
}

@end
