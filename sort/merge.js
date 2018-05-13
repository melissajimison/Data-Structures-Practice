function conquer(left, right) {
  let sorted = [];

  while (left.length && right.length) {
    if (left[0] <= right[0]) {
      lesser = left.shift()
    } else {
      lesser = right.shift()
    }
    sorted.push(lesser);
  }
  return sorted.concat(left).concat(right);
}

function mergeSort(array) {
  if ( array.length === 1 ) {
    return array
  }

  let middle = array.length / 2;
  let left   = array.slice(0, middle);
  let right  = array.slice(middle);

  return conquer(mergeSort(left), mergeSort(right));
}

console.log(mergeSort([2,7,4,43,3,6,77,3,235,76,8,35,54,65,78,22]))
