
#import <Foundation/Foundation.h>

#import "Visitor.h"

@class ExpressionNode;

@interface ExpresionParser: NSObject
{
	int position;
}

- (ExpressionNode *) parse: (NSString *) expression;

- (ExpressionNode *) _parsePlus: (NSString * ) expression;
- (ExpressionNode *) _parseMul: (NSString * ) expression;
- (ExpressionNode *) _getVal: (NSString * ) expression;

@end
