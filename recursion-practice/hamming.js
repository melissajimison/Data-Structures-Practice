hammingCompute = function(uno, dos, score = 0) {
  if (uno.length != dos.length) {
  throw new Error('DNA strands must be of equal length.')
  };

    var length = uno.length
    if (uno.length === 0 || dos.length === 0) {
      return score;
    };

    if (uno[0] != dos[0]) {
     score = score + 1;
    };

    var result =this.compute(uno.slice(1, length), dos.slice(1, length), score);
    return result
};
