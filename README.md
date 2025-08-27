[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/KSs0CQzU)
# Assignment of C++ Program using for loop 

## Objective

This repository contains multiple C++ programs that demonstrate the use of loops:

printevennum.cpp — Prints even numbers between start input value and end input value.

sumevenodd.cpp —  This code accepts N numbers from the user, then prints the sum of even numbers and sum of odd numbers 

average.cpp — Thic program asks the user for the number of elements N, then accepts N numbers as input, and finally calculates and displays the average of those numbers.

printhalfpyramid.cpp — This program takes an integer input rows from the user and prints a half pyramid pattern of stars (*) as given below

printhalfpyramidnum.cpp — This program takes an integer input n from the user and prints a number pyramid pattern, where the numbers start from 1 and increase sequentially in each row.

---

## Files in This Repository

* 'printevennum.cpp', 'sumevenodd.cpp', 'average.cpp', 'printhalfpyramid.cpp', 'printhalfpyramidnum.cpp' — **This is the only file you will edit.**
* `check.sh` — Automated test script. **Do not change this file.**
* `README.md` — Instructions. **Do not change this file.**

---

## Workflow

### 1. Download the Repository

Download the repository as a ZIP file:

1. Open your repository page on GitHub.
2. Click the green **Code** button.
3. Select **Download ZIP**.
4. Extract the ZIP into your **home directory** (or another folder you can easily access).

Now, you need to open the extracted folder in a terminal.
There are **two options**:

**Option A: Use `cd` in the terminal**
If your repository name is `assignment-3-roll123`, run:

```bash
cd ~/assignment-5-roll123
```

* `~` means your home directory.
* Use the **Tab key** to auto-complete folder names while typing.
* If you are not sure where you extracted the ZIP, check with:

  ```bash
  ls
  ```

  and look for the folder name.

**Option B: Open the terminal from the file manager**

1. Navigate to the extracted folder in your file manager.
2. Right-click inside the folder (on empty space).
3. Select **“Open in Terminal.”**
   → A terminal will open directly inside that folder.

---

### 2. Install `g++` (if not already installed)

On Ubuntu/Linux, install the GNU C++ compiler:

```bash
sudo apt update
sudo apt install g++
g++ --version
```

You should see the installed version number.

---

## How to compile and run a single program

1. Open a terminal in this repository folder.
2. Compile the program with g++ and run it, for example:

- Compile and run `printevennum.cpp`:
```
g++ printevennum.cpp -o printevennum
echo "5 20" | ./printevennum
```

- Compile and run `sumevenodd.cpp`:
```
Example: Suppose you want to give N = 5 and then the 5 numbers.

g++ sumevenodd.cpp -o sumevenodd
echo "5 10 3 8 7 12" | ./sumevenodd

Here’s what happens:
5 → N (number of inputs)
10 3 8 7 12 → the actual numbers

Output:
The sum of even numbers is : 30
The sum of odd numbers is  : 10

```

- Compile and run `average.cpp`:
```
g++ average.cpp -o average
echo "3 10 20 30" | ./average

Explanation:
3 → tells the program you will enter 3 numbers.
10 20 30 → the actual numbers.

Output:
The average of the entered input numbers is = 20
```

- Compile and run `printhalfpyramid.cpp`:
```
g++ printhalfpyramid.cpp -o printhalfpyramid
echo "5" | ./printhalfpyramid

Output:
* 
* * 
* * * 
* * * * 
* * * * * 

```

- Compile and run `printhalfpyramidnum.cpp`:
```
g++ printhalfpyramidnum.cpp -o printhalfpyramidnum
echo "4" | ./printhalfpyramidnum

Output:
1 
2 3 
4 5 6 
7 8 9 10 
```



Notes:
- Use `echo <N> | ./program` in examples above to feed input non-interactively. You can also run the program and type N manually.

## How to run the test script `check.sh`

1. Make sure the script is executable (once):
```
chmod +x check.sh
```
2. Run the script:
```
./check.sh
```

The script will compile each program, run multiple test cases, verify outputs, and print a summary of how many tests passed and failed.
