//
//  ViewController.m
//  PJVideoPlayer
//
//  Created by Mac on 11/10/16.
//  Copyright © 2016 Pragati Jawale. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
   fileURL =[[NSBundle mainBundle]URLForResource:@"meraVideo" withExtension:@"mp4"];
    NSLog(@"%@",fileURL);
    player =[[AVPlayer alloc]initWithURL:fileURL];
    
    movieplayerLayer =[AVPlayerLayer playerLayerWithPlayer:player];
    
    
    
    
   // [player play];
    
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionPlayPouse:(id)sender {
    UIButton *button =sender;
    
    if (button.tag == 0) {
        
        button.tag = 1;
        
        [movieplayerLayer setFrame:CGRectMake(60, 70, 300, 200)];
        [self.view.layer addSublayer:movieplayerLayer];

        
        [player play];
    }
    else if (button.tag == 1) {
        //pause
        button.tag = 0;
        [player pause];
    }
    
}







- (IBAction)actionStop:(id)sender {
    [player pause];
    
    player = [[AVPlayer alloc]initWithURL:fileURL];
    
    movieplayerLayer = [AVPlayerLayer playerLayerWithPlayer:player];
    
}
@end
