import UIKit

func checkStringIsPalindrome(text: String) -> Bool {
    var reverseText: String = ""
    var reverseTextChars: [Character] = []
    var lowercasedText = text.lowercased()
    let textChars = lowercasedText.map {
        String($0)
    }
    for index in(0 ... textChars.count - 1) {
        reverseTextChars.insert(contentsOf: textChars[index].lowercased(), at: 0)
    }
    reverseText = String(reverseTextChars)
    if reverseText == lowercasedText {
        return true
    }
    return false
}

assert(checkStringIsPalindrome(text: "rotator") == true, "Challenge 2 failed")
assert(checkStringIsPalindrome(text: "Rats live on no evil star") == true,
"Challenge 2 failed")
assert(checkStringIsPalindrome(text: "Never odd or even") == false, "Challenge 2 failed")
assert(checkStringIsPalindrome(text: "Hello, world") == false, "Challenge 2 failed")
