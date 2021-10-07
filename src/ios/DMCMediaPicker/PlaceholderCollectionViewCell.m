

#import "PlaceholderCollectionViewCell.h"
#define fDeviceWidth ([UIScreen mainScreen].bounds.size.width)  //设备高度的宏
@implementation PlaceholderCollectionViewCell
- (id)initWithFrame:(CGRect)frame
    {
        self = [super initWithFrame:frame];
        if (self) {
            CGFloat width=CGRectGetWidth(self.frame);

//             self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, width ,40);

            self.myLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 2, width, 40)];
            // NSLog(@"top controls label %@", myLabel);
            [self.myLabel setBackgroundColor:[UIColor whiteColor]];
            [self.myLabel setText:NSLocalizedString(@"Select Images to Upload",nil)];
            self.myLabel.textColor=[UIColor colorWithRed:68/255.0
                                              green:68/255.0
                                               blue:68/255.0
                                              alpha:1];
            self.myLabel.textAlignment = NSTextAlignmentCenter;
            [self addSubview:self.myLabel];
        }
        return self;
    }
    @end
