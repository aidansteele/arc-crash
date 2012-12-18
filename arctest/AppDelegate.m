#import "AppDelegate.h"
#import "Crasher.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions;
{
  Crasher *crasher = [[Crasher alloc] init];
  [crasher crash];
  
  [self setWindow:[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]]];
  [[self window] setBackgroundColor:[UIColor whiteColor]];
  [[self window] makeKeyAndVisible];
  return YES;
}

@end
