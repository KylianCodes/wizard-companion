enum GamePhase { bidding, tricks }

class GameState {
  final List<String> players;
  final int currentRound;
  final GamePhase phase;
  final int dealerIndex;
  final Map<String, int?> bids;
  final Map<String, int> tricksWon;
  final Map<String, int> scores;

  const GameState({
    required this.players,
    required this.currentRound,
    required this.phase,
    required this.dealerIndex,
    required this.bids,
    required this.tricksWon,
    required this.scores
  });

  GameState copyWith({
    List<String>? players,
    int? currentRound,
    GamePhase? phase,
    int? dealerIndex,
    Map<String, int?>? bids,
    Map<String, int>? tricksWon,
    Map<String, int>? scores
  }) {
    return GameState(
      players: players ?? this.players,
      currentRound: currentRound ?? this.currentRound,
      phase: phase ?? this.phase,
      dealerIndex: dealerIndex ?? this.dealerIndex,
      bids: bids ?? this.bids,
      tricksWon: tricksWon ?? this.tricksWon,
      scores: scores ?? this.scores
    );
  }
}