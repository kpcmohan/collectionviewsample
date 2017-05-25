//
//  ViewController.h
//  CollectionViewSample
//
//  Created by codemac-017i on 25/05/17.
//  Copyright © 2017 MDMarco. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UICollectionViewDelegate,UICollectionViewDataSource>
@property (strong, nonatomic) IBOutlet UIImageView *selectedImageView;


@end

