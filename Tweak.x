#import <Foundation/NSString.h>
#import <Foundation/NSArray.h>

@interface UILabel
@property (nonatomic, assign, readwrite) NSString *text;
@end

@interface IGUnifiedVideoLikeCountButton : UIView
-(void)configureWithLikeCount:(NSInteger)arg1;
@end



%hook IGUnifiedVideoLikeCountButton

-(void)configureWithLikeCount:(NSInteger)arg1{
%orig;

UILabel *myLabel = MSHookIvar<UILabel*>(self,"_label");
myLabel.text = [NSString stringWithFormat:@"%ld",arg1];

}


%end
