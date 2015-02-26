
#import <Foundation/Foundation.h>

@class AddNode;
@class SubstractNode;

@interface Visitor: NSObject 
{

}

- (void) visit: (id) n;

@end