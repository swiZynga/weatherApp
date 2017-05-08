//
//  ViewController.m
//  Weather
//
//  Created by Sangwook Wi on 5/2/17.
//  Copyright © 2017 Sangwook Wi. All rights reserved.
//

#import "ViewController.h"
#import "WModel.h"
#import "WCenter.h"
#import "WTableViewCell.h"

@interface ViewController ()

@end

@implementation ViewController

WCenter *cInstance;

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    UIActivityIndicatorView *spinner = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
//    spinner.center = CGPointMake(160, 350);
//    spinner.tag = 1;
//    [self.view addSubview:spinner];
//    [spinner startAnimating];
    
    cInstance = [[WCenter alloc] init];
    [cInstance passDataFromProvider:^(WModel *dataModel) {
        [self update:dataModel];
    }];
    
}

- (void)update: (WModel *)data {
    
    NSArray *dayModel = data.days;
    WDayModel *dayOne = [dayModel objectAtIndex:0];
    WDayModel *dayTwo = [dayModel objectAtIndex:1];
    WDayModel *dayThree = [dayModel objectAtIndex:2];
    WDayModel *dayFour = [dayModel objectAtIndex:3];
    WDayModel *dayFive = [dayModel objectAtIndex:4];
    
    self.curWeather.text = [dayOne getWeather];
    self.curTemp.text = [dayOne getCurrent];
    self.todayDay.text = [dayOne getName];
    self.todayLow.text = [dayOne getLow];
    self.todayHigh.text = [dayOne getHigh];
    
    self.day2.text = [dayTwo getName];
    self.day3.text = [dayThree getName];
    self.day4.text = [dayFour getName];
    self.day5.text = [dayFive getName];
    
    self.high2.text = [dayTwo getHigh];
    self.high3.text = [dayThree getHigh];
    self.high4.text = [dayFour getHigh];
    self.high5.text = [dayFive getHigh];

    self.low2.text = [dayTwo getLow];
    self.low3.text = [dayThree getLow];
    self.low4.text = [dayFour getLow];
    self.low5.text = [dayFive getLow];
    
    [self setWeatherImage:[dayOne getWeather] with:[NSNumber numberWithInteger:1]];
    [self setWeatherImage:[dayOne getWeather] with:[NSNumber numberWithInteger:2]];
    [self setWeatherImage:[dayOne getWeather] with:[NSNumber numberWithInteger:3]];
    [self setWeatherImage:[dayOne getWeather] with:[NSNumber numberWithInteger:4]];
    [self setWeatherImage:[dayOne getWeather] with:[NSNumber numberWithInteger:5]];
    
}

-(void)setWeatherImage: (NSString *)weather with:(NSNumber *)index
{
    if([weather isEqualToString: @"clear sky"]){
        if ([index isEqualToNumber:[NSNumber numberWithInteger: 1]]) {
            [_wImage1 setImage:[UIImage imageNamed:@"sunny"]];
        } else if ([index isEqualToNumber:[NSNumber numberWithInteger:2]]) {
            [_wImage2 setImage:[UIImage imageNamed:@"sunny"]];
        } else if ([index isEqualToNumber:[NSNumber numberWithInteger:3]]) {
            [_wImage3 setImage:[UIImage imageNamed:@"sunny"]];
        } else if ([index isEqualToNumber:[NSNumber numberWithInteger:4]]) {
            [_wImage4 setImage:[UIImage imageNamed:@"sunny"]];
        } else if ([index isEqualToNumber:[NSNumber numberWithInteger:5]]) {
            [_wImage5 setImage:[UIImage imageNamed:@"sunny"]];
        }
    } else {
        if ([index isEqualToNumber:[NSNumber numberWithInteger: 1]]) {
            [_wImage1 setImage:[UIImage imageNamed:@"rain"]];
        } else if ([index isEqualToNumber:[NSNumber numberWithInteger:2]]) {
            [_wImage2 setImage:[UIImage imageNamed:@"rain"]];
        } else if ([index isEqualToNumber:[NSNumber numberWithInteger:3]]) {
            [_wImage3 setImage:[UIImage imageNamed:@"rain"]];
        } else if ([index isEqualToNumber:[NSNumber numberWithInteger:4]]) {
            [_wImage4 setImage:[UIImage imageNamed:@"sunny"]];
        } else if ([index isEqualToNumber:[NSNumber numberWithInteger:5]]) {
            [_wImage5 setImage:[UIImage imageNamed:@"rain"]];
        }
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
