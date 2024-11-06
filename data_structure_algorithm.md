===================================Data structures in Ruby====================================
Ruby provides several basic data structures to store and manage collections of data:

### 1. **Array**
   - An ordered, index-based collection of elements.
   - Allows duplicate elements and can store items of different types.
   - Commonly used methods: `push`, `pop`, `each`, `map`, `select`.

   ```ruby
   arr = [1, 2, 3, "hello", :symbol]
   arr.push(4)   # => [1, 2, 3, "hello", :symbol, 4]
   ```

### 2. **Hash**
   - A collection of key-value pairs, similar to a dictionary.
   - Keys can be symbols, strings, or any other object.
   - Commonly used methods: `keys`, `values`, `each`, `fetch`.

   ```ruby
   hash = { name: "Alice", age: 25 }
   hash[:name]  # => "Alice"
   ```

### 3. **Set**
   - A collection of unordered, unique values.
   - Part of the `Set` class in the `set` library, so it requires `require 'set'`.
   - Commonly used methods: `add`, `delete`, `include?`.

   ```ruby
   require 'set'
   set = Set.new([1, 2, 2, 3])
   set.add(4)    # => #<Set: {1, 2, 3, 4}>
   ```

### 4. **Range**
   - Represents a sequence of values with a beginning and an end.
   - Often used in loops and conditional expressions.
   - Commonly used methods: `include?`, `each`, `to_a`.

   ```ruby
   range = (1..5)  # Includes 1 to 5
   range.to_a      # => [1, 2, 3, 4, 5]
   ```

### 5. **Struct**
   - A lightweight data structure for grouping related data, similar to a simple class.
   - Allows quick creation of objects with named attributes.

   ```ruby
   Person = Struct.new(:name, :age)
   person = Person.new("Alice", 25)
   person.name    # => "Alice"
   ```

These structures allow Ruby to handle collections, mappings, unique sets, sequences, and structured data flexibly and efficiently.


  ===================================Algorithms in Ruby====================================
Here are some common algorithms that you can implement in Ruby, covering sorting, searching, and data manipulation:

### 1. **Sorting Algorithms**
   - **Bubble Sort**: Simple comparison-based sort, repeatedly swapping adjacent elements that are in the wrong order.
   - **Selection Sort**: Finds the smallest (or largest) element and places it in the correct position, one item at a time.
   - **Insertion Sort**: Builds a sorted array by repeatedly inserting elements in their correct position.
   - **Merge Sort**: Divides the list into halves, sorts each half, and then merges them.
   - **Quick Sort**: Divides the array around a pivot, sorting elements based on their comparison with the pivot.
   - **Heap Sort**: Uses a heap data structure to sort elements in place.

### 2. **Searching Algorithms**
   - **Linear Search**: Sequentially checks each element until it finds the target.
   - **Binary Search**: For sorted arrays, divides the array and eliminates half of the elements with each comparison.
   - **Depth-First Search (DFS)**: Traverses graphs or trees by going as deep as possible before backtracking.
   - **Breadth-First Search (BFS)**: Traverses graphs or trees by visiting all neighbors at the present depth before moving to nodes at the next depth level.

### 3. **Graph Algorithms**
   - **Dijkstra’s Algorithm**: Finds the shortest path in a weighted graph.
   - **Floyd-Warshall Algorithm**: Calculates shortest paths between all pairs of nodes in a graph.
   - **Kruskal’s Algorithm**: Finds the minimum spanning tree of a graph by connecting nodes with the least weight edges.
   - **Prim’s Algorithm**: Builds a minimum spanning tree by expanding the tree from an initial vertex.

### 4. **String Algorithms**
   - **Pattern Matching (Knuth-Morris-Pratt)**: Searches for a substring pattern within a larger string.
   - **Anagram Detection**: Checks if two strings are anagrams of each other.
   - **Palindrome Check**: Determines if a string reads the same backward and forward.

### 5. **Dynamic Programming Algorithms**
   - **Fibonacci Sequence**: Calculates Fibonacci numbers using memoization for efficient computation.
   - **Knapsack Problem**: Determines the most valuable subset of items that fit within a specified weight limit.
   - **Longest Common Subsequence**: Finds the longest subsequence common to two sequences.
   - **Longest Increasing Subsequence**: Finds the longest subsequence of numbers in increasing order.

### 6. **Greedy Algorithms**
   - **Coin Change**: Finds the minimum number of coins needed for a given amount.
   - **Fractional Knapsack**: Maximizes profit by taking fractions of items for a specified weight.
   - **Job Sequencing Problem**: Maximizes profit or minimizes time for completing jobs.

### 7. **Divide and Conquer Algorithms**
   - **Merge Sort**: Recursively divides and merges sorted lists.
   - **Quick Sort**: Recursively divides the array around pivots.
   - **Binary Search**: Recursively searches by dividing sorted arrays.

### 8. **Backtracking Algorithms**
   - **N-Queens Problem**: Places queens on a chessboard such that no two queens threaten each other.
   - **Sudoku Solver**: Fills a Sudoku grid following game rules using backtracking.
   - **Subset Sum**: Finds subsets that sum to a given value.

These algorithms are fundamental in Ruby programming and provide a strong base for developing efficient applications. You can find Ruby implementations or create your own based on the concepts for each algorithm.
