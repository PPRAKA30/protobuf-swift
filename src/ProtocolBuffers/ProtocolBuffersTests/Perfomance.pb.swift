// Generated by the protocol buffer compiler.  DO NOT EDIT!

import Foundation
import ProtocolBuffers

struct PerfomanceRoot {
  static var sharedInstance : PerfomanceRoot {
   struct Static {
       static let instance : PerfomanceRoot = PerfomanceRoot()
   }
   return Static.instance
  }
  var extensionRegistry:ExtensionRegistry

  init() {
    extensionRegistry = ExtensionRegistry()
    registerAllExtensions(extensionRegistry)
  }
  func registerAllExtensions(registry:ExtensionRegistry) {
  }
}

func == (lhs: Perfomance, rhs: Perfomance) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasInts == rhs.hasInts) && (!lhs.hasInts || lhs.ints == rhs.ints)
  fieldCheck = fieldCheck && (lhs.hasInts64 == rhs.hasInts64) && (!lhs.hasInts64 || lhs.ints64 == rhs.ints64)
  fieldCheck = fieldCheck && (lhs.hasDoubles == rhs.hasDoubles) && (!lhs.hasDoubles || lhs.doubles == rhs.doubles)
  fieldCheck = fieldCheck && (lhs.hasFloats == rhs.hasFloats) && (!lhs.hasFloats || lhs.floats == rhs.floats)
  fieldCheck = fieldCheck && (lhs.hasStr == rhs.hasStr) && (!lhs.hasStr || lhs.str == rhs.str)
  fieldCheck = fieldCheck && (lhs.hasBytes == rhs.hasBytes) && (!lhs.hasBytes || lhs.bytes == rhs.bytes)
  fieldCheck = fieldCheck && (lhs.hasDescription == rhs.hasDescription) && (!lhs.hasDescription || lhs.description_ == rhs.description_)
  return (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
}

func == (lhs: TestBytes, rhs: TestBytes) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasBytes == rhs.hasBytes) && (!lhs.hasBytes || lhs.bytes == rhs.bytes)
  return (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
}

final class Perfomance : GeneratedMessage {
  private(set) var hasInts:Bool = false
  private(set) var ints:Int32 = Int32(0)

  private(set) var hasInts64:Bool = false
  private(set) var ints64:Int64 = Int64(0)

  private(set) var hasDoubles:Bool = false
  private(set) var doubles:Double = Double(0)

  private(set) var hasFloats:Bool = false
  private(set) var floats:Float = Float(0)

  private(set) var hasStr:Bool = false
  private(set) var str:String = ""

  private(set) var hasBytes:Bool = false
  private(set) var bytes:Array<Byte> = [Byte]()

  private(set) var hasDescription:Bool = false
  private(set) var description_:String = ""

