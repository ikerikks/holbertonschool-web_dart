int totalPoints(Map team) {
  num result = 0;
  
  team.forEach((key, value) {
    switch(key) {
      case '3 pointers':
        result += (3 * team[key]);
        break;
      
      case '2 pointers':
        result += (2 * team[key]);
        break;

      default:
        result += (1 * team[key]);
    }
  });
  return result.toInt();
}

int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int teamAPoints = totalPoints(teamA);
  int teamBPoints = totalPoints(teamB);
  
  if (teamAPoints > teamBPoints) {
    return 1;
  }
  else if (teamAPoints < teamBPoints) {
    return 2;
  }
  else {
    return 0;
  }
}
