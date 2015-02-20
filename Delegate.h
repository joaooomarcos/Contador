//
//  Delegate.h
//  ContaPessoas
//
//  Created by João Marcos on 20/02/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Del <NSObject>
@required

- (void) atualiza: (int)boys: (int)girls : (int)total;

@end
