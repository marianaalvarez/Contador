//
//  Contador.m
//  ContaPessoas
//  Created by Mariana Alvarez on 2/18/15.
//  Copyright (c) 2015 Mariana Alvarez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contador.h"


@implementation Contador {
    int boy;
    int girl;
    int total;
}

+ (instancetype)sharedInstance {
    static dispatch_once_t onceToken = 0;
    __strong static Contador *instance = nil;
    dispatch_once(&onceToken,^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (instancetype)init {
    self = [super init];
    if(self) {
        boy = 0;
        girl = 0;
        total = 0;
    }
    return self;
}

- (void)maisUmCueca {
    boy++;
    total = boy + girl;
}
- (void)maisUmaGata {
    girl++;
    total = boy + girl;
}

-(int)getBoys {
    return boy;
}

-(int)getGirls {
    return girl;
}

-(int)getTotal {
    return total;
}

@end

