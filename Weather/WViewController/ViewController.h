//
//  ViewController.h
//  Weather
//
//  Created by Sangwook Wi on 5/2/17.
//  Copyright © 2017 Sangwook Wi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *city;
@property (weak, nonatomic) IBOutlet UILabel *curWeather;
@property (weak, nonatomic) IBOutlet UILabel *curTemp;
@property (weak, nonatomic) IBOutlet UILabel *todayDay;
@property (weak, nonatomic) IBOutlet UILabel *todayHigh;
@property (weak, nonatomic) IBOutlet UILabel *todayLow;

@property (weak, nonatomic) IBOutlet UILabel *day2;
@property (weak, nonatomic) IBOutlet UILabel *day3;
@property (weak, nonatomic) IBOutlet UILabel *day4;
@property (weak, nonatomic) IBOutlet UILabel *day5;

@property (weak, nonatomic) IBOutlet UILabel *high2;
@property (weak, nonatomic) IBOutlet UILabel *high3;
@property (weak, nonatomic) IBOutlet UILabel *high4;
@property (weak, nonatomic) IBOutlet UILabel *high5;

@property (weak, nonatomic) IBOutlet UILabel *low2;
@property (weak, nonatomic) IBOutlet UILabel *low3;
@property (weak, nonatomic) IBOutlet UILabel *low4;
@property (weak, nonatomic) IBOutlet UILabel *low5;

@property (weak, nonatomic) IBOutlet UIImageView *wImage1;
@property (weak, nonatomic) IBOutlet UIImageView *wImage2;
@property (weak, nonatomic) IBOutlet UIImageView *wImage3;
@property (weak, nonatomic) IBOutlet UIImageView *wImage4;
@property (weak, nonatomic) IBOutlet UIImageView *wImage5;


@end

