//
//  ViewController.m
//  ScoutGamesTvOS
//
//  Created by Alex Stubbs7 on 23/12/2015.
//  Copyright © 2015 Alex Stubbs. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    PFQuery *GetFavorites = [PFQuery queryWithClassName:@"games"];
    
    [GetFavorites findObjectsInBackgroundWithBlock:^(NSArray *objects1, NSError *error)  {
        if (!error) {
            HomeArray = [[NSArray alloc] initWithArray:objects1];
            
        }
        [_hometable reloadData];
    }
     
     ];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    BOOL hasMatches = [HomeArray count] > 0;
    return hasMatches ? [HomeArray count] : 1;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    static NSString *CellIdentifier = @"HomeCell";
    BOOL hasMatches = [HomeArray count] > 0;
    
    HomeCell1 *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (hasMatches) {
        PFObject *tempObjects = [HomeArray objectAtIndex:indexPath.row];
        
        cell.cellTitle.text = [tempObjects objectForKey:@"NameGame"];
        
    } else {
        self.noGamesView.text = @"Sorry there is no games found please add games to your favourites by selecting the game, tap share and then add to favourites";
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    PFObject *tempObject = [HomeArray objectAtIndex:indexPath.row];
    NSLog(@"%@", tempObject.objectId);
    
    _NameOfGame.text = [tempObject objectForKey:@"NameGame"];
    _Items.text = [tempObject objectForKey:@"item"];
    _Des.text = [tempObject objectForKey:@"des"];
    userFirstname = [tempObject objectForKey:@"FirstName"];
    group = [tempObject objectForKey:@"group"];
    device = [tempObject objectForKey:@"Device"];
    together = [NSString stringWithFormat:@"Uploaded by %@ from %@ on a %@", userFirstname, group, device];
    PFFile *video = [tempObject objectForKey:@"Video"];
    _videoUrl = video.url;
    NSLog(@"got a video %@", _videoUrl);
    _deleteObjectID = [HomeArray objectAtIndex:indexPath.row];
    NSLog(@"%@", _deleteObjectID);
    
}


- (IBAction)logout:(id)sender {
    [PFUser logOut];
    [self performSegueWithIdentifier:@"logout" sender:self];
    
}

@end
