//  Metric.h
//
//  Measure Converter using Classes
//
//  Created by Luke Chase on 3/24/15.
//  chase.luke.a@gmail.com
//  Copyright (c) 2015 Luke A Chase. All rights reserved.

#import <Foundation/Foundation.h>

@interface Metric : NSObject

+ (NSDictionary *)inchesToMetric:(double)inches;
+ (double)inchesToMillimeters:(double)inches;
+ (double)inchesToCentimeters:(double)inches;
+ (double)inchesToMeters:(double)inches;
+ (double)inchesToKilometers:(double)inches;

+ (NSDictionary *)feetToMetric:(double)feet;
+ (double)feetToMillimeters:(double)feet;
+ (double)feetToCentimeters:(double)feet;
+ (double)feetToMeters:(double)feet;
+ (double)feetToKilometers:(double)feet;

+ (NSDictionary *)yardsToMetric:(double)yards;
+ (double)yardsToMillimeters:(double)yards;
+ (double)yardsToCentimeters:(double)yards;
+ (double)yardsToMeters:(double)yards;
+ (double)yardsToKilometers:(double)yards;

+ (NSDictionary *)milesToMetric:(double)miles;
+ (double)milesToMillimeters:(double)miles;
+ (double)milesToCentimeters:(double)miles;
+ (double)milesToMeters:(double)miles;
+ (double)milesToKilometers:(double)miles;

+ (NSDictionary *)millimetersToOtherMetricUnits:(double)millimeters;
+ (double)millimetersToCentimeters:(double)millimeters;
+ (double)millimetersToMeters:(double)millimeters;
+ (double)millimetersToKilometers:(double)millimeters;

+ (NSDictionary *)centimetersToOtherMetricUnits:(double)centimeters;
+ (double)centimetersToMillimeters:(double)centimeters;
+ (double)centimetersToMeters:(double)centimeters;
+ (double)centimetersToKilometers:(double)centimeters;

+ (NSDictionary *)metersToOtherMetricUnits:(double)meters;
+ (double)metersToMillimeters:(double)meters;
+ (double)metersToCentimeters:(double)meters;
+ (double)metersToKilometers:(double)meters;

+ (NSDictionary *)kilometersToOtherMetricUnits:(double)kilometers;
+ (double)kilometersToMillimeters:(double)kilometers;
+ (double)kilometersToCentimeters:(double)kilometers;
+ (double)kilometersToMeters:(double)kilometers;

@end
