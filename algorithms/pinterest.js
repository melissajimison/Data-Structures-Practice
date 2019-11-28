/*

At Pinterest, we want to make sure the content people share is always safe. To that end, we need to blacklist certain phrases from being published in ‘PinText’s.

Example:
blacklisted_phrases = {
  "machine": {'machine guns', length: 2}
  "free": {'free ray bans, length: 3}
  "pornography":'pornography,
  "world ": 'world war i',
  "world war ii": 'world war ii',
}

Given blacklisted_phrases, write a function(s) to mark a given pin_text as      safe/unsafe.


E.g. (using the example blacklist above):

pinTextwords = {
  Collection:
  of:
  my:
  machine:
  guns:
  }

"Collection of my machine guns" - unsafe
"How to get free hotel upgrades" - safe
"Click here for free ray bans" - unsafe
"best pornography sites" - unsafe
"world war is best avoided" - safe


You can implement a one-time-called setup(blacklisted_phrases) function if necessary.

*/


function setup() {
   var blacklisted_phrases = {
    machine  : {m: 'machine guns', length: 2},
    free  : {m: 'free ray bans', length: 3},
    pornography  :{m: 'pornography', length: 1},
    world   : {m: 'world war i', length: 3},
  }
  return blacklisted_phrases
}

function isTextSave(str) {
  var isSave = true
  const blacklistedPhrases = setup()
  let pinText = str.split(' ')
  console.log(blacklistedPhrases)
  for (let index = 0; index< pinText.length; index++) {
    console.log(pinText[index])
    console.log(blacklistedPhrases[pinText[index]])
    if (blacklistedPhrases[pinText[index]] !== undefined){
      let temp = pinText.slice(index, blacklistedPhrases[pinText[index]].length).join(',')
        console.log(temp)

      if (temp == blacklistedPhrases[pinText[index]].m) {
        isSave = false
      }
    }
  }
  return isSave
}

console.log(isTextSave('Collection of my machine guns'))
