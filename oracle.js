let test_data = [
  {productId:7},
  {productId:7},
  {productId:7},
  {productId:7},
  {productId:7},
  {productId:5},
  {productId:5},
  {productId:5},
  {productId:5},
  {productId:5},
  {productId:5},
  {productId:5},
  {productId:11},
  {productId:11},
  {productId:11},
  {productId:11},
  {productId:11},
  {productId:11},
  {productId:10},
  {productId:10},
  {productId:10},
  {productId:10},
  {productId:10},
  {productId:10},
  {productId:10},
  {productId:10},
  {productId:10},
  {productId:10},
  {productId:5},
  {productId:5},
  {productId:5},
  {productId:5},
  {productId:5},
  {productId:4},
  {productId:4},
  {productId:4},
  {productId:4},
  {productId:3},
  {productId:1},
  {productId:1}
]
// Given 1000 of order objects, return top 10 best sellers
class MaxHeap {
  constructor(storage) {
    this.storage = storage
  }

  size() {
    return this.storage.length
  }

  compare(child1, child2) {
    return this.storage[child1] > this.storage[child2]
  }

  swap(a,b) {
    [this.storage[a], this.storage[b]] = [this.storage[b], this.storage[a]]
  }

  getChildIndices(index) {
    return [(2 * index) + 1, (2 * index) + 2];
  }

  // Returns the index of the smaller child, or undefined if there are no children
  findMaxChildIndex(leftIndex, rightIndex) {
    let maxChildIndex;
    let leftChild = this.storage[leftIndex]
    let rightChild = this.storage[rightIndex]

    if(leftChild !== undefined) {
      if(rightChild === undefined) {
        maxChildIndex = leftIndex;
      } else {
        maxChildIndex = rightChild[countIndex] > leftChild[countIndex] ? rightIndex : leftIndex;
      }
    }
    return maxChildIndex;
  }

  // Takes in an index since we want to use it for heapify
  // When removing the top, just pass in index 0
  bubbleDown(currentIndex) {
    let current = this.storage[currentIndex];
    let [leftIndex, rightIndex] = this.getChildIndices(currentIndex);
    let maxChildIndex = this.findMaxChildIndex(leftIndex, rightIndex);
    let maxChild = maxChildIndex === undefined ? undefined : this.storage[maxChildIndex];

    while(maxChild !== undefined && current[countIndex] < maxChild[countIndex]) {
      [this.storage[currentIndex], this.storage[maxChildIndex]] = [this.storage[maxChildIndex], this.storage[currentIndex]];

      currentIndex = maxChildIndex;

      [leftIndex, rightIndex] = this.getChildIndices(currentIndex);

      maxChildIndex = this.findMaxChildIndex(leftIndex, rightIndex);

      maxChild = maxChildIndex === undefined ? undefined : this.storage[maxChildIndex];
    }
  }

  // time complexity O(1)
  remove() {
    this.swap(0, this.size()-1)
    let max = this.storage.pop()
    this.bubbleDown(0)
    return max
  }

  // time complexity O(N)
  heapify() {
    for(let i = this.size()-1; i >= 0; i--) {
      this.bubbleDown(i)
    }
  }
}
const countIndex = 0

const bestSellers = (orders) => {
  if (orders.length == 0) return

  let counts = {}

  for(let i = 0; i < orders.length; i++) {
    if(!counts[orders[i].productId]){
      counts[orders[i].productId] = [countIndex, orders[i]]
    }
    counts[orders[i].productId][countIndex] += 1
  }

  maxHeap = new MaxHeap(Object.values(counts))
  maxHeap.heapify()
  return new Array(maxHeap.size()).fill(undefined).map(_ => maxHeap.remove()[1])
}

console.log(bestSellers(test_data))
