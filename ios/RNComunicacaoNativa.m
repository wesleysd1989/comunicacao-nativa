
#import "RNComunicacaoNativa.h"
#import "RTCLog.h"

@implementation RNComunicacaoNativa

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(checkBridge:(RCTPromiseResolveBlock)resolve
                 rejecter:(RCTPromiseRejectBlock)reject)
{
  resolve(@"modulo nativo ios");
}

RCT_EXPORT_METHOD(addMsg:(NSString *)ola mundo(NSString *)mundo)
{
  RTCLogInfo(@"um teste de %@ %@", ola, mundo);
}

@end
  