//
// Created by Marek Mościchowski on 22/02/14.
//


#import "LoremPixelViewController.h"
#import "UIImageView+LoremPixel.h"


@implementation LoremPixelViewController {

}

- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor whiteColor];

    // get screen size
    CGSize screenSize = [[UIScreen mainScreen] bounds].size;

    // itarate 16 times to add imageviews
    for(int i = 0; i < 16; i++)
    {
        // create an imageView
        UIImageView *imageView = [[UIImageView alloc] init];
        // assign its frame
        imageView.frame = CGRectMake(10 + (i%4)*(screenSize.width/4.2), 100 + (i/4)*(screenSize.width/4.2),screenSize.width/4.5, screenSize.width/4.5);

        // To showcase different categories, 14 first images will be loaded from different category
        if(i < 14)
        {
            // Load dummy image for current imageView frame in category, b&w or color and with optional dummy text written on the image
            [imageView getDummyImageForCategory:i
                                         inGray:i%2==0
                                  withDummyText:[NSString stringWithFormat:@"imageNr%d",i]];
        }
        else
        {
            // For the last 2 images just load a random image for current imageView frame size
            [imageView getDummyImage];
        }

        // add newly created imageView to viewControllers view.
        [self.view addSubview:imageView];
    }
}

@end