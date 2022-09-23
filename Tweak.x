#import <Foundation/NSString.h>
#import <Foundation/NSArray.h>

@interface UIView
@property (nonatomic, assign ,readwrite) NSArray *subviews;
@end

@interface UILabel : UIView
@property (nonatomic, assign, readwrite) NSString *text;
@end

@interface IGUnifiedVideoLikeCountButton : UIView
-(void)configureWithLikeCount:(NSInteger)arg1;
@end


UIView *myView;
UILabel *myLabel;

%hook IGUnifiedVideoLikeCountButton

-(void)configureWithLikeCount:(NSInteger)arg1{
%orig;

myView = self.subviews[0];
myLabel = myView.subviews[0];
myLabel.text = [NSString stringWithFormat:@"%ld",arg1];

}


%end