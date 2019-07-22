#import "ViewController.h"
#import "HCKeepBGRunManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [NSTimer scheduledTimerWithTimeInterval: 0.001
                                                  target: self
                                                selector:@selector(onTick:)
                                                userInfo: nil repeats:YES];
    
    [[HCKeepBGRunManager shareManager] startBGRun];
}

-(void)onTick:(NSTimer *)timer {
    NSDate * now = [NSDate date];
    NSDateFormatter *outputFormatter = [[NSDateFormatter alloc] init];
    [outputFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss:SSS"];
    NSString *newDateString = [outputFormatter stringFromDate:now];
    NSLog(@"时间 %@", newDateString);
}

@end
