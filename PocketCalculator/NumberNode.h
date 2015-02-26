
#import <Foundation/Foundation.h>

@class ExpressionNode;
@class NumberNode;

@interface NumberNode: ExpressionNode
{
	double number;
}

- (NumberNode *) initValue: (double) val;

@end
