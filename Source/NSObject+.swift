import Foundation

public extension NSObject {
    var classNameToString: String {
        return NSStringFromClass(type(of: self))
    }
    
    static var classNameToString: String {
        return NSStringFromClass(self).components(separatedBy: ".").last ?? ""
    }
}
