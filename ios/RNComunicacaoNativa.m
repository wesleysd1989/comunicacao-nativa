
#import "RNComunicacaoNativa.h"

@implementation RNComunicacaoNativa

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(checkBridge:(RCTPromiseResolveBlock)resolve
                 rejecter:(RCTPromiseRejectBlock)reject)
{
  resolve(@"modulo nativo");
}

@end
  