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

-(id)init {
    self = [super init];
    if (self) {
        boy = 0;
        girl = 0;
        total = 0;
    }
    return self;
}

- (void)maisUmCueca {
    boy++;
}
- (void)maisUmaGata {
    girl++;
}
-(void)maisUmaPessoa {
    total++;
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