  required internal init() {
       super.init()
  }
  override internal func isInitialized() -> Bool {
    if !hasInts {
      return false
    }
    if !hasInts64 {
      return false
    }
    if !hasDoubles {
      return false
    }
    if !hasFloats {
      return false
    }
   return true
  }
  override internal func writeToCodedOutputStream(output:CodedOutputStream) {
    if hasInts {
      output.writeInt32(1, value:ints)
    }
    if hasInts64 {
      output.writeInt64(2, value:ints64)
    }
    if hasDoubles {
      output.writeDouble(3, value:doubles)
    }
    if hasFloats {
      output.writeFloat(4, value:floats)
    }
    if hasStr {
      output.writeString(5, value:str)
    }
    if hasBytes {
      output.writeData(6, value:bytes)
    }
    if hasDescription {
      output.writeString(7, value:description_)
    }
    unknownFields.writeToCodedOutputStream(output)
  }
  override internal func serializedSize() -> Int32 {
    var size:Int32 = memoizedSerializedSize
    if size != -1 {
     return size
    }

    size = 0
    if hasInts {
      size += WireFormat.computeInt32Size(1, value:ints)
    }
    if hasInts64 {
      size += WireFormat.computeInt64Size(2, value:ints64)
    }
    if hasDoubles {
      size += WireFormat.computeDoubleSize(3, value:doubles)
    }
    if hasFloats {
      size += WireFormat.computeFloatSize(4, value:floats)
    }
    if hasStr {
      size += WireFormat.computeStringSize(5, value:str)
    }
    if hasBytes {
      size += WireFormat.computeDataSize(6, value:bytes)
    }
    if hasDescription {
      size += WireFormat.computeStringSize(7, value:description_)
    }
    size += unknownFields.serializedSize()
    memoizedSerializedSize = size
    return size
  }
  internal class func parseFromData(data:[Byte]) -> Perfomance {
    return Perfomance.builder().mergeFromData(data).build()
  }
  internal class func parseFromData(data:[Byte], extensionRegistry:ExtensionRegistry) -> Perfomance {
    return Perfomance.builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
  }
  internal class func parseFromInputStream(input:NSInputStream) -> Perfomance {
    return Perfomance.builder().mergeFromInputStream(input).build()
  }
  internal class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) ->Perfomance {
    return Perfomance.builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
  }
  internal class func parseFromCodedInputStream(input:CodedInputStream) -> Perfomance {
    return Perfomance.builder().mergeFromCodedInputStream(input).build()
  }
  internal class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) -> Perfomance {
    return Perfomance.builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
  }
  internal class func builder() -> PerfomanceBuilder {
    return Perfomance.classBuilder() as PerfomanceBuilder
  }
  internal func builder() -> PerfomanceBuilder {
    return classBuilder() as PerfomanceBuilder
  }
  internal override class func classBuilder() -> MessageBuilder {
    return PerfomanceBuilder()
  }
  internal override func classBuilder() -> MessageBuilder {
    return Perfomance.builder()
  }
  internal func toBuilder() -> PerfomanceBuilder {
    return Perfomance.builderWithPrototype(self)
  }
  internal class func builderWithPrototype(prototype:Perfomance) -> PerfomanceBuilder {
    return Perfomance.builder().mergeFrom(prototype)
  }
  override internal func writeDescriptionTo(inout output:String, indent:String) {
    if hasInts {
      output += "\(indent) ints: \(ints) \n"
    }
    if hasInts64 {
      output += "\(indent) ints64: \(ints64) \n"
    }
    if hasDoubles {
      output += "\(indent) doubles: \(doubles) \n"
    }
    if hasFloats {
      output += "\(indent) floats: \(floats) \n"
    }
    if hasStr {
      output += "\(indent) str: \(str) \n"
    }
    if hasBytes {
      output += "\(indent) bytes: \(bytes) \n"
    }
    if hasDescription {
      output += "\(indent) description_: \(description_) \n"
    }
    unknownFields.writeDescriptionTo(&output, indent:indent)
  }
  override internal var hashValue:Int {
      get {
          var hashCode:Int = 7
          if hasInts {
             hashCode = (hashCode &* 31) &+ ints.hashValue
          }
          if hasInts64 {
             hashCode = (hashCode &* 31) &+ ints64.hashValue
          }
          if hasDoubles {
             hashCode = (hashCode &* 31) &+ doubles.hashValue
          }
          if hasFloats {
             hashCode = (hashCode &* 31) &+ floats.hashValue
          }
          if hasStr {
             hashCode = (hashCode &* 31) &+ str.hashValue
          }
          if hasBytes {
             for value in bytes {
                 hashCode = (hashCode &* 31) &+ value.hashValue
             }
          }
          if hasDescription {
             hashCode = (hashCode &* 31) &+ description_.hashValue
          }
          hashCode = (hashCode &* 31) &+  unknownFields.hashValue
          return hashCode
      }
  }


  //Meta information declaration start

  override internal class func className() -> String {
      return "Perfomance"
  }
  override internal func className() -> String {
      return "Perfomance"
  }
  override internal func classMetaType() -> GeneratedMessage.Type {
      return Perfomance.self
  }


  //Meta information declaration end

}

