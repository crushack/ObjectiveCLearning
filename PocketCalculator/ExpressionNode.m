
#import <Foundation/Foundation.h>

#import "ExpressionNode.h"

@implementation ExpressionNode

- (ExpressionNode *) left {
	return left;
}

- (ExpressionNode *) right {
	return right;
}

- (void) setLeft: (ExpressionNode *) node {
	left = node;
}

- (void) setRight: (ExpressionNode *) node {
	right = node;
}

- (void) accept: (Visitor *) v {
	[v visit: self];
}

- (ExpressionNode * ) initLeft: (ExpressionNode *) l {

	self = [self init];
	left = l;

	return self;
}

- (ExpressionNode * ) initLeft: (ExpressionNode *) l andRight: (ExpressionNode *) r {

	self = [self initLeft: l];
	right = r;

	return self;
}

@end
