import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/game_state.dart';

final gameProvider = NotifierProvider<GameNotifier, GameState>(GameNotifier.new);

class GameNotifier extends Notifier<GameState> {
  @override
  GameState build() {
    return GameState(
      players: [],
      currentRound: 1,
      phase: GamePhase.bidding,
      dealerIndex: 0,
      bids: {},
      tricksWon: {},
      scores: {}
    );
  }
}