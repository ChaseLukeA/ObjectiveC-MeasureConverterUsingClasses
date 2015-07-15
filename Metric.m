//  Metric.m
//
//  Measure Converter using Classes
//
//  Created by Luke Chase on 3/24/15.
//  chase.luke.a@gmail.com
//  Copyright (c) 2015 Luke A Chase. All rights reserved.

#import "Metric.h"

@implementation Metric


+ (NSDictionary *)inchesToMetric:(double)inches {
    NSDictionary *convertedTo = @{
        @"millimeters" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self inchesToMillimeters: inches]],
        @"centimeters" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self inchesToCentimeters: inches]],
        @"meters" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self inchesToMeters: inches]],
        @"kilometers" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self inchesToKilometers: inches]],
    };
    return convertedTo;
}

+ (double)inchesToMillimeters:(double)inches {
    return inches * 25.4;
}

+ (double)inchesToCentimeters:(double)inches {
    return inches * 2.54;
}

+ (double)inchesToMeters:(double)inches {
    return inches * 0.0254;
}

+ (double)inchesToKilometers:(double)inches {
    return inches * 0.000254;
}


+ (NSDictionary *)feetToMetric:(double)feet {
    NSDictionary *convertedTo = @{
        @"millimeters" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self feetToMillimeters: feet]],
        @"centimeters" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self feetToCentimeters: feet]],
        @"meters" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self feetToMeters: feet]],
        @"kilometers" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self feetToKilometers: feet]],
    };
    return convertedTo;
}

+ (double)feetToMillimeters:(double)feet {
    return feet * 304.8;
}

+ (double)feetToCentimeters:(double)feet {
    return feet * 30.48;
}

+ (double)feetToMeters:(double)feet {
    return feet * 0.3048;
}

+ (double)feetToKilometers:(double)feet {
    return feet * 0.003048;
}


+ (NSDictionary *)yardsToMetric:(double)yards {
    NSDictionary *convertedTo = @{
        @"millimeters" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self yardsToMillimeters: yards]],
        @"centimeters" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self yardsToCentimeters: yards]],
        @"meters" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self yardsToMeters: yards]],
        @"kilometers" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self yardsToKilometers: yards]],
    };
    return convertedTo;
}

+ (double)yardsToMillimeters:(double)yards {
    return yards * 914.4;
}

+ (double)yardsToCentimeters:(double)yards {
    return yards * 91.44;
}

+ (double)yardsToMeters:(double)yards {
    return yards * 0.9144;
}

+ (double)yardsToKilometers:(double)yards {
    return yards * 0.0009144;
}


+ (NSDictionary *)milesToMetric:(double)miles {
    NSDictionary *convertedTo = @{
        @"millimeters" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self milesToMillimeters: miles]],
        @"centimeters" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self milesToCentimeters: miles]],
        @"meters" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self milesToMeters: miles]],
        @"kilometers" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self milesToKilometers: miles]],
    };
    return convertedTo;
}

+ (double)milesToMillimeters:(double)miles {
    return miles * 1609344;
}

+ (double)milesToCentimeters:(double)miles {
    return miles * 160934.4;
}

+ (double)milesToMeters:(double)miles {
    return miles * 1609.344;
}

+ (double)milesToKilometers:(double)miles {
    return miles * 1.609344;
}


+ (NSDictionary *)millimetersToOtherMetricUnits:(double)millimeters {
    NSDictionary *convertedTo = @{
        @"centimeters" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self millimetersToCentimeters: millimeters]],
        @"meters" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self millimetersToMeters: millimeters]],
        @"kilometers" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self millimetersToKilometers: millimeters]],
    };
    return convertedTo;
}

+ (double)millimetersToCentimeters:(double)millimeters {
    return millimeters * 0.1;
}

+ (double)millimetersToMeters:(double)millimeters {
    return millimeters * 0.001;
}

+ (double)millimetersToKilometers:(double)millimeters {
    return millimeters * 0.000001;
}



+ (NSDictionary *)centimetersToOtherMetricUnits:(double)centimeters {
    NSDictionary *convertedTo = @{
        @"millimeters" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self centimetersToMillimeters: centimeters]],
        @"meters" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self centimetersToMeters: centimeters]],
        @"kilometers" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self centimetersToKilometers: centimeters]],
    };
    return convertedTo;
}

+ (double)centimetersToMillimeters:(double)centimeters {
    return centimeters * 10;
}

+ (double)centimetersToMeters:(double)centimeters {
    return centimeters * 0.01;
}

+ (double)centimetersToKilometers:(double)centimeters {
    return centimeters * 0.00001;
}


+ (NSDictionary *)metersToOtherMetricUnits:(double)meters {
    NSDictionary *convertedTo = @{
        @"millimeters" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self metersToMillimeters: meters]],
        @"centimeters" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self metersToCentimeters: meters]],
        @"kilometers" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self metersToKilometers: meters]],
    };
    return convertedTo;
}

+ (double)metersToMillimeters:(double)meters {
    return meters * 1000;
}

+ (double)metersToCentimeters:(double)meters {
    return meters * 100;
}

+ (double)metersToKilometers:(double)meters {
    return meters * 0.001;
}


+ (NSDictionary *)kilometersToOtherMetricUnits:(double)kilometers {
    NSDictionary *convertedTo = @{
        @"millimeters" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self kilometersToMillimeters: kilometers]],
        @"centimeters" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self kilometersToCentimeters: kilometers]],
        @"meters" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self kilometersToMeters: kilometers]],
    };
    return convertedTo;
}

+ (double)kilometersToMillimeters:(double)kilometers {
    return kilometers * 1000000;
}

+ (double)kilometersToCentimeters:(double)kilometers {
    return kilometers * 100000;
}

+ (double)kilometersToMeters:(double)kilometers {
    return kilometers * 1000;
}


@end
