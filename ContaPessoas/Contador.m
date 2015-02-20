//
//  Contador.m
//  ContaPessoas
//
//  Created by Vinicius Miana on 2/18/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contador.h"


@implementation Contador {
    int boy;
    int girl;
}

static Contador *_instanc = nil;

+ (Contador *) instanc
{
    if (_instanc == nil)
        _instanc = [[Contador alloc] init];
    return _instanc;
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
    [_Delegar atualiza:boy :girl :[self getTotal]];
}
- (void)maisUmaGata {
    girl++;
    [_Delegar atualiza:boy :girl :[self getTotal]];
}

-(int)getBoys {
    return boy;
}

-(int)getGirls {
    return girl;
}

-(int)getTotal{
    return boy + girl;
}



@end

