
#import "RNMyTracker.h"
#import <MyTrackerSDK/MyTrackerSDK.h>

@implementation RNMyTracker

RCT_EXPORT_MODULE()

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

RCT_EXPORT_METHOD(trackEventWithName:(NSString *)eventName:(NSDictionary *)parameters)
{
    [MRMyTracker trackEventWithName:eventName eventParams:parameters];
}


RCT_EXPORT_METHOD(setUserInfo:(NSString *)userID)
{
    MRMyTrackerParams *trackerParams = [MRMyTracker trackerParams];
    trackerParams.customUserId = userID;
}

@end
