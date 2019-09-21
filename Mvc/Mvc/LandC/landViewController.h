//
//  landViewController.h
//  Mvc
//
//  Created by 岳靖翔 on 2019/9/21.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LandModel.h"
#import "landview.h"
NS_ASSUME_NONNULL_BEGIN

@interface landViewController : UIViewController
@property (nonatomic,strong)landview * landView;
@property (nonatomic,strong)LandModel* landModel;
@end

NS_ASSUME_NONNULL_END
