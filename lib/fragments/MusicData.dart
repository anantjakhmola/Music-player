List musicNames = [
  "Coldplay - Viva La Vida _ Suits Music 9x10",
  "Dave Not Dave - Cold Blood _ Suits Music 5x09",
  "Filthy Souls - Here I Am _ Suits Music 8x01",
  "Oh The Larceny - Man on a Mission _ Suits Music 7x12",
  "Serena Ryder - Stompa",
  "Stealth - Judgement Day _ Suits Music 5x15",
  "The Constellations - Perfect Day (With Lyrics)"
];

List<String> name = [
  "A Great Big World",
  "Talk Is Cheap",
  "Feels Like Summer",
  "Wicked Game (ft. Seren)",
  "The Scientist",
  "Can't Say No",
  "The Digital",
  "Summertime Sadness",
  "Don't Lie To Me",
  "Skinny Bitch",
  "Wild & Free",
  "Let You Go",
  "Lean On (feat. MØ)",
  "Candy",
  "Iron Sky",
  "Scream",
  "Redbone",
  "Sick Boy",
  "Rani Recognize"
];

musicUrl(int i) {
  return "https://anant1234567.s3.ap-south-1.amazonaws.com/${musicNames[i]}.mp3";
}
