handleCommand(commandQuery) {
  Switch commandQuery {
    ; Commands
    case "uni":
        open("appwiz.cpl")
    case "rec":
        open("::{645FF040-5081-101B-9F08-00AA002F954E}")
    case "rege":
        open("C:\Windows\regedit.exe")
    case "file":
        open("explorer.exe")

  ; Search engines
    case "g" . A_Space:
      showSearchBox("https://www.google.com/search?q=", "Google", "c4285F4")
    case "y" . A_Space:
      showSearchBox("https://www.youtube.com/results?search_query=", "YouTube", "cFF0000")
    case "le" . A_Space:
      showSearchBox("https://letterboxd.com/search/", "LetterBoxd")
  }
}