final class PerfomanceBuilder : GeneratedMessageBuilder {
  private var builderResult:Perfomance

  required override internal init () {
     builderResult = Perfomance()
     super.init()
  }
  var hasInts:Bool {
       get {
            return builderResult.hasInts
       }
  }
  var ints:Int32 {
       get {
            return builderResult.ints
       }
       set (value) {
           builderResult.hasInts = true
           builderResult.ints = value
       }
  }
  func clearInts() -> PerfomanceBuilder{
       builderResult.hasInts = false
       builderResult.ints = Int32(0)
       return self
  }
  var hasInts64:Bool {
       get {
            return builderResult.hasInts64
       }
  }
  var ints64:Int64 {
       get {
            return builderResult.ints64
       }
       set (value) {
           builderResult.hasInts64 = true
           builderResult.ints64 = value
       }
  }
  func clearInts64() -> PerfomanceBuilder{
       builderResult.hasInts64 = false
       builderResult.ints64 = Int64(0)
       return self
  }
  var hasDoubles:Bool {
       get {
            return builderResult.hasDoubles
       }
  }
  var doubles:Double {
       get {
            return builderResult.doubles
       }
       set (value) {
           builderResult.hasDoubles = true
           builderResult.doubles = value
       }
  }
  func clearDoubles() -> PerfomanceBuilder{
       builderResult.hasDoubles = false
       builderResult.doubles = Double(0)
       return self
  }
  var hasFloats:Bool {
       get {
            return builderResult.hasFloats
       }
  }
  var floats:Float {
       get {
            return builderResult.floats
       }
       set (value) {
           builderResult.hasFloats = true
           builderResult.floats = value
       }
  }
  func clearFloats() -> PerfomanceBuilder{
       builderResult.hasFloats = false
       builderResult.floats = Float(0)
       return self
  }
  var hasStr:Bool {
       get {
            return builderResult.hasStr
       }
  }
  var str:String {
       get {
            return builderResult.str
       }
       set (value) {
           builderResult.hasStr = true
           builderResult.str = value
       }
  }
  func clearStr() -> PerfomanceBuilder{
       builderResult.hasStr = false
       builderResult.str = ""
       return self
  }
  var hasBytes:Bool {
       get {
            return builderResult.hasBytes
       }
  }
  var bytes:Array<Byte> {
       get {
            return builderResult.bytes
       }
       set (value) {
           builderResult.hasBytes = true
           builderResult.bytes = value
       }
  }
  func clearBytes() -> PerfomanceBuilder{
       builderResult.hasBytes = false
       builderResult.bytes = [Byte]()
       return self
  }
  var hasDescription:Bool {
       get {
            return builderResult.hasDescription
       }
  }
  var description_:String {
       get {
            return builderResult.description_
       }
       set (value) {
           builderResult.hasDescription = true
           builderResult.description_ = value
       }
  }
  func clearDescription() -> PerfomanceBuilder{
       builderResult.hasDescription = false
       builderResult.description_ = ""
       return self
  }
  override internal var internalGetResult:GeneratedMessage {
       get {
          return builderResult
       }
  }
  internal override func clear() -> PerfomanceBuilder {
    builderResult = Perfomance()
    return self
  }
  internal override func clone() -> PerfomanceBuilder {
    return Perfomance.builderWithPrototype(builderResult)
  }
  internal override func build() -> Perfomance {
       checkInitialized()
       return buildPartial()
  }
  internal func buildPartial() -> Perfomance {
    var returnMe:Perfomance = builderResult
    return returnMe
  }
  func mergeFrom(other:Perfomance) -> PerfomanceBuilder {
    if (other == Perfomance()) {
     return self
    }
    if other.hasInts {
         ints = other.ints
    }
    if other.hasInts64 {
         ints64 = other.ints64
    }
    if other.hasDoubles {
         doubles = other.doubles
    }
    if other.hasFloats {
         floats = other.floats
    }
    if other.hasStr {
         str = other.str
    }
    if other.hasBytes {
         bytes = other.bytes
    }
    if other.hasDescription {
         description_ = other.description_
    }
    mergeUnknownFields(other.unknownFields)
    return self
  }
  internal override func mergeFromCodedInputStream(input:CodedInputStream) ->PerfomanceBuilder {
       return mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
  }
  internal override func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) -> PerfomanceBuilder {
    var unknownFieldsBuilder:UnknownFieldSetBuilder = UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
    while (true) {
      var tag = input.readTag()
      switch tag {
      case 0: 
        self.unknownFields = unknownFieldsBuilder.build()
        return self

      case 8 :
        ints = input.readInt32()

      case 16 :
        ints64 = input.readInt64()

      case 25 :
        doubles = input.readDouble()

      case 37 :
        floats = input.readFloat()

      case 42 :
        str = input.readString()

      case 50 :
        bytes = input.readData()

      case 58 :
        description_ = input.readString()

      default:
        if (!parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:tag)) {
           unknownFields = unknownFieldsBuilder.build()
           return self
        }
      }
    }
  }
}

