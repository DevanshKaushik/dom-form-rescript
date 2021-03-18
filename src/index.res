@val external document: {..} = "document"
@val external window: {..} = "window"

// Grabbing all the elements
let textEditor = document["getElementById"]("textEditor")
let textView = document["getElementById"]("textView")

let selectSmall = document["getElementById"]("selectSmall")
let selectRegular = document["getElementById"]("selectRegular")
let selectLarge = document["getElementById"]("selectLarge")

// Event listeners
let updateTextView = event => {
  textView["innerText"] = event["target"]["value"]
}

let setFontSmall = () => {
  textView["classList"]["add"]("text-sm")->ignore
  textView["classList"]["remove"]("text-2xl", "text-6xl")
}

let setFontRegular = () => {
  textView["classList"]["add"]("text-2xl")->ignore
  textView["classList"]["remove"]("text-sm", "text-6xl")
}

let setFontLarge = () => {
  textView["classList"]["add"]("text-6xl")->ignore
  textView["classList"]["remove"]("text-sm", "text-2xl")
}

// Applying listener to the elements
textEditor["addEventListener"]("input", updateTextView)
textView["classList"]["add"]("text-2xl")

selectSmall["addEventListener"]("change", setFontSmall)
selectRegular["addEventListener"]("change", setFontRegular)
selectLarge["addEventListener"]("change", setFontLarge)
