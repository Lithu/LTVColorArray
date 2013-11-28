//
//  LTVColorArray.m
//  LTVColorArrayExample
//
//  Created by Lithu.T.V on 28/11/13.
//  Copyright (c) 2013 Lithu .T.V. All rights reserved.
//

#import "LTVColorArray.h"

@implementation LTVColorArray
+(LTVColorArray *)colorArray
{
    static LTVColorArray*_sharedClient = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedClient = [[LTVColorArray alloc]init];
    });
    return _sharedClient;
    
}

-(id)init
{
    self = [super init];
    self.array =[[NSMutableArray alloc]initWithCapacity:10];
    
    for (int i=0; i<10; i++)
    {
        [self.array addObject:[self getRandomColor]];
    }
    return self;
}


-(UIColor*)getColorAtIndex:(int)index
{
    NSLog(@"index :%d",index);

    NSLog(@"[self.array count] :%d",[self.array count]);



    if ([self.array count]>index) {
        return [self.array objectAtIndex:index];
    }
    else
    {
        for (int k=index; k>=[self.array count]; k--) {
            [self.array addObject:[self getRandomColor]];
        }
        
        NSLog(@"[self.array count] :%d",[self.array count]);

        return [self.array objectAtIndex:index];
        
    }
}

- (UIColor *) getRandomColor {
    CGFloat hue = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
    CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
    CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.5;
    return [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];
    
}

@end
