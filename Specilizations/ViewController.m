//
//  ViewController.m
//  Specilizations
//
//  Created by ihub on 26/10/18.
//  Copyright © 2018 ecoihub. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize namesArray,citiesArray;
@synthesize nameCell,cityCell;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    namesArray = [[NSMutableArray alloc]init];
    citiesArray = [[NSMutableArray alloc]init];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 4;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0) {
        return 1;
    }else if (section == 1){
        return namesArray.count;
    }else if (section == 2){
        return 1;
    }else{
        return citiesArray.count;
    }
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        nameCell = (NameCell*)[tableView dequeueReusableCellWithIdentifier:@"NameCell"];
        [nameCell.addBtnOutlet addTarget:self action:@selector(addTpd:) forControlEvents:UIControlEventTouchUpInside];
        return nameCell;
    }else if (indexPath.section == 1){
        NameListCell *nameListCell = (NameListCell*)[tableView dequeueReusableCellWithIdentifier:@"NameListCell"];
        nameListCell.textLabel.text = [namesArray objectAtIndex:indexPath.row];
        return nameListCell;
    }else if (indexPath.section == 2){
        cityCell = (CityCell*)[tableView dequeueReusableCellWithIdentifier:@"CityCell"];
        [cityCell.addBtnOutlet addTarget:self action:@selector(add2Tpd:) forControlEvents:UIControlEventTouchUpInside];
        return cityCell;
    }else{
        CityListCell *cityList = (CityListCell*)[tableView dequeueReusableCellWithIdentifier:@"CityListCell"];
        cityList.textLabel.text = [citiesArray objectAtIndex:indexPath.row];
        return cityList;
    }
}

-(IBAction)addTpd:(id)sender
{
    NSLog(@"Add Tapped");
    
    NSLog(@"AddedTextField:%@",nameCell.nameTxtFld.text);
    [namesArray addObject:nameCell.nameTxtFld.text];
//    namesArray = [[NSMutableArray alloc]initWithObjects:@"Nikhil",@"Naresh",@"Charan", nil];
    [self.tablevieww reloadData];
}

-(IBAction)add2Tpd:(id)sender{
    NSLog(@"Add Tapped");
    
//    NSLog(@"AddedTextField:%@",cityCell.cityNameTxtFld.text);
    [citiesArray addObject:cityCell.cityNameTxtFld.text];
    //    namesArray = [[NSMutableArray alloc]initWithObjects:@"Nikhil",@"Naresh",@"Charan", nil];
    [self.tablevieww reloadData];
}

@end
