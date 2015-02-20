//
//  Contador.m
//  ContaPessoas
//  Created by Mariana Alvarez on 2/18/15.
//  Copyright (c) 2015 Mariana Alvarez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contador.h"

@implementation Contador

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
        _boy = 0;
        _girl = 0;
    }
    return self;
}

- (void)maisUmCueca {
    _boy++;
    [_delegate atualiza];
}
- (void)maisUmaGata {
    _girl++;
    [_delegate atualiza];
}

-(int)getBoys {
    return _boy;
}

-(int)getGirls {
    return _girl;
}

-(int)getTotal {
    return _boy + _girl;
}

@end

