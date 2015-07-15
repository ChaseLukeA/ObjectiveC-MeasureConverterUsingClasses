//  Imperial.m
//
//  Measure Converter using Classes
//
//  Created by Luke Chase on 3/24/15.
//  chase.luke.a@gmail.com
//  Copyright (c) 2015 Luke A Chase. All rights reserved.

#import "Imperial.h"

@implementation Imperial


+ (NSDictionary *)millimetersToImperial:(double)millimeters {
    NSDictionary *convertedTo = @{
        @"inches" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self millimetersToInches: millimeters]],
    	@"feet" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self millimetersToFeet: millimeters]],
    	@"yards" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self millimetersToYards: millimeters]],
    	@"miles" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self millimetersToMiles: millimeters]],
        };
    return convertedTo;
}

+ (double)millimetersToInches:(double)millimeters {
    return millimeters * 0.03937007874;
}

+ (double)millimetersToFeet:(double)millimeters {
    return millimeters * 0.00328084;
}

+ (double)millimetersToYards:(double)millimeters {
    return millimeters * 0.00109361;
}

+ (double)millimetersToMiles:(double)millimeters {
    return millimeters * 0.000000621371192;
}


+ (NSDictionary *)centimetersToImperial:(double)centimeters {
    NSDictionary *convertedTo = @{
    	@"inches" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self centimetersToInches: centimeters]],
    	@"feet" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self centimetersToFeet: centimeters]],
    	@"yards" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self centimetersToYards: centimeters]],
    	@"miles" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self centimetersToMiles: centimeters]],
        };
    return convertedTo;
}

+ (double)centimetersToInches:(double)centimeters {
    return centimeters * 0.393701;
}

+ (double)centimetersToFeet:(double)centimeters {
    return centimeters * 0.032808399;
}

+ (double)centimetersToYards:(double)centimeters {
    return centimeters * 0.010936133;
}

+ (double)centimetersToMiles:(double)centimeters {
    return centimeters * 0.000006213712;
}


+ (NSDictionary *)metersToImperial:(double)meters {
    NSDictionary *convertedTo = @{
    	@"inches" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self metersToInches: meters]],
    	@"feet" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self metersToFeet: meters]],
    	@"yards" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self metersToYards: meters]],
    	@"miles" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self metersToMiles: meters]],
        };
    return convertedTo;
}

+ (double)metersToInches:(double)meters {
    return meters * 39.3700787;
}

+ (double)metersToFeet:(double)meters {
    return meters * 3.2808399;
}

+ (double)metersToYards:(double)meters {
    return meters * 1.0936133;
}

+ (double)metersToMiles:(double)meters {
    return meters * 0.00062137;
}


+ (NSDictionary *)kilometersToImperial:(double)kilometers {
    NSDictionary *convertedTo = @{
    	@"inches" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self kilometersToInches: kilometers]],
    	@"feet" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self kilometersToFeet: kilometers]],
    	@"yards" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self kilometersToYards: kilometers]],
    	@"miles" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self kilometersToMiles: kilometers]],
        };
    return convertedTo;
}

+ (double)kilometersToInches:(double)kilometers {
    return kilometers * 39370.0787;
}

+ (double)kilometersToFeet:(double)kilometers {
    return kilometers * 3280.8399;
}

+ (double)kilometersToYards:(double)kilometers {
    return kilometers * 1093.6133;
}

+ (double)kilometersToMiles:(double)kilometers {
    return kilometers * 0.621371192;
}


+ (NSDictionary *)inchesToOtherImperialUnits:(double)inches {
    NSDictionary *convertedTo = @{
    	@"feet" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self inchesToFeet: inches]],
    	@"yards" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self inchesToYards: inches]],
    	@"miles" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self inchesToMiles: inches]],
        };
    return convertedTo;
}

+ (double)inchesToFeet:(double)inches {
    return inches * 0.0833333;
}

+ (double)inchesToYards:(double)inches {
    return inches * 0.0277778;
}

+ (double)inchesToMiles:(double)inches {
    return inches * 0.0000157828283;
}


+ (NSDictionary *)feetToOtherImperialUnits:(double)feet {
    NSDictionary *convertedTo = @{
    	@"inches" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self feetToInches: feet]],
    	@"yards" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self feetToYards: feet]],
    	@"miles" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self feetToMiles: feet]],
        };
    return convertedTo;
}

+ (double)feetToInches:(double)feet {
    return feet * 12;
}

+ (double)feetToYards:(double)feet {
    return feet * 0.333333333;
}
+ (double)feetToMiles:(double)feet {
    return feet * 0.000189394;
}


+ (NSDictionary *)yardsToOtherImperialUnits:(double)yards {
    NSDictionary *convertedTo = @{
    	@"inches" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self yardsToInches: yards]],
    	@"feet" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self yardsToFeet: yards]],
    	@"miles" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self yardsToMiles: yards]],
        };
    return convertedTo;
}

+ (double)yardsToInches:(double)yards {
    return yards * 36;
}

+ (double)yardsToFeet:(double)yards {
    return yards * 3;
}

+ (double)yardsToMiles:(double)yards {
    return yards * 0.000568182 ;
}


+ (NSDictionary *)milesToOtherImperialUnits:(double)miles {
    NSDictionary *convertedTo = @{
    	@"inches" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self milesToInches: miles]],
    	@"feet" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self milesToFeet: miles]],
    	@"yards" : (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:[self milesToYards: miles]],
        };
    return convertedTo;
}

+ (double)milesToInches:(double)miles {
    return miles * 63360;
}

+ (double)milesToFeet:(double)miles {
    return miles * 5280;
}

+ (double)milesToYards:(double)miles {
    return miles * 1760;
}


@end
