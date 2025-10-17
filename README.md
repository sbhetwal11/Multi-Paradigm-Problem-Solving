# Statistics Calculator (C • OCaml • Python)

This project demonstrates how the same statistical problem — calculating the **mean**, **median**, and **mode** — can be implemented using **three different programming paradigms**:

- **C** : Procedural Programming  
- **OCaml** : Functional Programming  
- **Python** : Object-Oriented Programming  

Each implementation solves the same task in its own style, showing how design philosophy shapes both the logic and structure of a program.

---

##  Overview

Given a list of integers, the program calculates:
- **Mean** : The average of all numbers  
- **Median** : The middle value when sorted  
- **Mode** : The most frequently occurring number(s)

---

##  Implementations

### C (Procedural)
- File: `stats_c.c`  
- Uses arrays, loops, and manual memory management (`malloc`, `free`).  
- Sorting is performed with `qsort`.  
- Functions: `calculate_mean`, `calculate_median`, `calculate_mode`.  

**Run:**
```bash
gcc stats_c.c -o stats_c
./stats_c
```
- Can also be run using online compiler for simplicity.

---

###  OCaml (Functional)
- File: `stats_ocaml.ml`  
- Uses recursion, immutability, and higher-order list functions (`List.fold_left`, `List.sort`).  
- Focuses on concise, pure functions with no mutable state.

**Run:**
```bash
ocaml stats_ocaml.ml
```
- Can also be run using online compiler for simplicity.

---

###  Python (Object-Oriented)
- File: `stats_python.py`  
- Encapsulates logic inside a `StatisticsCalculator` class.  
- Uses lists and dictionaries for quick computation.

**Run:**
```bash
python3 stats_python.py
```
- Can also be run using online compiler for simplicity.

---

##  Sample Input / Output

**Input:**
```
Enter numbers separated by space: 4 1 2 2 3 5
```

**Output:**
```
Mean: 2.83
Median: 2.50
Mode: 2
```

---

### Author
** ---- **  
```
- Sagar Bhetwal
- Secure Software Development (MSCS-632-A01)
-Instructor: Dr. Jay Thom (Ph.D.)
```