final class TestBytes : GeneratedMessage {
  private(set) var hasBytes:Bool = false
  private(set) var bytes:Array<Byte> = [Byte]()

  required internal init() {
       super.init()
  }
  override internal func isInitialized() -> Bool {
    if !hasBytes {
      return false
    }
   return true
  }
  override internal func writeToCodedOutputStream(output:CodedOutputStream) {
    if hasBytes {
      output.writeData(1, value:bytes)
    }
    unknownFields.writeToCodedOutputStream(output)
  }
  override internal func serializedSize() -> Int32 {
    var size:Int32 = memoizedSerializedSize
    if size != -1 {
     return size
    }

    size = 0
    if hasBytes {
      size += WireFormat.computeDataSize(1, value:bytes)
    }
    size += unknownFields.serializedSize()
    memoizedSerializedSize = size
    return size
  }
  internal class func parseFromData(data:[Byte]) -> TestBytes {
    return TestBytes.builder().mergeFromData(data).build()
  }
  internal class func parseFromData(data:[Byte], extensionRegistry:ExtensionRegistry) -> TestBytes {
    return TestBytes.builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
  }
  internal class func parseFromInputStream(input:NSInputStream) -> TestBytes {
    return TestBytes.builder().mergeFromInputStream(input).build()
  }
  internal class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) ->TestBytes {
    return TestBytes.builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
  }
  internal class func parseFromCodedInputStream(input:CodedInputStream) -> TestBytes {
    return TestBytes.builder().mergeFromCodedInputStream(input).build()
  }
  internal class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) -> TestBytes {
    return TestBytes.builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
  }
  internal class func builder() -> TestBytesBuilder {
    return TestBytes.classBuilder() as TestBytesBuilder
  }
  internal func builder() -> TestBytesBuilder {
    return classBuilder() as TestBytesBuilder
  }
  internal override class func classBuilder() -> MessageBuilder {
    return TestBytesBuilder()
  }
  internal override func classBuilder() -> MessageBuilder {
    return TestBytes.builder()
  }
  internal func toBuilder() -> TestBytesBuilder {
    return TestBytes.builderWithPrototype(self)
  }
  internal class func builderWithPrototype(prototype:TestBytes) -> TestBytesBuilder {
    return TestBytes.builder().mergeFrom(prototype)
  }
  override internal func writeDescriptionTo(inout output:String, indent:String) {
    if hasBytes {
      output += "\(indent) bytes: \(bytes) \n"
    }
    unknownFields.writeDescriptionTo(&output, indent:indent)
  }
  override internal var hashValue:Int {
      get {
          var hashCode:Int = 7
          if hasBytes {
             for value in bytes {
                 hashCode = (hashCode &* 31) &+ value.hashValue
             }
          }
          hashCode = (hashCode &* 31) &+  unknownFields.hashValue
          return hashCode
      }
  }


  //Meta information declaration start

  override internal class func className() -> String {
      return "TestBytes"
  }
  override internal func className() -> String {
      return "TestBytes"
  }
  override internal func classMetaType() -> GeneratedMessage.Type {
      return TestBytes.self
  }


  //Meta information declaration end

}

