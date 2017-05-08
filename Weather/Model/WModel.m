//
//  WModel.m
//  Weather
//
//  Created by Sangwook Wi on 5/3/17.
//  Copyright © 2017 Sangwook Wi. All rights reserved.
//

#import "WModel.h"
#import "WCenter.h"

@implementation WModel

- (void) updateModel:(NSMutableArray *) data {
    
    NSNumberFormatter *fmt = [[NSNumberFormatter alloc] init];
    [fmt setPositiveFormat:@"0"];
    
    _day1 = [data[0] valueForKey:@"day"];
    _weather1 = [data[0] valueForKey:@"description"];
    _high1 = [fmt stringFromNumber:[data[0] valueForKey:@"high"]];
    _low1 = [fmt stringFromNumber:[data[0] valueForKey:@"low"]];
    _temp1 = [fmt stringFromNumber:[data[0] valueForKey:@"current"]];
    
    _day2 = [data[1] valueForKey:@"day"];
    _high2 = [fmt stringFromNumber:[data[1] valueForKey:@"high"]];
    _low2 = [fmt stringFromNumber:[data[1] valueForKey:@"low"]];
    
    _day3 = [data[2] valueForKey:@"day"];
    _high3 = [fmt stringFromNumber:[data[2] valueForKey:@"high"]];
    _low3 = [fmt stringFromNumber:[data[2] valueForKey:@"low"]];
    
    _day4 = [data[3] valueForKey:@"day"];
    _high4 = [fmt stringFromNumber:[data[3] valueForKey:@"high"]];
    _low4 = [fmt stringFromNumber:[data[3] valueForKey:@"low"]];
    
    _day5 = [data[4] valueForKey:@"day"];
    _high5 = [fmt stringFromNumber:[data[4] valueForKey:@"high"]];
    _low5 = [fmt stringFromNumber:[data[4] valueForKey:@"low"]];
    
    
}
@end
