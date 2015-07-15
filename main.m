//  main.m
//
//  Measure Converter using Classes
//
//  Created by Luke Chase on 3/24/15.
//  chase.luke.a@gmail.com
//  Copyright (c) 2015 Luke A Chase. All rights reserved.

#import <Foundation/Foundation.h>
#import "Imperial.h"
#import "Metric.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int numberOfTries, fromType;
        char answer;
        
        NSArray *dataType = @[@"inches", @"feet", @"yards", @"miles",
                @"millimeters", @"centimeters", @"meters", @"kilometers"];
        double dataInput = 0.0;
        
        NSMutableDictionary *conversions = [NSMutableDictionary dictionary];
        NSString *conversionMessage;
        
        
        NSLog(@"\n\n"
              ".--------------------------------------------------.\n"
              "|                      Welcome!                    |\n"
              "|            Measure Converter Version 2.0         |\n"
              ":--------------------------------------------------:\n"
              "|           Created by Luke A Chase © 2015         |\n"
              "'--------------------------------------------------'\n"
              "\n");
        
        
        do {  // start Do you wish to continue loop
            
            fromType = 0;
            numberOfTries = 0;
            
            
            do {  // Length Input Type Logic
                numberOfTries++;
                NSLog(@"\n\n"
                      ".-----------------------------------------------------------.\n"
                      "| What type of length data would you like to convert from?  |\n"
                      "|                                                           |\n"
                      "| 1) inches                                                 |\n"
                      "| 2) feet                                                   |\n"
                      "| 3) yards                                                  |\n"
                      "| 4) miles                                                  |\n"
                      "| 5) millimeters                                            |\n"
                      "| 6) centimeters                                            |\n"
                      "| 7) meters                                                 |\n"
                      "| 8) kilometers                                             |\n"
                      "'-----------------------------------------------------------'\n"
                      "#%i: Enter # for type you wish to convert from:", numberOfTries);
                
                scanf("%i", &fromType);
                
            } while (!(fromType >= 1 && fromType <= 8));
            
            
            do {  // Number Input For Conversion Logic
                
                NSLog(@"\n\n"
                      "-------------------------------------------------------------\n"
                      " Enter the number of %@ you wish to convert: \n"
                      "-------------------------------------------------------------\n",
                      dataType[fromType -1]);
                scanf("%lf", &dataInput);
                
                if (dataInput <= 0) {
                    NSLog(@"\n\n"
                          ".----------------------------------------------.\n"
                          "| You must enter a positive number to convert! |\n"
                          "'----------------------------------------------'\n\n");
                }
                
            } while (dataInput <= 0);
            
            
            conversionMessage = [NSString stringWithFormat:
                    @"\n\n"
                    "-------------------------------------------------------------\n"
                    " %.4lf %@ is the equivalent of:\n"
                    "-------------------------------------------------------------",
                    dataInput, dataType[fromType -1]];
            
            
            switch (fromType) {
                case 1:  // inches
                    [conversions addEntriesFromDictionary:[Metric inchesToMetric:dataInput]];
                    [conversions addEntriesFromDictionary:[Imperial inchesToOtherImperialUnits:dataInput]];
                    conversionMessage = [NSString stringWithFormat:
                                         @"%@\n\n"
                                         "%.4lf millimeters     OR     "
                                         "%.4lf centimeters     OR     "
                                         "%.4lf meters     OR     "
                                         "%.4lf kilometers\n\n"
                                         "%.4lf feet     OR     "
                                         "%.4lf yards     OR     "
                                         "%.4lf miles\n\n",
                                         conversionMessage,
                                         [[conversions objectForKey:@"millimeters"] doubleValue ],
                                         [[conversions objectForKey:@"centimeters"] doubleValue],
                                         [[conversions objectForKey:@"meters"] doubleValue],
                                         [[conversions objectForKey:@"kilometers"] doubleValue],
                                         [[conversions objectForKey:@"feet"] doubleValue],
                                         [[conversions objectForKey:@"yards"] doubleValue],
                                         [[conversions objectForKey:@"miles"] doubleValue]];
                    break;
                case 2:  // feet
                    [conversions addEntriesFromDictionary:[Metric feetToMetric:dataInput]];
                    [conversions addEntriesFromDictionary:[Imperial feetToOtherImperialUnits:dataInput]];
                    conversionMessage = [NSString stringWithFormat:
                                         @"%@\n\n"
                                         "%.4lf millimeters     OR     "
                                         "%.4lf centimeters     OR     "
                                         "%.4lf meters     OR     "
                                         "%.4lf kilometers\n\n"
                                         "%.4lf inches     OR     "
                                         "%.4lf yards     OR     "
                                         "%.4lf miles\n\n",
                                         conversionMessage,
                                         [[conversions objectForKey:@"millimeters"] doubleValue ],
                                         [[conversions objectForKey:@"centimeters"] doubleValue],
                                         [[conversions objectForKey:@"meters"] doubleValue],
                                         [[conversions objectForKey:@"kilometers"] doubleValue],
                                         [[conversions objectForKey:@"inches"] doubleValue],
                                         [[conversions objectForKey:@"yards"] doubleValue],
                                         [[conversions objectForKey:@"miles"] doubleValue]];
                    break;
                case 3:  // yards
                    [conversions addEntriesFromDictionary:[Metric yardsToMetric:dataInput]];
                    [conversions addEntriesFromDictionary:[Imperial yardsToOtherImperialUnits:dataInput]];
                    conversionMessage = [NSString stringWithFormat:
                                         @"%@\n\n"
                                         "%.4lf millimeters     OR     "
                                         "%.4lf centimeters     OR     "
                                         "%.4lf meters     OR     "
                                         "%.4lf kilometers\n\n"
                                         "%.4lf inches     OR     "
                                         "%.4lf feet     OR     "
                                         "%.4lf miles\n\n",
                                         conversionMessage,
                                         [[conversions objectForKey:@"millimeters"] doubleValue ],
                                         [[conversions objectForKey:@"centimeters"] doubleValue],
                                         [[conversions objectForKey:@"meters"] doubleValue],
                                         [[conversions objectForKey:@"kilometers"] doubleValue],
                                         [[conversions objectForKey:@"inches"] doubleValue],
                                         [[conversions objectForKey:@"feet"] doubleValue],
                                         [[conversions objectForKey:@"miles"] doubleValue]];
                    break;
                case 4:  // miles
                    [conversions addEntriesFromDictionary:[Metric milesToMetric:dataInput]];
                    [conversions addEntriesFromDictionary:[Imperial milesToOtherImperialUnits:dataInput]];
                    conversionMessage = [NSString stringWithFormat:
                                         @"%@\n\n"
                                         "%.4lf millimeters     OR     "
                                         "%.4lf centimeters     OR     "
                                         "%.4lf meters     OR     "
                                         "%.4lf kilometers\n\n"
                                         "%.4lf inches     OR     "
                                         "%.4lf feet     OR     "
                                         "%.4lf yards\n\n",
                                         conversionMessage,
                                         [[conversions objectForKey:@"millimeters"] doubleValue ],
                                         [[conversions objectForKey:@"centimeters"] doubleValue],
                                         [[conversions objectForKey:@"meters"] doubleValue],
                                         [[conversions objectForKey:@"kilometers"] doubleValue],
                                         [[conversions objectForKey:@"inches"] doubleValue],
                                         [[conversions objectForKey:@"feet"] doubleValue],
                                         [[conversions objectForKey:@"yards"] doubleValue]];
                    break;
                case 5:  // millimeters
                    [conversions addEntriesFromDictionary:[Imperial millimetersToImperial:dataInput]];
                    [conversions addEntriesFromDictionary:[Metric millimetersToOtherMetricUnits:dataInput]];
                    conversionMessage = [NSString stringWithFormat:
                                         @"%@\n\n"
                                         "%.4lf inches     OR     "
                                         "%.4lf feet     OR     "
                                         "%.4lf yards     OR     "
                                         "%.4lf miles\n\n"
                                         "%.4lf centimeters     OR     "
                                         "%.4lf meters     OR     "
                                         "%.4lf kilometers\n\n",
                                         conversionMessage,
                                         [[conversions objectForKey:@"inches"] doubleValue],
                                         [[conversions objectForKey:@"feet"] doubleValue],
                                         [[conversions objectForKey:@"yards"] doubleValue],
                                         [[conversions objectForKey:@"miles"] doubleValue],
                                         [[conversions objectForKey:@"centimeters"] doubleValue],
                                         [[conversions objectForKey:@"meters"] doubleValue],
                                         [[conversions objectForKey:@"kilometers"] doubleValue]];
                    break;
                case 6:  // centimeters
                    [conversions addEntriesFromDictionary:[Imperial centimetersToImperial:dataInput]];
                    [conversions addEntriesFromDictionary:[Metric centimetersToOtherMetricUnits:dataInput]];
                    conversionMessage = [NSString stringWithFormat:
                                         @"%@\n\n"
                                         "%.4lf inches     OR     "
                                         "%.4lf feet     OR     "
                                         "%.4lf yards     OR     "
                                         "%.4lf miles\n\n"
                                         "%.4lf millimeters     OR     "
                                         "%.4lf meters     OR     "
                                         "%.4lf kilometers\n\n",
                                         conversionMessage,
                                         [[conversions objectForKey:@"inches"] doubleValue],
                                         [[conversions objectForKey:@"feet"] doubleValue],
                                         [[conversions objectForKey:@"yards"] doubleValue],
                                         [[conversions objectForKey:@"miles"] doubleValue],
                                         [[conversions objectForKey:@"millimeters"] doubleValue],
                                         [[conversions objectForKey:@"meters"] doubleValue],
                                         [[conversions objectForKey:@"kilometers"] doubleValue]];
                    break;
                case 7:  // meters
                    [conversions addEntriesFromDictionary:[Imperial metersToImperial:dataInput]];
                    [conversions addEntriesFromDictionary:[Metric metersToOtherMetricUnits:dataInput]];
                    conversionMessage = [NSString stringWithFormat:
                                         @"%@\n\n"
                                         "%.4lf inches     OR     "
                                         "%.4lf feet     OR     "
                                         "%.4lf yards     OR     "
                                         "%.4lf miles\n\n"
                                         "%.4lf millimeters     OR     "
                                         "%.4lf centimeters     OR     "
                                         "%.4lf kilometers\n\n",
                                         conversionMessage,
                                         [[conversions objectForKey:@"inches"] doubleValue],
                                         [[conversions objectForKey:@"feet"] doubleValue],
                                         [[conversions objectForKey:@"yards"] doubleValue],
                                         [[conversions objectForKey:@"miles"] doubleValue],
                                         [[conversions objectForKey:@"millimeters"] doubleValue],
                                         [[conversions objectForKey:@"centimeters"] doubleValue],
                                         [[conversions objectForKey:@"kilometers"] doubleValue]];
                    break;
                case 8:  // kilometers
                    [conversions addEntriesFromDictionary:[Imperial kilometersToImperial:dataInput]];
                    [conversions addEntriesFromDictionary:[Metric kilometersToOtherMetricUnits:dataInput]];
                    conversionMessage = [NSString stringWithFormat:
                                         @"%@\n\n"
                                         "%.4lf inches     OR     "
                                         "%.4lf feet     OR     "
                                         "%.4lf yards     OR     "
                                         "%.4lf miles\n\n"
                                         "%.4lf millimeters     OR     "
                                         "%.4lf centimeters     OR     "
                                         "%.4lf meters\n\n",
                                         conversionMessage,
                                         [[conversions objectForKey:@"inches"] doubleValue],
                                         [[conversions objectForKey:@"feet"] doubleValue],
                                         [[conversions objectForKey:@"yards"] doubleValue],
                                         [[conversions objectForKey:@"miles"] doubleValue],
                                         [[conversions objectForKey:@"millimeters"] doubleValue],
                                         [[conversions objectForKey:@"centimeters"] doubleValue],
                                         [[conversions objectForKey:@"meters"] doubleValue]];
                    break;
            }
            
            NSLog(@"%@", conversionMessage);
            
            
            NSLog(@"\n\n"
                  ".-------------------------------------------------------.\n"
                  "| Do you wish to continue doing more conversions (y/n)? |\n"
                  "'-------------------------------------------------------'\n");
        
            scanf("\n%c", &answer);
            
        } while (answer == 'y');  // end Do you wish to continue loop
        
    }
    
    return 0;
    
}
