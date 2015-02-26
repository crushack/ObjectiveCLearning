
#import <Foundation/Foundation.h>

#import "Visitor.h"

@class ExpressionNode;

@interface ExpressionNode: NSObject
{
	ExpressionNode * left;
	ExpressionNode * right;
}

- (ExpressionNode * ) initLeft: (ExpressionNode *) l;
- (ExpressionNode * ) initLeft: (ExpressionNode *) l andRight: (ExpressionNode *) r;

- (ExpressionNode *) left;
- (ExpressionNode *) right;

- (void) accept: (Visitor *) v;
- (void) setLeft: (ExpressionNode *) node;
- (void) setRight: (ExpressionNode *) node;

@end