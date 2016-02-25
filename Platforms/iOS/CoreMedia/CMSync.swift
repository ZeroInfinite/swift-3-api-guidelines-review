
class CMClock {
}
@available(*, deprecated, renamed="CMClock")
typealias CMClockRef = CMClock
@available(*, deprecated, renamed="CMTimebase")
typealias CMTimebaseRef = CMTimebase
class CMTimebase {
}
@available(*, deprecated, renamed="CMClockOrTimebase")
typealias CMClockOrTimebaseRef = CMClockOrTimebase
typealias CMClockOrTimebase = CFTypeRef
var kCMClockError_MissingRequiredParameter: OSStatus { get }
var kCMClockError_InvalidParameter: OSStatus { get }
var kCMClockError_AllocationFailed: OSStatus { get }
var kCMClockError_UnsupportedOperation: OSStatus { get }
var kCMTimebaseError_MissingRequiredParameter: OSStatus { get }
var kCMTimebaseError_InvalidParameter: OSStatus { get }
var kCMTimebaseError_AllocationFailed: OSStatus { get }
var kCMTimebaseError_TimerIntervalTooShort: OSStatus { get }
var kCMTimebaseError_ReadOnly: OSStatus { get }
var kCMSyncError_MissingRequiredParameter: OSStatus { get }
var kCMSyncError_InvalidParameter: OSStatus { get }
var kCMSyncError_AllocationFailed: OSStatus { get }
var kCMSyncError_RateMustBeNonZero: OSStatus { get }
@available(iOS 6.0, *)
func CMClockGetTypeID() -> CFTypeID
@available(iOS 6.0, *)
func CMClockGetHostTimeClock() -> CMClock
@available(iOS 6.0, *)
func CMClockConvertHostTimeToSystemUnits(_ hostTime: CMTime) -> UInt64
@available(iOS 6.0, *)
func CMClockMakeHostTimeFromSystemUnits(_ hostTime: UInt64) -> CMTime
@available(iOS 6.0, *)
func CMClockGetTime(_ clock: CMClock) -> CMTime
@available(iOS 6.0, *)
func CMClockGetAnchorTime(_ clock: CMClock, _ outClockTime: UnsafeMutablePointer<CMTime>, _ outReferenceClockTime: UnsafeMutablePointer<CMTime>) -> OSStatus
@available(iOS 6.0, *)
func CMClockMightDrift(_ clock: CMClock, _ otherClock: CMClock) -> Bool
@available(iOS 6.0, *)
func CMClockInvalidate(_ clock: CMClock)
@available(iOS 6.0, *)
func CMTimebaseGetTypeID() -> CFTypeID
@available(iOS 6.0, *)
func CMTimebaseCreateWithMasterClock(_ allocator: CFAllocator?, _ masterClock: CMClock, _ timebaseOut: UnsafeMutablePointer<CMTimebase?>) -> OSStatus
@available(iOS 6.0, *)
func CMTimebaseCreateWithMasterTimebase(_ allocator: CFAllocator?, _ masterTimebase: CMTimebase, _ timebaseOut: UnsafeMutablePointer<CMTimebase?>) -> OSStatus
@available(iOS 9.0, *)
func CMTimebaseCopyMasterTimebase(_ timebase: CMTimebase) -> CMTimebase?
@available(iOS 9.0, *)
func CMTimebaseCopyMasterClock(_ timebase: CMTimebase) -> CMClock?
@available(iOS 9.0, *)
func CMTimebaseCopyMaster(_ timebase: CMTimebase) -> CMClockOrTimebase?
@available(iOS 9.0, *)
func CMTimebaseCopyUltimateMasterClock(_ timebase: CMTimebase) -> CMClock?
@available(iOS, introduced=6.0, deprecated=9.0)
func CMTimebaseGetMasterTimebase(_ timebase: CMTimebase) -> CMTimebase?
@available(iOS, introduced=6.0, deprecated=9.0)
func CMTimebaseGetMasterClock(_ timebase: CMTimebase) -> CMClock?
@available(iOS, introduced=6.0, deprecated=9.0)
func CMTimebaseGetMaster(_ timebase: CMTimebase) -> CMClockOrTimebase?
@available(iOS, introduced=6.0, deprecated=9.0)
func CMTimebaseGetUltimateMasterClock(_ timebase: CMTimebase) -> CMClock?
@available(iOS 6.0, *)
func CMTimebaseGetTime(_ timebase: CMTimebase) -> CMTime
@available(iOS 6.0, *)
func CMTimebaseGetTimeWithTimeScale(_ timebase: CMTimebase, _ timescale: CMTimeScale, _ method: CMTimeRoundingMethod) -> CMTime
@available(iOS 6.0, *)
func CMTimebaseSetTime(_ timebase: CMTimebase, _ time: CMTime) -> OSStatus
@available(iOS 6.0, *)
func CMTimebaseSetAnchorTime(_ timebase: CMTimebase, _ timebaseTime: CMTime, _ immediateMasterTime: CMTime) -> OSStatus
@available(iOS 6.0, *)
func CMTimebaseGetRate(_ timebase: CMTimebase) -> Float64
@available(iOS 6.0, *)
func CMTimebaseGetTimeAndRate(_ timebase: CMTimebase, _ outTime: UnsafeMutablePointer<CMTime>, _ outRate: UnsafeMutablePointer<Float64>) -> OSStatus
@available(iOS 6.0, *)
func CMTimebaseSetRate(_ timebase: CMTimebase, _ rate: Float64) -> OSStatus
@available(iOS 6.0, *)
func CMTimebaseSetRateAndAnchorTime(_ timebase: CMTimebase, _ rate: Float64, _ timebaseTime: CMTime, _ immediateMasterTime: CMTime) -> OSStatus
@available(iOS 6.0, *)
func CMTimebaseGetEffectiveRate(_ timebase: CMTimebase) -> Float64
@available(iOS 6.0, *)
func CMTimebaseAddTimer(_ timebase: CMTimebase, _ timer: CFRunLoopTimer, _ runloop: CFRunLoop) -> OSStatus
@available(iOS 6.0, *)
func CMTimebaseRemoveTimer(_ timebase: CMTimebase, _ timer: CFRunLoopTimer) -> OSStatus
@available(iOS 6.0, *)
func CMTimebaseSetTimerNextFireTime(_ timebase: CMTimebase, _ timer: CFRunLoopTimer, _ fireTime: CMTime, _ flags: UInt32) -> OSStatus
@available(iOS 6.0, *)
func CMTimebaseSetTimerToFireImmediately(_ timebase: CMTimebase, _ timer: CFRunLoopTimer) -> OSStatus
@available(iOS 6.0, *)
func CMTimebaseAddTimerDispatchSource(_ timebase: CMTimebase, _ timerSource: dispatch_source_t) -> OSStatus
@available(iOS 6.0, *)
func CMTimebaseRemoveTimerDispatchSource(_ timebase: CMTimebase, _ timerSource: dispatch_source_t) -> OSStatus
@available(iOS 6.0, *)
func CMTimebaseSetTimerDispatchSourceNextFireTime(_ timebase: CMTimebase, _ timerSource: dispatch_source_t, _ fireTime: CMTime, _ flags: UInt32) -> OSStatus
@available(iOS 6.0, *)
func CMTimebaseSetTimerDispatchSourceToFireImmediately(_ timebase: CMTimebase, _ timerSource: dispatch_source_t) -> OSStatus
@available(iOS 6.0, *)
func CMSyncGetRelativeRate(_ ofClockOrTimebase: CMClockOrTimebase, _ relativeToClockOrTimebase: CMClockOrTimebase) -> Float64
@available(iOS 6.0, *)
func CMSyncGetRelativeRateAndAnchorTime(_ ofClockOrTimebase: CMClockOrTimebase, _ relativeToClockOrTimebase: CMClockOrTimebase, _ outRelativeRate: UnsafeMutablePointer<Float64>, _ outOfClockOrTimebaseAnchorTime: UnsafeMutablePointer<CMTime>, _ outRelativeToClockOrTimebaseAnchorTime: UnsafeMutablePointer<CMTime>) -> OSStatus
@available(iOS 6.0, *)
func CMSyncConvertTime(_ time: CMTime, _ fromClockOrTimebase: CMClockOrTimebase, _ toClockOrTimebase: CMClockOrTimebase) -> CMTime
@available(iOS 6.0, *)
func CMSyncMightDrift(_ clockOrTimebase1: CMClockOrTimebase, _ clockOrTimebase2: CMClockOrTimebase) -> Bool
@available(iOS 6.0, *)
func CMSyncGetTime(_ clockOrTimebase: CMClockOrTimebase) -> CMTime
@available(iOS 6.0, *)
func CMTimebaseNotificationBarrier(_ timebase: CMTimebase) -> OSStatus
@available(iOS 6.0, *)
let kCMTimebaseNotification_EffectiveRateChanged: CFString
@available(iOS 6.0, *)
let kCMTimebaseNotification_TimeJumped: CFString
@available(iOS 7.0, *)
let kCMTimebaseNotificationKey_EventTime: CFString
