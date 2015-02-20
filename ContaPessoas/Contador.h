//
//  Contador.h
//  ContaPessoas
//
//  Created by Mariana Alvarez on 2/18/15.
//  Copyright (c) 2015 Mariana Alvarez. All rights reserved.
//

@protocol Mostrador <NSObject>

@required

- (void)atualiza;

@end

@interface Contador : NSObject

@property(nonatomic, retain) id <Mostrador>delegate;

@property int boy;
@property int girl;

+ (instancetype)sharedInstance;
- (void)maisUmCueca;
- (void)maisUmaGata;

-(int)getBoys;
-(int)getGirls;
-(int)getTotal;

@end

