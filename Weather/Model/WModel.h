//
//  WModel.h
//  Weather
//
//  Created by Sangwook Wi on 5/3/17.
//  Copyright © 2017 Sangwook Wi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WModel : NSObject

@property (nonatomic, retain) NSString *cityName;
@property (nonatomic, retain) NSString *weather1;
@property (nonatomic, retain) NSString *temp1;

@property(nonatomic, strong) NSArray<WDayModel *> *days;

@property (nonatomic, retain) NSString *day1;
@property (nonatomic, retain) NSString *high1;
@property (nonatomic, retain) NSString *low1;

@property (nonatomic, retain) NSString *day2;
@property (nonatomic, retain) NSString *low2;
@property (nonatomic, retain) NSString *high2;

@property (nonatomic, retain) NSString *day3;
@property (nonatomic, retain) NSString *low3;
@property (nonatomic, retain) NSString *high3;

@property (nonatomic, retain) NSString *day4;
@property (nonatomic, retain) NSString *low4;
@property (nonatomic, retain) NSString *high4;

@property (nonatomic, retain) NSString *day5;
@property (nonatomic, retain) NSString *low5;
@property (nonatomic, retain) NSString *high5;


- (void) updateModel:(NSMutableArray *) data;


@end