final class TestBytesBuilder : GeneratedMessageBuilder {
  private var builderResult:TestBytes

  required override internal init () {
     builderResult = TestBytes()
     super.init()
  }
  var hasBytes:Bool {
       get {
            return builderResult.hasBytes
       }
  }
  var bytes:Array<Byte> {
       get {
            return builderResult.bytes
       }
       set (value) {
           builderResult.hasBytes = true
           builderResult.bytes = value
       }
  }
  func clearBytes() -> TestBytesBuilder{
       builderResult.hasBytes = false
       builderResult.bytes = [Byte]()
       return self
  }
  override internal var internalGetResult:GeneratedMessage {
       get {
          return builderResult
       }
  }
  internal override func clear() -> TestBytesBuilder {
    builderResult = TestBytes()
    return self
  }
  internal override func clone() -> TestBytesBuilder {
    return TestBytes.builderWithPrototype(builderResult)
  }
  internal override func build() -> TestBytes {
       checkInitialized()
       return buildPartial()
  }
  internal func buildPartial() -> TestBytes {
    var returnMe:TestBytes = builderResult
    return returnMe
  }
  func mergeFrom(other:TestBytes) -> TestBytesBuilder {
    if (other == TestBytes()) {
     return self
    }
    if other.hasBytes {
         bytes = other.bytes
    }
    mergeUnknownFields(other.unknownFields)
    return self
  }
  internal override func mergeFromCodedInputStream(input:CodedInputStream) ->TestBytesBuilder {
       return mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
  }
  internal override func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) -> TestBytesBuilder {
    var unknownFieldsBuilder:UnknownFieldSetBuilder = UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
    while (true) {
      var tag = input.readTag()
      switch tag {
      case 0: 
        self.unknownFields = unknownFieldsBuilder.build()
        return self

      case 10 :
        bytes = input.readData()

      default:
        if (!parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:tag)) {
           unknownFields = unknownFieldsBuilder.build()
           return self
        }
      }
    }
  }
}

//Class extensions: NSData


internal extension Perfomance {
    class func parseFromNSData(data:NSData) -> Perfomance {
        var bytes = [Byte](count: data.length, repeatedValue: 0)
        data.getBytes(&bytes)
        return Perfomance.builder().mergeFromData(bytes).build()
    }
    class func parseFromNSData(data:NSData, extensionRegistry:ExtensionRegistry) -> Perfomance {
        var bytes = [Byte](count: data.length, repeatedValue: 0)
        data.getBytes(&bytes)
        return Perfomance.builder().mergeFromData(bytes, extensionRegistry:extensionRegistry).build()
    }
}
internal extension TestBytes {
    class func parseFromNSData(data:NSData) -> TestBytes {
        var bytes = [Byte](count: data.length, repeatedValue: 0)
        data.getBytes(&bytes)
        return TestBytes.builder().mergeFromData(bytes).build()
    }
    class func parseFromNSData(data:NSData, extensionRegistry:ExtensionRegistry) -> TestBytes {
        var bytes = [Byte](count: data.length, repeatedValue: 0)
        data.getBytes(&bytes)
        return TestBytes.builder().mergeFromData(bytes, extensionRegistry:extensionRegistry).build()
    }
}

// @@protoc_insertion_point(global_scope)
