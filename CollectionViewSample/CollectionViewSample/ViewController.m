//
//  ViewController.m
//  CollectionViewSample
//
//  Created by codemac-017i on 25/05/17.
//  Copyright © 2017 MDMarco. All rights reserved.
//

#import "ViewController.h"
#import "DemoCollectionViewCell.h"
@interface ViewController ()
{
    NSArray *images;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    images = @[@"1",@"2",@"3",@"4",@"5",@"6"];
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return images.count;
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    DemoCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"abcd" forIndexPath:indexPath];
    cell.imgView.image = [UIImage imageNamed:images[indexPath.item]];
    return cell;
    
}
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    self.selectedImageView.image = [UIImage imageNamed:images[indexPath.item]];
}


@end
