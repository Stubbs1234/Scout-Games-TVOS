//
//  ViewController.h
//  ScoutGamesTvOS
//
//  Created by Alex Stubbs7 on 23/12/2015.
//  Copyright © 2015 Alex Stubbs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import "HomeCell1.h"

@interface ViewController : UIViewController <UITableViewDelegate > {
    
    NSArray *HomeArray;
    NSArray *labelArray;
    NSArray *WatchArray;
    NSString *objectId1;
    NSString *objectId2;
    NSString *email;
    NSString *paidString;
    NSString *dateString;
    NSString *dateString1;
    NSString *emailAddress;
    NSString *country;
    NSString *dateFinish;
    NSString *firstName;
    NSString *lastName;
    NSString *trail;
    NSString *dateForString;
    NSString *tenOn;
    NSString *sub;
    NSString *countryString;
    NSString *upload;
    NSString *together;
    NSString *device;
    NSString *group;
    NSString *userFirstname;
}
@property (strong, nonatomic) IBOutlet UIView *noGamesViewBack;
@property (weak, nonatomic) IBOutlet UILabel *userUploadLabel;
@property (strong, nonatomic) IBOutlet UILabel *noGamesView;
@property (strong, nonatomic) IBOutlet UILabel *userName;
@property (strong, nonatomic) IBOutlet UITableView *hometable;
@property (strong, nonatomic) PFObject *deleteObjectID;
@property (strong, nonatomic) NSTimer *timer;
@property (strong, nonatomic) NSString *home1String;
@property (strong, nonatomic) NSString *home2String;
@property (strong, nonatomic) NSString *home3String;
@property (strong, nonatomic) NSString *home4String;
@property (strong, nonatomic) NSString *home5String;
@property (strong, nonatomic) NSString *home6String;
@property (strong, nonatomic) IBOutlet UIButton *logout;
@property (weak, nonatomic) IBOutlet UIView *detailView;
@property (weak, nonatomic) IBOutlet UILabel *NameOfGame;
@property (weak, nonatomic) IBOutlet UITextView * Items;
@property (weak, nonatomic) IBOutlet UITextView * Des;
@property (strong, nonatomic) IBOutlet UIButton * backBtn;
@property (strong, nonatomic) IBOutlet UIButton * favs;
@property (strong, nonatomic) IBOutlet UIButton * add;
@property (strong, nonatomic) IBOutlet UIButton * video;
@property (strong, nonatomic) NSString * videoUrl;
@property (strong, nonatomic) NSString * Name;
@property (strong, nonatomic) NSString * iTem;
@property (strong, nonatomic) NSString * desString;
@property (strong, nonatomic) NSString *AppleWatch;
@property (nonatomic, strong) NSString *mainTitle;
@property (nonatomic, strong) NSString *subTitle;
@property (strong, nonatomic) NSString *imageUrl;
@property (strong, nonatomic) NSURL *webAddress;
- (IBAction)logout:(id)sender;

@end

