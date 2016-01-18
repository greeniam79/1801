//
//  main.m
//  ArraysAndDictionaries
//


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    
    NSDictionary *employee1 = [NSDictionary dictionaryWithObjectsAndKeys:@"Kate", @"name", [NSNumber numberWithInt: 55], @"age", [NSNumber numberWithInt:10000], @"salary", @"Chief Executive", @"position",  nil];
    NSDictionary *employee2 = [NSDictionary dictionaryWithObjectsAndKeys:@"Gary", @"name", [NSNumber numberWithInt:51], @"age", [NSNumber numberWithInt:7500], @"salary", @"Deputy director", @"position", nil];
    NSDictionary *employee3 = [NSDictionary dictionaryWithObjectsAndKeys:@"Peter", @"name", [NSNumber numberWithInt:40], @"age", [NSNumber numberWithInt:8000], @"salary", @"Chief Accountant", @"position", nil];
    NSDictionary *employee4 = [NSDictionary dictionaryWithObjectsAndKeys:@"Helen", @"name", [NSNumber numberWithInt:25], @"age", [NSNumber numberWithInt:1800], @"salary", @"Manager", @"position", nil];
    NSDictionary *employee5 = [NSDictionary dictionaryWithObjectsAndKeys:@"Mary", @"name", [NSNumber numberWithInt:23], @"age", [NSNumber numberWithInt:1500], @"salary", @"Office manager", @"position",  nil];
    
    NSMutableArray *arrayOfDictionaries = [NSMutableArray arrayWithObjects:employee1, employee2, employee3, employee4, employee5, nil];
    
    NSSortDescriptor *ageValueDescriptor =   [[NSSortDescriptor alloc] initWithKey: @"age" ascending:NO];
    NSArray *ageDescriptors = [NSArray arrayWithObjects:ageValueDescriptor, nil];
    NSArray *sortedArrayOfDictionaries = [arrayOfDictionaries sortedArrayUsingDescriptors:ageDescriptors];
    
    NSLog(@"value age is the largest for the following employee: %@", sortedArrayOfDictionaries[0]);
    
    NSMutableArray *arrayLargeSalary = [NSMutableArray arrayWithCapacity:10];
    for (id dictionaries in arrayOfDictionaries){
      if ([[dictionaries valueForKey:@"salary"] integerValue]>=2000){
        [arrayLargeSalary addObject:dictionaries];
      }
    }
    NSLog(@"These employees have salary 2000 or more %@", arrayLargeSalary);
    
    int salarySum =0;
    for (id dictionaries in arrayOfDictionaries){
      salarySum += [[dictionaries valueForKey:@"salary"] integerValue];
    }
    NSLog(@"The total salary sum is %i", salarySum);
    
    NSMutableArray *arrayOlderEmployeesToRemove = [NSMutableArray arrayWithCapacity:10];
    for (id dictionaries in arrayOfDictionaries){
      if ([[dictionaries valueForKey:@"age"] integerValue]>=50){
        [arrayOlderEmployeesToRemove addObject:dictionaries];
      }
    }
    
    [arrayOfDictionaries removeObjectsInArray:arrayOlderEmployeesToRemove];
    
    NSLog(@"The list of employees younger than 50 includes the following people: %@", arrayOfDictionaries);
    
  }
  return 0;
}