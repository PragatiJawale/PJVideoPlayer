//
//  ViewController.h
//  PJVideoPlayer
//
//  Created by Mac on 11/10/16.
//  Copyright © 2016 Pragati Jawale. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
@interface ViewController : UIViewController

{
    AVPlayer *player;
    AVPlayerLayer *movieplayerLayer;
    NSURL  *fileURL;
}


- (IBAction)actionPlayPouse:(id)sender;
- (IBAction)actionStop:(id)sender;

@end

