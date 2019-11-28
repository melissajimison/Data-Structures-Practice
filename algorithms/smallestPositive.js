function solution(A) {

    // write your code in JavaScript (Node.js 8.9.4)

    var obj = {}

     A = A.sort(function(a, b) {
        return a - b;
    })

    for (let i = 0; i<A.length; i++){
        if  (obj[A[i]] !== undefined || A[i] <= 0) {
          A.splice(i,1)
          i--
        } else {
          obj[A[i]] = A[i]
        }
    }

    var smallestPositive = A.length + 1

     for (let i = 0, count = 1; i<A.length; i++, count++){
        if (obj[A[i]] !== count ) {
            smallestPositive = count
            break
        }
    }

    return smallestPositive
}
