//
//  main.swift
//  Hangman
//
//  Created by Alex Paul on 10/15/18.
//  Copyright © 2018 Pursuit. All rights reserved.
import Foundation

print("""
Welcome to David's Hangman Game!
1. You have six tries to guess the correct word!
2. Make sure to enter one letter at a time (only letters will be accepted)
3. Each time you guess an incorrect letter, the hangman will start to form.
4. If you use up all six tries, the full hangman will appear (you lose 😭)
5. Guess the word correctly within six tries and win the game!
""")


let arrayHangman = ["able", "about", "account", "acid", "across", "addition", "adjustment", "advertisement", "after", "again", "against", "agreement", "almost", "among", "amount", "amusement", "angle", "angry", "animal", "answer", "apparatus", "apple", "approval", "arch", "argument", "army", "attack", "attempt", "attention", "attraction", "authority", "automatic", "awake", "baby", "back", "balance", "ball", "band", "base", "basin", "basket", "bath", "beautiful", "because", "before", "behaviour", "belief", "bell", "bent", "berry", "between", "bird", "birth", "bite", "bitter", "black", "blade", "blood", "blow", "blue", "board", "boat", "body", "boiling", "bone", "book", "boot", "bottle", "brain", "brake", "branch", "brass", "bread", "breath", "brick", "bridge", "bright", "broken", "brother", "brown", "brush", "bucket", "building", "bulb", "burn", "burst", "business", "butter", "button", "cake", "camera", "canvas", "card", "care", "carriage", "cart", "cause", "certain", "chain", "chalk", "chance", "change", "cheap", "cheese", "chemical", "chest", "chief", "chin", "church", "circle", "clean", "clear", "clock", "cloth", "cloud", "coal", "coat", "cold", "collar", "colour", "comb", "come", "comfort", "committee", "common", "company", "comparison", "competition", "complete", "complex", "condition", "connection", "conscious", "control", "cook", "copper", "copy", "cord", "cork", "cotton", "cough", "country", "cover", "crack", "credit", "crime", "cruel", "crush", "current", "curtain", "curve", "cushion", "damage", "danger", "dark", "daughter", "dead", "dear", "death", "debt", "decision", "deep", "degree", "delicate", "dependent", "design", "desire", "destruction", "detail", "development", "different", "digestion", "direction", "dirty", "discovery", "discussion", "disease", "disgust", "distance", "distribution", "division", "door", "doubt", "down", "drain", "drawer", "dress", "drink", "driving", "drop", "dust", "early", "earth", "east", "edge", "education", "effect", "elastic", "electric", "engine", "enough", "equal", "error", "even", "event", "ever", "every", "example", "exchange", "existence", "expansion", "experience", "expert", "face", "fact", "fall", "false", "family", "farm", "father", "fear", "feather", "feeble", "feeling", "female", "fertile", "fiction", "field", "fight", "finger", "fire", "first", "fish", "fixed", "flag", "flame", "flat", "flight", "floor", "flower", "fold", "food", "foolish", "foot", "force", "fork", "form", "forward", "fowl", "frame", "free", "frequent", "friend", "from", "front", "fruit", "full", "future", "garden", "general", "girl", "give", "glass", "glove", "goat", "gold", "good", "government", "grain", "grass", "great", "green", "grey", "grip", "group", "growth", "guide", "hair", "hammer", "hand", "hanging", "happy", "harbour", "hard", "harmony", "hate", "have", "head", "healthy", "hear", "hearing", "heart", "heat", "help", "high", "history", "hole", "hollow", "hook", "hope", "horn", "horse", "hospital", "hour", "house", "humour", "idea", "important", "impulse", "increase", "industry", "insect", "instrument", "insurance", "interest", "invention", "iron", "island", "jelly", "jewel", "join", "journey", "judge", "jump", "keep", "kettle", "kick", "kind", "kiss", "knee", "knife", "knot", "knowledge", "land", "language", "last", "late", "laugh", "lead", "leaf", "learning", "leather", "left", "letter", "level", "library", "lift", "light", "like", "limit", "line", "linen", "liquid", "list", "little", "living", "lock", "long", "look", "loose", "loss", "loud", "love", "machine", "make", "male", "manager", "mark", "market", "married", "mass", "match", "material", "meal", "measure", "meat", "medical", "meeting", "memory", "metal", "middle", "military", "milk", "mind", "mine", "minute", "mist", "mixed", "money", "monkey", "month", "moon", "morning", "mother", "motion", "mountain", "mouth", "move", "much", "muscle", "music", "nail", "name", "narrow", "nation", "natural", "near", "necessary", "neck", "need", "needle", "nerve", "news", "night", "noise", "normal", "north", "nose", "note", "number", "observation", "offer", "office", "only", "open", "operation", "opinion", "opposite", "orange", "order", "organization", "ornament", "other", "oven", "over", "owner", "page", "pain", "paint", "paper", "parallel", "parcel", "part", "past", "paste", "payment", "peace", "pencil", "person", "physical", "picture", "pipe", "place", "plane", "plant", "plate", "play", "please", "pleasure", "plough", "pocket", "point", "poison", "polish", "political", "poor", "porter", "position", "possible", "potato", "powder", "power", "present", "price", "print", "prison", "private", "probable", "process", "produce", "profit", "property", "prose", "protest", "public", "pull", "pump", "punishment", "purpose", "push", "quality", "question", "quick", "quiet", "quite", "rail", "rain", "range", "rate", "reaction", "reading", "ready", "reason", "receipt", "record", "regret", "regular", "relation", "religion", "representative", "request", "respect", "responsible", "rest", "reward", "rhythm", "rice", "right", "ring", "river", "road", "roll", "roof", "room", "root", "rough", "round", "rule", "safe", "sail", "salt", "same", "sand", "scale", "school", "science", "scissors", "screw", "seat", "second", "secret", "secretary", "seed", "seem", "selection", "self", "send", "sense", "separate", "serious", "servant", "shade", "shake", "shame", "sharp", "sheep", "shelf", "ship", "shirt", "shock", "shoe", "short", "shut", "side", "sign", "silk", "silver", "simple", "sister", "size", "skin", "skirt", "sleep", "slip", "slope", "slow", "small", "smash", "smell", "smile", "smoke", "smooth", "snake", "sneeze", "snow", "soap", "society", "sock", "soft", "solid", "some", "song", "sort", "sound", "soup", "south", "space", "spade", "special", "sponge", "spoon", "spring", "square", "stage", "stamp", "star", "start", "statement", "station", "steam", "steel", "stem", "step", "stick", "sticky", "stiff", "still", "stitch", "stocking", "stomach", "stone", "stop", "store", "story", "straight", "strange", "street", "stretch", "strong", "structure", "substance", "such", "sudden", "sugar", "suggestion", "summer", "support", "surprise", "sweet", "swim", "system", "table", "tail", "take", "talk", "tall", "taste", "teaching", "tendency", "test", "than", "that", "then", "theory", "there", "thick", "thin", "thing", "this", "thought", "thread", "throat", "through", "through", "thumb", "thunder", "ticket", "tight", "till", "time", "tired", "together", "tomorrow", "tongue", "tooth", "touch", "town", "trade", "train", "transport", "tray", "tree", "trick", "trouble", "trousers", "true", "turn", "twist", "umbrella", "under", "unit", "value", "verse", "very", "vessel", "view", "violent", "voice", "waiting", "walk", "wall", "warm", "wash", "waste", "watch", "water", "wave", "weather", "week", "weight", "well", "west", "wheel", "when", "where", "while", "whip", "whistle", "white", "wide", "will", "wind", "window", "wine", "wing", "winter", "wire", "wise", "with", "woman", "wood", "wool", "word", "work", "worm", "wound", "writing", "wrong", "year", "yellow", "yesterday", "young"]


