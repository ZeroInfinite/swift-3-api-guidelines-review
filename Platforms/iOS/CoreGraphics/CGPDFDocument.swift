
class CGPDFDocument {
}
@available(*, deprecated, renamed="CGPDFDocument")
typealias CGPDFDocumentRef = CGPDFDocument
@available(iOS 2.0, *)
func CGPDFDocumentCreateWithProvider(_ provider: CGDataProvider?) -> CGPDFDocument?
@available(iOS 2.0, *)
func CGPDFDocumentCreateWithURL(_ url: CFURL?) -> CGPDFDocument?
@available(iOS 2.0, *)
func CGPDFDocumentGetVersion(_ document: CGPDFDocument?, _ majorVersion: UnsafeMutablePointer<Int32>, _ minorVersion: UnsafeMutablePointer<Int32>)
@available(iOS 2.0, *)
func CGPDFDocumentIsEncrypted(_ document: CGPDFDocument?) -> Bool
@available(iOS 2.0, *)
func CGPDFDocumentUnlockWithPassword(_ document: CGPDFDocument?, _ password: UnsafePointer<Int8>) -> Bool
@available(iOS 2.0, *)
func CGPDFDocumentIsUnlocked(_ document: CGPDFDocument?) -> Bool
@available(iOS 2.0, *)
func CGPDFDocumentAllowsPrinting(_ document: CGPDFDocument?) -> Bool
@available(iOS 2.0, *)
func CGPDFDocumentAllowsCopying(_ document: CGPDFDocument?) -> Bool
@available(iOS 2.0, *)
func CGPDFDocumentGetNumberOfPages(_ document: CGPDFDocument?) -> Int
@available(iOS 2.0, *)
func CGPDFDocumentGetPage(_ document: CGPDFDocument?, _ pageNumber: Int) -> CGPDFPage?
@available(iOS 2.0, *)
func CGPDFDocumentGetCatalog(_ document: CGPDFDocument?) -> CGPDFDictionaryRef
@available(iOS 2.0, *)
func CGPDFDocumentGetInfo(_ document: CGPDFDocument?) -> CGPDFDictionaryRef
@available(iOS 2.0, *)
func CGPDFDocumentGetID(_ document: CGPDFDocument?) -> CGPDFArrayRef
@available(iOS 2.0, *)
func CGPDFDocumentGetTypeID() -> CFTypeID
