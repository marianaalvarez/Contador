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
}

-(id)init {
    self = [super init];
    if (self) {
        boy = 0;
        girl = 0;
    }
    return self;
}

- (void)maisUmCueca {
    boy = boy + 1;
}
- (void)maisUmaGata {
    girl++;
}

-(int)getBoys {
    return boy;
}

-(int)getGirls {
    return girl;
}



@end

