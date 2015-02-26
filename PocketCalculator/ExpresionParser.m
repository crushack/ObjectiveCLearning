
#import <Foundation/Foundation.h>

#import "ExpresionParser.h"
#import "ExpressionNode.h"
#import "AddNode.h"
#import "SubstractNode.h"
#import "MultiplyNode.h"
#import "DivideNode.h"
#import "NumberNode.h"

@class ExpressionNode;

@implementation ExpresionParser 

- (ExpressionNode *) parse: ( NSString *) expression {
	position = 0;
	return [self _parsePlus: expression];
}

- (ExpressionNode *) _parsePlus: (NSString * ) expression {

	ExpressionNode * ret = [self _parseMul: expression];
	while ( [expression characterAtIndex: position] == '+' ||
		    [expression characterAtIndex: position] == '-' ) {
		++ position;
		if ( [expression characterAtIndex: position - 1] == '+' ) {
			ret = [[AddNode alloc] initLeft: ret 
					andRight: [self _parseMul: expression] ];
		} else {
			ret = [[SubstractNode alloc] initLeft: ret 
					andRight: [self _parseMul: expression] ];
		}
	}
	return ret;
}

- (ExpressionNode *) _parseMul: (NSString * ) expression {

	ExpressionNode * ret = [self _getVal: expression];
	while ( [expression characterAtIndex: position] == '*' ||
		    [expression characterAtIndex: position] == '/' ) {
		++ position;
		if ( [expression characterAtIndex: position - 1] == '*' ) {
			ret = [[AddNode alloc] initLeft: ret 
					andRight: [self _parseMul: expression] ];
		} else {
			ret = [[SubstractNode alloc] initLeft: ret 
					andRight: [self _parseMul: expression] ];
		}
	}
	return ret;
}

- (ExpressionNode *) _getVal: (NSString * ) expression {

	ExpressionNode * ret;

	switch ( [expression characterAtIndex: position] ) {

		case '(':
			++ position; // '('
			ret = [self _parsePlus: expression];
			++ position; // ')'
		break;

		default:
			// TODO: getNumericalValue
		{
			double val = 0;

			for (; '0' <= [expression characterAtIndex: position] &&
				   '9' >= [expression characterAtIndex: position];
				   ++ position) {
				val = val * 10 + [expression characterAtIndex: position] - '0';
			}

			if ( [expression characterAtIndex: position] == '.' ) {

				++ position;

				double exponent = 1;
				for (; '0' <= [expression characterAtIndex: position] &&
				   '9' >= [expression characterAtIndex: position];
				   ++ position) {

					exponent /= 10;
					val += exponent * ([expression characterAtIndex: position] - '0');
				}
			}

			ret = [[NumberNode alloc] initValue: val];
		}
		break;
	}

	return ret;
}

@end