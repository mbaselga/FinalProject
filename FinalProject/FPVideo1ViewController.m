//
//  FPVideo1ViewController.m
//  FinalProject
//
//  Created by Marc Baselga on 12/10/13.
//  Copyright (c) 2013 Marc Baselga  Garriga. All rights reserved.
//

#import "FPVideo1ViewController.h"
#import <MediaPlayer/MediaPlayer.h>

@interface FPVideo1ViewController ()
@property (strong, nonatomic) IBOutlet UIWebView *webView;
@property (strong, nonatomic) NSTimer *timer;
@property (strong, nonatomic) MPMoviePlayerController *moviePlayer;
@end

@implementation FPVideo1ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
NSString*urlString = @"http://www.youtube.com/watch?v=wKB7zfopiUA";
    NSURL *url = [[NSURL alloc] initWithString:urlString];
    NSURLRequest *urlRequest = [[NSURLRequest alloc] initWithURL:url];
    [self.webView loadRequest:urlRequest];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
