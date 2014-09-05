//
//  FPsurpriseVideoViewController.m
//  FinalProject
//
//  Created by Marc Baselga on 12/10/13.
//  Copyright (c) 2013 Marc Baselga  Garriga. All rights reserved.
//

#import "FPsurpriseVideoViewController.h"
#import <MediaPlayer/MediaPlayer.h>

@interface FPsurpriseVideoViewController ()

@property (strong, nonatomic) IBOutlet UIWebView *webView;
@property (strong, nonatomic) IBOutlet UILabel *swipeTextLabel;
@property (strong, nonatomic) NSTimer *timer;
@property (nonatomic, strong) UISwipeGestureRecognizer *swipeRecognizer;
@property (strong, nonatomic) MPMoviePlayerController *moviePlayer;
@end


@implementation FPsurpriseVideoViewController

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
    NSString*urlString = @"http://www.youtube.com/watch?v=My2FRPA3Gf8";
    NSURL *url = [[NSURL alloc] initWithString:urlString];
    NSURLRequest *urlRequest = [[NSURLRequest alloc] initWithURL:url];
    [self.webView loadRequest:urlRequest];
    self.swipeRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeRecognizer)];
    [self.view addGestureRecognizer:self.swipeRecognizer];
    
    [self.webView setHidden:YES];
    
}

-(void) handleSwipeRecognizer
{
    [self.webView setHidden:NO];
    [self.swipeTextLabel setHidden:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
