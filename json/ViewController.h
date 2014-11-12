//
//  ViewController.h
//  json
//
//  Created by IK08 on 24/11/12.
//  Copyright (c) 2012 IK08. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface ViewController : UIViewController{
    IBOutlet UIImageView *imgview;
    IBOutlet UITableView *tblview;
    NSString *filePath ;
    NSArray *item;
 NSMutableArray *arr;
    NSArray *arr1;
    NSData *mydata;
}
@property(strong,nonatomic)IBOutlet UIImageView *imgview;
@property(strong,nonatomic)IBOutlet UITableView *tblview;
@property(strong,nonatomic)NSString *filePath ;
@property(strong,nonatomic)IBOutlet UIImageView *image1;
@property(strong,nonatomic)IBOutlet UIImageView *image2;

-(IBAction)action;
-(IBAction)thread;


@end
