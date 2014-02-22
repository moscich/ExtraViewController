//
// Created by Marek Mościchowski on 22/02/14.
//


#import "ExtraViewControllers.h"
#import "TyphoonDefinition.h"
#import "LoremPixelViewController.h"


@implementation ExtraViewControllers
{

}

- (TyphoonDefinition *)registerLoremPixelViewController
{
    return [TyphoonDefinition withClass:[LoremPixelViewController class] properties:^(TyphoonDefinition *definition)
    {
        [definition injectProperty:@selector(title) withValueAsText:@"Extra Stuff"];
    }];
}

@end