
#import "RNComunicacaoNativa.h"

@implementation RNComunicacaoNativa

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(test, checkBridge:(RCTPromiseResolveBlock)resolve
                 rejecter:(RCTPromiseRejectBlock)reject)
{
  if(test){
    resolve(test);
  }else {
    reject(@"no_test", @"isso e so um test", error)
  }
}

@end
  