let alphabets: Set<Character> = Set("abcdefghijklmnopqrstuvwxyz") //alphabet reference for random word

var playerRandomWord: [Character] = Array((arrayHangman.randomElement() ?? ""))  // 1. generate random word  2. unwrapp using nill colescing 3. change String to Array

var userTries = 1 // number of guesses the player gets/ starts with (counter) 6 max
var attemptsLeft = 6

var defaultHiddenWord:[Character] = Array(repeating: "_" , count: playerRandomWord.count)   // create hidden word using random word and replacing it with "_"

var hiddenWord: [Character] = Array(defaultHiddenWord) // to print the characters without " "

func hangmanArt() {
if attemptsLeft == 6 {
print( """
  |------
  |/    |
  |
  |
  |
  =========
""")
} else if attemptsLeft == 5 {
print("""
  |------
   |/    |
   |     0
   |
   |
   =========
""")
    
} else if attemptsLeft == 4 {
print("""
   |------
   |/    |
   |     0
   |     |
   |
   =========
""")

} else if attemptsLeft == 3 {
print("""
  |------
    |/    |
    |     0
    |    /|
    |
    =========
""")

} else if attemptsLeft == 2 {
print("""
  |------
    |/    |
    |     0
    |    /|\\
    |
    =========
""")
} else if attemptsLeft == 1 {
print("""
  |------
   |/    |
   |     0
   |    /|\\
   |    /
   =========
""")

} else if attemptsLeft == 0 {
print("""
  |------
  |/    |
  |     0
  |    /|\\
  |    / \\
  =========
""")
    }
}

print(" ")
print(" ")

print("Please enter your guess:")
repeat {
    print()
    print()
    print(String(hiddenWord))
    var indices: Set<Int> = Set()
    
    let enteredChar = Character(readLine()?.lowercased() ?? "hangman") //user input
    
    for (index, char) in playerRandomWord.enumerated() {
        if enteredChar == char {  // if entered character appears in string
            indices.insert(index) // count the letters in the hiddenWord
            for (index, _ ) in hiddenWord.enumerated() {
                if indices.contains(index) {   // replace "_" with letter
                    hiddenWord[index] = enteredChar
                }
            }
        }
    }
    if !hiddenWord.contains("_") {
        print("🎉🎉🎉🎉🎉🎉 Y O U  W I N ! 🎉🎉🎉🎉🎉🎉")
        break
    }
    if !playerRandomWord.contains(enteredChar) {
        print("\(enteredChar) is not a correct character. Please Try again")
        attemptsLeft -= 1
        userTries += 1
        hangmanArt()
        print("You have \(attemptsLeft) attempts left")
    }
} while attemptsLeft > 0

if attemptsLeft == 0 {
    print("☠️☠️☠️☠️☠️☠️ G A M 3 O V E R ☠️☠️☠️☠️☠️☠️")
}

print(" Please Press (Command + R) if you want to play again! 😂")

// Option to start the game again
/*
print("Do you want to play again?! 'yes' or 'no' ?")
let playAgain = readLine()?.lowercased() ?? "yes"
if playAgain == "yes" {
 attemptsLeft = 6
let alphabets: Set<Character> = Set("abcdefghijklmnopqrstuvwxyz")
var playerRandomWord: [Character] = Array((arrayHangman.randomElement() ?? ""))
var userTries = 1
var attemptsLeft = 6
var defaultHiddenWord:[Character] = Array(repeating: "_" , count: playerRandomWord.count)
var hiddenWord: [Character] = Array(defaultHiddenWord)
var repeatCondition = true
    } else{
    repeatCondition = false
} while repeatCondition
*/

