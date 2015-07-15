//  Imperial.h
//
//  Measure Converter using Classes
//
//  Created by Luke Chase on 3/24/15.
//  chase.luke.a@gmail.com
//  Copyright (c) 2015 Luke A Chase. All rights reserved.

#import <Foundation/Foundation.h>

@interface Imperial : NSObject

+ (NSDictionary *)millimetersToImperial:(double)millimeters;
+ (double)millimetersToInches:(double)millimeters;
+ (double)millimetersToFeet:(double)millimeters;
+ (double)millimetersToYards:(double)millimeters;
+ (double)millimetersToMiles:(double)millimeters;


+ (NSDictionary *)centimetersToImperial:(double)centimeters;
+ (double)centimetersToInches:(double)centimeters;
+ (double)centimetersToFeet:(double)centimeters;
+ (double)centimetersToYards:(double)centimeters;
+ (double)centimetersToMiles:(double)centimeters;


+ (NSDictionary *)metersToImperial:(double)meters;
+ (double)metersToInches:(double)meters;
+ (double)metersToFeet:(double)meters;
+ (double)metersToYards:(double)meters;
+ (double)metersToMiles:(double)meters;


+ (NSDictionary *)kilometersToImperial:(double)kilometers;
+ (double)kilometersToInches:(double)kilometers;
+ (double)kilometersToFeet:(double)kilometers;
+ (double)kilometersToYards:(double)kilometers;
+ (double)kilometersToMiles:(double)kilometers;


+ (NSDictionary *)inchesToOtherImperialUnits:(double)inches;
+ (double)inchesToFeet:(double)inches;
+ (double)inchesToYards:(double)inches;
+ (double)inchesToMiles:(double)inches;


+ (NSDictionary *)feetToOtherImperialUnits:(double)feet;
+ (double)feetToInches:(double)feet;
+ (double)feetToYards:(double)feet;
+ (double)feetToMiles:(double)feet;


+ (NSDictionary *)yardsToOtherImperialUnits:(double)yards;
+ (double)yardsToInches:(double)yards;
+ (double)yardsToFeet:(double)yards;
+ (double)yardsToMiles:(double)yards;


+ (NSDictionary *)milesToOtherImperialUnits:(double)miles;
+ (double)milesToInches:(double)miles;
+ (double)milesToFeet:(double)miles;
+ (double)milesToYards:(double)miles;

@end
