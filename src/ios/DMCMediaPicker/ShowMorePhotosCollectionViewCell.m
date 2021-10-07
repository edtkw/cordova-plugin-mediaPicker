

#import "ShowMorePhotosCollectionViewCell.h"
#import "DmcPickerViewController.h"
#define fDeviceWidth ([UIScreen mainScreen].bounds.size.width)  //设备高度的宏
@implementation ShowMorePhotosCollectionViewCell
- (id)initWithFrame:(CGRect)frame
    {
        self = [super initWithFrame:frame];
        if (self) {

            CGFloat width=CGRectGetWidth(self.frame);

            self.myLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, width, 40)];
            [self.myLabel setBackgroundColor:[UIColor whiteColor]];
            [self.myLabel setText:NSLocalizedString(@"Don't see what you're looking for?",nil)];
            self.myLabel.textColor=[UIColor colorWithRed:68/255.0
                                              green:68/255.0
                                               blue:68/255.0
                                              alpha:1];
            self.myLabel.textAlignment = NSTextAlignmentCenter;
            [self addSubview:self.myLabel];

            self.button = [UIButton buttonWithType:UIButtonTypeSystem];
            [self.button addTarget:self
                       action:@selector(editButtonTapped:)
             forControlEvents:UIControlEventTouchUpInside];
            [self.button setTitle:NSLocalizedString(@"Select More Photos",nil) forState:UIControlStateNormal];
            self.button.frame = CGRectMake(20, 40, width - 40,40);

            [self.button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];

            self.button.layer.cornerRadius = 4;
            self.button.backgroundColor= [UIColor colorWithRed:0/255.0
                                                    green:124/255.0
                                                     blue:211/255.0
                                                    alpha:1];

            [self addSubview:self.button];
        }
        return self;
    }

-(void)editButtonTapped:(UITapGestureRecognizer *)tap {
//     NSLog(@"in cell - editButtonTapped %@", self._delegate);

    if(self._delegate){
//         NSLog(@"in cell - have delegate");
        [self._delegate editButtonTapped];
    }
}
    @end
