//
//  RationalNumbers.m
//  RationalNumbers
//
//  Created by greeniam on 23.12.15.
//  Copyright © 2015 greeniam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RationalNumbers.h"

@implementation RationalNumbers 


- (instancetype) init
{
    self = [super init];
    if (self)
    {
        Numerator = 0;
        Denominator = 1;
    }
    return self;
}

- (instancetype) initWithNumerator:(int)aNumerator {
    
    self = [super self];
    if (self){
        Numerator = aNumerator;
        Denominator=1;
    }
    return self;
}
- (instancetype) initWithNumerator:(int)aNumerator andDenominator:(int)aDenominator{
    self = [super self];
    if (self){
        Numerator = aNumerator;
        Denominator = aDenominator;
    }
    return self;
}
-(void) setNumerator:(int)value{
        Numerator = value;
}

- (void) setDenominator:(int)value{
    if (value!=0)
        Denominator =value;
    else{
        int i=5;
        while (value==0&&i>=0){
       NSLog(@"Error. Denominator can't equal 0. You have %i more attempts. Try again, please: ", i);
            scanf("%i", &value);
            i--;
        }
        
        if (value!=0)
            Denominator=value;
        else{
        NSLog(@"Sorry, you used all of your attempts with no luck and you made the program crash((");
            __unused int divisionByZero=Numerator/value;//program crashes because denominator can't equal 0; 
        }
    }
    
}

- (int) getNumerator {
    return Numerator;
}

- (int) getDenominator{
    return Denominator;
}

//////////////////////



- (instancetype) ReduceFraction{
    
    int num = Numerator;
    int denom = Denominator;
    { int temp;
    
    while (denom!=0){
        temp = abs (num%denom);
        num = denom;
        denom = temp;
    }
    }
    Numerator/=num;
    Denominator/=num;
    
    self.Numerator=Numerator;
    self.Denominator=Denominator;
    return [[RationalNumbers alloc]initWithNumerator: self.getNumerator andDenominator:self.getDenominator];
}



- (instancetype)add:(RationalNumbers*)object{
    resultNumerator = Numerator * object.getDenominator+object.getNumerator*Denominator;
    resultDenominator = Denominator*object.getDenominator;
    
    
    RationalNumbers *resultObject= [[RationalNumbers alloc]initWithNumerator:resultNumerator andDenominator: resultDenominator];
    
    return resultObject;
    
}



- (instancetype) multiply:(RationalNumbers *)object{
    resultNumerator = Numerator*object.getNumerator;
    resultDenominator = Denominator*object.getDenominator;
    
    RationalNumbers *resultObject = [[RationalNumbers alloc]initWithNumerator:resultNumerator andDenominator:resultDenominator];
    
    return resultObject;
}
- (instancetype) divide:(RationalNumbers *)object{
    resultNumerator = Numerator*object.getDenominator;
    resultDenominator = object.getNumerator*Denominator;
    
    RationalNumbers *resultObject = [[RationalNumbers alloc]initWithNumerator:resultNumerator andDenominator:resultDenominator];
    return resultObject;
}
- (instancetype)subtract:(RationalNumbers *)object{
    resultNumerator = Numerator*object.getDenominator-object.getNumerator*Denominator;
    resultDenominator = Denominator*object.getDenominator;
    
    RationalNumbers *resultObject = [[RationalNumbers alloc]initWithNumerator:resultNumerator andDenominator:resultDenominator];
    return resultObject;
                                     
}



- (NSString*) description{
    [self ReduceFraction]; /*Vikoristovuu ReduceFraction tut, schob skorochyvalis i ti drobi, scho vvedeni koristuvachem z konsoli i z yakimi niyaki matematichni dii ne vikonuvalis. inakshe, mojna skorochuvati v kojnomy metodi z matematichnimi operaciyami : [resultObject ReduceFraction]; */
    if (Denominator!=1)
    return [NSString stringWithFormat:@"%i/%i", Numerator, Denominator];
    else
        return [NSString stringWithFormat:@"%i", Numerator];
}
@end
