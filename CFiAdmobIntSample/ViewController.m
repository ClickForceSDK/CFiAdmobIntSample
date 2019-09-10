#import "ViewController.h"

@interface ViewController ()
{
    GADInterstitial *interstitial;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Mediation
    interstitial = [[GADInterstitial alloc] initWithAdUnitID:@"ca-app-pub-7236340530869760/1865580168"];
    interstitial.delegate = self;
    GADRequest *request  = [GADRequest request];
    request.testDevices = @[ @"1ecb9a7ec3266aac8f4fc707fdd9e322" ];//request.testDevices
//    request.testDevices = @[ kGADSimulatorID ];//
    [interstitial loadRequest:request];
}
- (void) interstitialDidReceiveAd:(GADInterstitial *)ad
{
    [interstitial presentFromRootViewController:self];
    NSLog(@"Interstitial adapter class name: %@", ad.responseInfo.adNetworkClassName);//Check the value of adNetworkClassName
}


@end
