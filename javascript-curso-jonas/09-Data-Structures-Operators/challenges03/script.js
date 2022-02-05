'use strict';

const game = {
  team1: 'Bayern Munich',
  team2: 'Borrussia Dortmund',
  players: [
    [
      'Neuer',
      'Pavard',
      'Martinez',
      'Alaba',
      'Davies',
      'Kimmich',
      'Goretzka',
      'Coman',
      'Muller',
      'Gnarby',
      'Lewandowski',
    ],
    [
      'Burki',
      'Schulz',
      'Hummels',
      'Akanji',
      'Hakimi',
      'Weigl',
      'Witsel',
      'Hazard',
      'Brandt',
      'Sancho',
      'Gotze',
    ],
  ],
  score: '4:0',
  scored: ['Lewandowski', 'Gnarby', 'Lewandowski', 'Hummels'],
  date: 'Nov 9th, 2037',
  odds: {
    team1: 1.33,
    x: 3.25,
    team2: 6.5,
  },
};

// // Coding challenge 01

// //1. Create one player array for each team (variables 'players1' and 'players2')
// const [players1, players2] = game.players;
// console.log(players1, players2);

// //2. The first player in any player array is the goalkeeper and the others are field players. For Bayern Munich (team 1) create one variable ('gk') with the goalkeeper's name, and one array ('fieldPlayers') with all the remaining 10 field players
// const [gp, ...fieldPlayers] = players1;

// //3. Create an array 'allPlayers' containing all players of both teams (22 players)
// const allPlayers = [...players1, ...players2];
// console.log(allPlayers);

// //4. During the game, Bayern Munich (team 1) used 3 substitute players. So create a new array ('players1Final') containing all the original team1 players plus 'Thiago', 'Coutinho' and 'Perisic'
// const players1Final = [...players1, 'Thiago', 'Coutinho', 'Perisic'];
// console.log(players1Final);

// //5. Based on the game.odds object, create one variable for each odd (called 'team1', 'draw' and 'team2')

// // const team1 = game.odds.team1;
// // const draw = game.odds.x;
// // const team2 = game.odds.team2;

// const {
//   odds: { team1, x: draw, team2 },
// } = game;

// console.log(team1, draw, team2);

// //6. Write a function ('printGoals') that receives an arbitrary number of player names (not an array) and prints each of them to the console, along with the number of goals that were scored in total (number of player names passed in)

// // for (let player in players) {
// //   numberOfGoals += 1;
// // }
// // for (let i = 0; i <= players.length; i++){
// //   numberOfGoals += 1;
// // }

// const printGoals = function (...players) {
//   let numberOfGoals = 0;

//   players.forEach(function (name) {
//     numberOfGoals += 1;
//   });

//   console.log(...players, numberOfGoals);
// };

// printGoals(...game.scored);

// // 7. The team with the lower odd is more likely to win. Print to the console which team is more likely to win, without using an if/else statement or the ternary operator.

// team1 < team2 && console.log('Team 1 is more likely to win');
// team1 > team2 && console.log('Team 2 is more likely to win');

// console.log('----------Coding challenge 02----------');
// // Coding challenge 02

// //1. Loop over the game.scored array and print each player name to the console, along with the goal number (Example: "Goal 1: Lewandowski")

// for (const [i, player] of game.scored.entries()) {
//   console.log(`Goal ${i + 1}: ${player}`);
// }

// //2. Use a loop to calculate the average odd and log it to the console (We already studied how to calculate averages, you can go check if you don't remember)

// let average = 0;
// const odds = Object.values(game.odds);
// console.log(odds);

// for (const number of odds) {
//   average += number;
// }

// console.log(average / odds.length);

// console.log('----------Coding challenge 03----------');
// /*
// //3. Print the 3 odds to the console, but in a nice formatted way, exactly like this:
//   Odd of victory Bayern Munich: 1.33
//   Odd of draw: 3.25
//   Odd of victory Borrussia Dortmund: 6.5
//   Get the team names directly from the game object, don't hardcode them
//   (except for "draw"). Hint: Note how the odds and the game objects have the same property names 😉
// */

// for (const [team, odd] of Object.entries(game.odds)) {
//   const teamStr = team === 'x' ? 'draw' : `victory ${game[team]}`
//   console.log(`Odd of ${teamStr}: ${odd}`);
// }

// console.log('----------Coding challenge 04----------');
// /*
// 4. Bonus: Create an object called 'scorers' which contains the names of the players who scored as properties, and the number of goals as the value. In this game, it will look like this:
// {
//   Gnarby: 1,
//   Hummels: 1,
//   Lewandowski: 2
// }
// GOOD LUCK 😀
// */

// // let scorers = {}
// // Object.keys(scorers) = { ...game.scored };

///////////////////////////////////////
// Coding Challenge #3

/* 
Let's continue with our football betting app! This time, we have a map with a log of the events that happened during the game. The values are the events themselves, and the keys are the minutes in which each event happened (a football game has 90 minutes plus some extra time).

1. Create an array 'events' of the different game events that happened (no duplicates)
2. After the game has finished, is was found that the yellow card from minute 64 was unfair. So remove this event from the game events log.
3. Print the following string to the console: "An event happened, on average, every 9 minutes" (keep in mind that a game has 90 minutes)
4. Loop over the events and log them to the console, marking whether it's in the first half or second half (after 45 min) of the game, like this:
      [FIRST HALF] 17: ⚽️ GOAL

GOOD LUCK 😀
*/
console.log('--------- 1 ---------');
const gameEvents = new Map([
  [17, '⚽️ GOAL'],
  [36, '🔁 Substitution'],
  [47, '⚽️ GOAL'],
  [61, '🔁 Substitution'],
  [64, '🔶 Yellow card'],
  [69, '🔴 Red card'],
  [70, '🔁 Substitution'],
  [72, '🔁 Substitution'],
  [76, '⚽️ GOAL'],
  [80, '⚽️ GOAL'],
  [92, '🔶 Yellow card'],
]);
console.log(gameEvents);

const events = [...new Set(gameEvents.values())];
console.log(events);

console.log('--------- 2 ---------');
gameEvents.delete(64)
console.log(gameEvents);

console.log('--------- 3 ---------');
let totalTimeEvents = 0;
let gameTime = 90
let eventHappen;
for (const [key] of gameEvents) {
  totalTimeEvents += key;
}
eventHappen = totalTimeEvents / gameTime
console.log(eventHappen);
console.log(`An event happened, on average, every ${eventHappen} minutes`);
console.log('--------- 4 ---------');

for (const [key, value] of gameEvents) {
  console.log(key < 45 ? `[FIRST HALF] ${key}: ${value}` : `[SECOND HALF] ${key}: ${value}`)
}

