
@available(iOS 8.0, *)
let kSecSharedPassword: CFString
@available(iOS 8.0, *)
func SecAddSharedWebCredential(_ fqdn: CFString, _ account: CFString, _ password: CFString?, _ completionHandler: (CFError?) -> Void)
@available(iOS 8.0, *)
func SecRequestSharedWebCredential(_ fqdn: CFString?, _ account: CFString?, _ completionHandler: (CFArray?, CFError?) -> Void)
@available(iOS 8.0, *)
func SecCreateSharedWebCredentialPassword() -> CFString?
