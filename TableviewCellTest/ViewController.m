//
//  ViewController.m
//  TableviewCellTest
//
//  Created by Bsetecip10 on 21/10/14.
//  Copyright (c) 2014 Bsetecip10. All rights reserved.
//

#import "ViewController.h"
#import "tableviewcell.h"

@interface ViewController ()
{
    NSMutableString *datastring;
    NSInteger k;
}

@end

@implementation ViewController

@synthesize CustomeTableview;
- (void)viewDidLoad
{
    datastring = [[NSMutableString alloc]init];
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark uitableview delegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier =@"tableviewcell";
    tableviewcell *cell=[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell==nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"tableviewcell" owner:self options:nil];
        cell = [nib objectAtIndex:0];

    }
    
    i =self.accessibilityElementCount;
    NSLog(@"%ld",i);
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 350;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    tableviewcell *cell = (tableviewcell *)[tableView cellForRowAtIndexPath:indexPath];
    
    NSArray *objects = [cell.contentView subviews];
    
     NSString *cout = [NSString stringWithFormat:@"%lu",(unsigned long)[objects count]];
    
    for (i=0; i<[objects count]; i++)
        
    {
        
        NSString *currentelement = NSStringFromClass([[objects objectAtIndex:i] class]);
        
        if (i == [objects count]-1) {
        
            [datastring appendString:[NSString stringWithFormat:@"\n%@",currentelement]];
        }
        else
        [datastring appendString:[NSString stringWithFormat:@"\n%@ ",currentelement]];
        
        NSLog(@"%@",currentelement);
    }
    
    NSString * alertmsg=[NSString stringWithFormat:@"%@ \n %@",cout,datastring];
    UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"No of attributes" message:alertmsg delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    
    [alert show];
}
@end
