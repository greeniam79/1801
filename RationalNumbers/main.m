//
//  main.m
//  RationalNumbers
//
//  Created by greeniam on 23.12.15.
//  Copyright © 2015 greeniam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RationalNumbers.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
       
        RationalNumbers*obj = [[RationalNumbers alloc]initWithNumerator:6 andDenominator:12];
        RationalNumbers*obj2 = [[RationalNumbers alloc]initWithNumerator:8];
        
        printf("numerator is %i ", [obj getNumerator]);
        
        RationalNumbers*newEmptyObj =[[RationalNumbers alloc]init];
        
        printf ("numerator of empty object is %i ", [newEmptyObj getNumerator]);
        printf("denominator of empty object is %i ", [newEmptyObj getDenominator]);
        
        [newEmptyObj setNumerator:23];
        [newEmptyObj setDenominator:43];
        
        RationalNumbers* resultObject = [obj multiply: obj2];
        
        NSLog(@"%@", [obj add: obj2]);
        
        NSLog(@"%@", resultObject);
        
        NSLog(@"%@", [obj subtract:obj2]);
        
        NSLog(@"%@", [obj divide:obj2]);
        
        NSLog(@"%@", [newEmptyObj add:obj]);
        
        NSLog(@"%@", [newEmptyObj multiply:obj2]);
        
        [newEmptyObj setNumerator:20];
        [newEmptyObj setDenominator:10];
        NSLog(@"%@", newEmptyObj);
        
        int number1, number2;
        NSLog(@"Enter numerator value");
        scanf("%i", &number1);
        
        [newEmptyObj setNumerator:number1];
        NSLog(@"Enter denominator value");
        scanf("%i", &number2);
        [newEmptyObj setDenominator:number2];
        NSLog(@"%@", newEmptyObj);
        
        
        
    
    
    }
    
    return 0;
}
