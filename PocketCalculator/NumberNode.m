
#import <Foundation/Foundation.h>

#import "ExpressionNode.h"
#import "NumberNode.h"

@implementation NumberNode

- (NumberNode *) initValue: (double) val {

	self = [self init];

	number = val;

	return self;
}

@end
