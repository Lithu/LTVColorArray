//
//  LTVColorArray.h
//  LTVColorArrayExample
//
//  Created by Lithu.T.V on 28/11/13.
//  Copyright (c) 2013 Lithu .T.V. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LTVColorArray : NSObject
@property (nonatomic, strong)NSMutableArray  *array;
+(LTVColorArray *)colorArray;
-(UIColor*)getColorAtIndex:(int)index;

@end
