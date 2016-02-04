
@available(OSX 10.8, *)
class GKMatchmakerViewController : NSViewController, GKViewController {
  unowned(unsafe) var matchmakerDelegate: @sil_unmanaged GKMatchmakerViewControllerDelegate?
  var matchRequest: GKMatchRequest { get }
  var hosted: Bool
  init?(matchRequest request: GKMatchRequest)
  init?(invite: GKInvite)
  @available(OSX 10.8, *)
  func addPlayersToMatch(match: GKMatch)
  @available(OSX, introduced=10.8, deprecated=10.10, message="use setHostedPlayer:didConnect:")
  func setHostedPlayer(playerID: String, connected: Bool)
  @available(OSX 10.10, *)
  func setHostedPlayer(player: GKPlayer, didConnect connected: Bool)
  @available(OSX, introduced=10.8, deprecated=10.10)
  var defaultInvitationMessage: String?
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder: NSCoder)
  convenience init()
}
protocol GKMatchmakerViewControllerDelegate : NSObjectProtocol {
  @available(OSX 10.8, *)
  func matchmakerViewControllerWasCancelled(viewController: GKMatchmakerViewController)
  @available(OSX 10.8, *)
  func matchmakerViewController(viewController: GKMatchmakerViewController, didFailWithError error: NSError)
  @available(OSX 10.8, *)
  optional func matchmakerViewController(viewController: GKMatchmakerViewController, didFindMatch match: GKMatch)
  @available(OSX 10.10, *)
  optional func matchmakerViewController(viewController: GKMatchmakerViewController, didFindHostedPlayers players: [GKPlayer])
  @available(OSX, introduced=10.8, deprecated=10.10, message="use matchmakerViewController:didFindHostedPlayers:")
  optional func matchmakerViewController(viewController: GKMatchmakerViewController, didFindPlayers playerIDs: [String])
  @available(OSX 10.10, *)
  optional func matchmakerViewController(viewController: GKMatchmakerViewController, hostedPlayerDidAccept player: GKPlayer)
  @available(OSX, introduced=10.8, deprecated=10.10, message="use matchmakerViewController:hostedPlayerDidAccept:")
  optional func matchmakerViewController(viewController: GKMatchmakerViewController, didReceiveAcceptFromHostedPlayer playerID: String)
}