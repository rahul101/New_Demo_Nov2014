//
//  ViewController.m
//  json
//
//  Created by IK08 on 24/11/12.
//  Copyright (c) 2012 IK08. All rights reserved.
//

#import "ViewController.h"
#import "SBJson.h"
#import "SBJsonParser.h"
@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"hello123");
    NSLog(@"hello this is second time");
    
    
    SBJsonParser *par=[[SBJsonParser alloc]init];
    filePath = [[NSBundle mainBundle] pathForResource:@"jason" ofType:@"json"];
    
    
  //  SBJsonParser *par=[[SBJsonParser alloc]init];
     mydata=[NSData dataWithContentsOfFile:filePath];
      NSString *filecontent=[[NSString alloc]initWithData:mydata encoding:NSUTF8StringEncoding];
    NSDictionary *data=(NSDictionary*)[par objectWithString:filecontent error:nil];
    NSLog(@" data is %@",data);
   NSString *menu=(NSString *) [data objectForKey:@"AvailableRooms"];
   // ptr=(NSString*)[data objectForKey:@"d"];
   // NSLog(@" string is %@",ptr);

//    NSData *data=[NSData dataWithContentsOfFile:filePath];
//    NSString *str=[[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
//    NSMutableArray *array=(NSMutableArray *)[str JSONValue];
//    NSLog(@"list1 is %@",array);
   // item=[data valueForKey:@"d"];
    NSLog(@"item is %@",menu);
    
    // NSDictionary *data1=(NSDictionary*)[par objectWithString:menu error:nil];
     // NSLog(@"item is %@",data1);
    arr=[[NSMutableArray alloc]init];
    [arr addObject:menu];
   // arr=[NSArray arrayWithObject:menu];
    NSLog(@"arr is %@",arr);
  //  arr1=[arr valueForKey:@"Name"];
     // NSLog(@"arr1 is %@",arr1);
    
//    NSString *filecontent=[[NSString alloc]initWithContentsOfFile:filePath];
//    NSDictionary *data=(NSDictionary*)[par objectWithString:filecontent error:nil];
//    NSArray *menu=(NSArray *) [data objectForKey:@"d"];
//    NSLog(@" menu is %@",menu);
//
//    NSArray *arr=(NSArray*)[[menu objectAtIndex:0] valueForKey:@"Table"];
//    //NSLog(@" menu is %@",menu);
//    NSLog(@"arr is %@",arr);
//    
//    item  = [arr valueForKey:@"Table"];
//     NSLog(@"item is %@",item);
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	
    NSLog(@"arr %d",[arr count]);
	return [arr count];
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *MyIdentifier = @"MyIdentifier";
	
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MyIdentifier];
	if (cell == nil)
    {
		cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:MyIdentifier];
        cell.textLabel.text = [[arr objectAtIndex:0]objectForKey:@"First"];
    }
    
    
    // cell.textLabel.text = [[data objectAtIndex:indexPath.row]objectForKey:@"name"];
    // cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
    
    
}

- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
   return 70.0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
