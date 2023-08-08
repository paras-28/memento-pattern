import 'browser.dart';

void main() {
  Browser chrome = Browser();

  History history = History();

//Step 1 : save the state
  chrome.address = "google.com";
  history.push(chrome.saveState());

  //Step 2 : save the state
  chrome.address = "twitter.com";
  history.push(chrome.saveState());

  //Step 3 : save the state
  chrome.address = "facebook.com";
  chrome.getPreviousState(history.pop());

  print(chrome.address);
}
