//
//  FPMediaVideoViewController.m
//  FinalProject
//
//  Created by Marc Baselga on 13/10/13.
//  Copyright (c) 2013 Marc Baselga  Garriga. All rights reserved.
//

#import "FPMediaVideoViewController.h"
#import <MediaPlayer/MediaPlayer.h>

@interface FPMediaVideoViewController ()
@property (strong, nonatomic) IBOutlet UIWebView *webView;
@property (strong, nonatomic) NSTimer *timer;
@property (strong, nonatomic) MPMoviePlayerController *moviePlayer;
@end

@implementation FPMediaVideoViewController

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
    
    self.timer = [NSTimer scheduledTimerWithTimeInterval:3 target:self selector:@selector(playMovieOnTimer:) userInfo:nil repeats:NO];
}

- (void) playMovieOnTimer: (NSTimer *) theTimer{
    
    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle]
                                         pathForResource:@"fox2" ofType:@"mov"]];
    
    self.moviePlayer = [[MPMoviePlayerController alloc] initWithContentURL:url];
    
    self.moviePlayer.controlStyle = MPMovieControlStyleDefault;
    self.moviePlayer.shouldAutoplay = NO;
    [self.view addSubview:self.moviePlayer.view];
    [self.moviePlayer setFullscreen:YES animated:YES];
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
