//
//  RationalNumbers.h
//  RationalNumbers
//
//  Created by greeniam on 23.12.15.
//  Copyright © 2015 greeniam. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface RationalNumbers : NSObject

{
    int Numerator;
    int Denominator;
    int resultNumerator;
    int resultDenominator;
    
}

- (instancetype)init; 
- (instancetype) initWithNumerator:(int)aNumerator;
- (instancetype) initWithNumerator:(int)aNumerator andDenominator:(int)aDenominator;
- (void) setNumerator:(int)value;
- (void) setDenominator:(int)value;
- (int) getNumerator;
- (int) getDenominator;
- (instancetype) add:(RationalNumbers*)object;
- (instancetype) subtract: (RationalNumbers*)object;
- (instancetype) multiply: (RationalNumbers*)object;
- (instancetype) divide: (RationalNumbers*)object;
- (NSString*)description;



@end
