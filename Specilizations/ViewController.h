//
//  ViewController.h
//  Specilizations
//
//  Created by ihub on 26/10/18.
//  Copyright © 2018 ecoihub. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "NameCell.h"
#import "NameListCell.h"

#import "CityCell.h"
#import "CityListCell.h"

@interface ViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>

@property (strong, nonatomic) NSMutableArray *namesArray;
@property (strong, nonatomic) NSMutableArray *citiesArray;

@property (strong, nonatomic) IBOutlet UITableView *tablevieww;

@property (strong, nonatomic) NameCell *nameCell;
@property (strong, nonatomic) CityCell *cityCell;

@end

