//
//  ViewController.m
//  InTheArray
//
//  Created by 廣川政樹 on 2013/03/29.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
	[self main];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

- (void)main
{
  //配列を生成する
  NSArray *myArray = [NSArray arrayWithObjects:
                      @"Apple",
                      @"Banana",
                      @"Orange",
                      nil];
  
  //セットを生成する
  NSSet *mySet = [NSSet setWithArray:myArray];
  
  //順序付けされたセットを生成する
  NSOrderedSet *orderdSet;
  orderdSet = [NSOrderedSet orderedSetWithArray:myArray];
  
  //高速列挙を使用して配列からオブジェクトを取得する
  id value;
  for (value in myArray) {
    NSLog(@"%@", value);
  }
  
  //高速列挙を使用してセットからオブジェクトを取得する
  for (value in mySet) {
    NSLog(@"%@", value);
  }
  
  //高速列挙を使用して順序付けされたセットからオブジェクトを取得する
  for (value in orderdSet) {
    NSLog(@"%@", value);
  }
}

@end
