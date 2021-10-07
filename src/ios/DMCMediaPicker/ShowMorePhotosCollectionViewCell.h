

#import <UIKit/UIKit.h>
#import "DmcPickerViewController.h"
@interface ShowMorePhotosCollectionViewCell : UICollectionViewCell
    @property(nonatomic ,strong)UILabel *myLabel;
    @property(nonatomic ,strong)UIButton *button;
    @property (nonatomic, retain) DmcPickerViewController *_delegate;
@end
