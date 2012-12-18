#import "Crasher.h"

@interface Crasher ()
@property (nonatomic, strong) NSArray *array;
@end

@implementation Crasher

- (void)crash;
{
  NSMutableArray *mutable = [NSMutableArray array];
  NSArray *items = @[@0, @1, @2, @3];
  
  if ([@YES boolValue])
  {
    [items enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
      [mutable addObject:obj];
    }];
  }
  else
  {
    [items enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
      [mutable addObject:obj];
    }];
  }
  
  [self setArray:mutable];
}

@end
