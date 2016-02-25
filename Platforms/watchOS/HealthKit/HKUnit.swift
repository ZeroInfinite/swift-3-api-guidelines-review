
@available(watchOS 2.0, *)
class HKUnit : NSObject, NSSecureCoding, NSCopying {
  var unitString: String { get }
  convenience init(fromString string: String)
  convenience init(fromMassFormatterUnit massFormatterUnit: NSMassFormatterUnit)
  class func massFormatterUnitFromUnit(_ unit: HKUnit) -> NSMassFormatterUnit
  convenience init(fromLengthFormatterUnit lengthFormatterUnit: NSLengthFormatterUnit)
  class func lengthFormatterUnitFromUnit(_ unit: HKUnit) -> NSLengthFormatterUnit
  convenience init(fromEnergyFormatterUnit energyFormatterUnit: NSEnergyFormatterUnit)
  class func energyFormatterUnitFromUnit(_ unit: HKUnit) -> NSEnergyFormatterUnit
  func isNull() -> Bool
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(watchOS 2.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
@available(watchOS 2.0, *)
enum HKMetricPrefix : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case None
  case Pico
  case Nano
  case Micro
  case Milli
  case Centi
  case Deci
  case Deca
  case Hecto
  case Kilo
  case Mega
  case Giga
  case Tera
}
extension HKUnit {
  class func gramUnitWithMetricPrefix(_ prefix: HKMetricPrefix) -> Self
  class func gramUnit() -> Self
  class func ounceUnit() -> Self
  class func poundUnit() -> Self
  class func stoneUnit() -> Self
  class func moleUnitWithMetricPrefix(_ prefix: HKMetricPrefix, molarMass gramsPerMole: Double) -> Self
  class func moleUnitWithMolarMass(_ gramsPerMole: Double) -> Self
}
extension HKUnit {
  class func meterUnitWithMetricPrefix(_ prefix: HKMetricPrefix) -> Self
  class func meterUnit() -> Self
  class func inchUnit() -> Self
  class func footUnit() -> Self
  @available(watchOS 2.0, *)
  class func yardUnit() -> Self
  class func mileUnit() -> Self
}
extension HKUnit {
  class func literUnitWithMetricPrefix(_ prefix: HKMetricPrefix) -> Self
  class func literUnit() -> Self
  class func fluidOunceUSUnit() -> Self
  class func fluidOunceImperialUnit() -> Self
  class func pintUSUnit() -> Self
  class func pintImperialUnit() -> Self
  @available(watchOS 2.0, *)
  class func cupUSUnit() -> Self
  @available(watchOS 2.0, *)
  class func cupImperialUnit() -> Self
}
extension HKUnit {
  class func pascalUnitWithMetricPrefix(_ prefix: HKMetricPrefix) -> Self
  class func pascalUnit() -> Self
  class func millimeterOfMercuryUnit() -> Self
  class func centimeterOfWaterUnit() -> Self
  class func atmosphereUnit() -> Self
}
extension HKUnit {
  class func secondUnitWithMetricPrefix(_ prefix: HKMetricPrefix) -> Self
  class func secondUnit() -> Self
  class func minuteUnit() -> Self
  class func hourUnit() -> Self
  class func dayUnit() -> Self
}
extension HKUnit {
  class func jouleUnitWithMetricPrefix(_ prefix: HKMetricPrefix) -> Self
  class func jouleUnit() -> Self
  class func calorieUnit() -> Self
  class func kilocalorieUnit() -> Self
}
extension HKUnit {
  class func degreeCelsiusUnit() -> Self
  class func degreeFahrenheitUnit() -> Self
  class func kelvinUnit() -> Self
}
extension HKUnit {
  class func siemenUnitWithMetricPrefix(_ prefix: HKMetricPrefix) -> Self
  class func siemenUnit() -> Self
}
extension HKUnit {
  class func countUnit() -> Self
  class func percentUnit() -> Self
}
extension HKUnit {
  func unitMultipliedByUnit(_ unit: HKUnit) -> HKUnit
  func unitDividedByUnit(_ unit: HKUnit) -> HKUnit
  func unitRaisedToPower(_ power: Int) -> HKUnit
  func reciprocalUnit() -> HKUnit
}
var HKUnitMolarMassBloodGlucose: Double { get }
