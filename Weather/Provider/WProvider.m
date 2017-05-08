//
//  WProvider.m
//  Weather
//
//  Created by Sangwook Wi on 5/2/17.
//  Copyright © 2017 Sangwook Wi. All rights reserved.
//

#import "WProvider.h"

// Api call
NSString *const url = @"http://api.openweathermap.org/data/2.5/forecast?id=524901&units=metric&APPID=f33202f4c6383af75e9f7c3057e9a0ad";

@implementation WProvider

- (void)fetchDataWithCallback:(void (^)(NSData *data, NSError *error))callback
{
    NSURLSession *session = [NSURLSession sharedSession];
    [[session dataTaskWithURL:[NSURL URLWithString:url]
            completionHandler:^(NSData *data,
                                NSURLResponse *response,
                                NSError *error) {
                if (callback) {
                    callback(data, error);
                }
                
            }] resume];
}

@end
