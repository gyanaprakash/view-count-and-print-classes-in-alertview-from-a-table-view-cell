//
//  ViewController.h
//  TableviewCellTest
//
//  Created by Bsetecip10 on 21/10/14.
//  Copyright (c) 2014 Bsetecip10. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    NSInteger i;
}
@property (weak, nonatomic) IBOutlet UITableView *CustomeTableview;


@end

