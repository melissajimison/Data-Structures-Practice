var test = [5,
"four score and seven years ago",
"score four and seven years ago",
"four score and seven years ago",
"ask not what your country can do for you",
"meli bonita hermosa",
4,
"the quick brown fox jumped over the lazy dog",
"over the lazy dog the quick brown fox jumped",
"the lazy quick fox jumped over the brown dog",
"the quick lazy dog over the brown fox jumped",
0]

function uniqueSentencesCnt(testCase){
//     iterate through array and create the object
    var objCnt = {}
    testCase.forEach(function(el){
//         if exists, change count else add to objCnt
        if(objCnt[el]===undefined){
            objCnt[el] = 1
        } else {
            objCnt[el] = objCnt[el]+1
        }
    })

    return objCnt
}

function uniqueHashes(testArr){

    var arrTotal = []
    testArr.forEach(function(sentence){
        var newArrofWords = sentence.split(' ')
        newArrofWords.sort()
        arrTotal.push(newArrofWords.toString())
    })
    var totalUnique = uniqueSentencesCnt(arrTotal)
    var count = 0
    console.log(totalUnique)

    for(var prop in totalUnique){
        if(totalUnique[prop]>1)
            count+=totalUnique[prop]
    }
    return count
}


var collation = 0

while(test.length>0){
    var line = test.shift()

    if(line==0){
        console.log('stop')
    } else {

        var cnt = line;
        var newTestArr = new Array()

        for(var i=0; i<cnt;i++){
            newTestArr.push(test.shift())
        }

        var testCase = uniqueSentencesCnt(newTestArr)
        var uniqueSentences = Object.keys(testCase).length

        collation += uniqueHashes(Object.keys(testCase))
        console.log('***', uniqueSentences, collation)

    }


}
