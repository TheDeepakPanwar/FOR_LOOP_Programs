#!/usr/bin/env bash
# Unified test runner for printevennum.cpp and sumevenodd.cpp

set -u

CXX=${CXX:-g++}
CXXFLAGS="-std=c++17 -O2 -Wall -Wextra -Werror -pedantic"

sources=(printevennum.cpp average.cpp sumevenodd.cpp printhalfpyramid.cpp printhalfpyramidnum.cpp)
binaries=(printevennum average sumevenodd printhalfpyramid printhalfpyramidnum)

compile() {
  local src="$1" out="$2"
  echo "Compiling $src -> $out"
  $CXX $CXXFLAGS "$src" -o "$out"
}

pass=0
fail=0
total=0

run_test() {
  local exe="$1" input="$2" expected="$3"
  ((total++))
  local output
  output="$(echo -e "$input" | "./$exe")"
  # Normalize CRLF just in case
  output="$(echo -n "$output" | tr -d '\r')"
  if [[ "$output" == "$expected" ]]; then
    echo "✓ $exe <$input> => PASS"
    ((pass++))
  else
    echo "✗ $exe <$input> => FAIL"
    echo "   expected:"
    echo "$expected"
    echo "   got:"
    echo "$output"
    ((fail++))
  fi
}

# --- Compile all sources ---
for i in "${!sources[@]}"; do
  compile "${sources[$i]}" "${binaries[$i]}" || { echo "Compilation failed for ${sources[$i]}"; exit 1; }
done

echo
echo "== Running tests =="

# -------- Tests for printevennum --------
run_test printevennum "2\n10\n" $'Enter the starting number: Enter the ending number: Even numbers between 2 and 10 are: \n2\t4\t6\t8\t10\t'
run_test printevennum "3\n9\n"  $'Enter the starting number: Enter the ending number: Even numbers between 3 and 9 are: \n4\t6\t8\t'
run_test printevennum "5\n5\n"  $'Enter the starting number: Enter the ending number: Even numbers between 5 and 5 are: '

# average.cpp tests
# Note: program prints prompts, so we must include them in expected output
run_test average "3\n1\n2\n3\n" $'Enter the number of elements to calculate the average::\nEnter 3 elements one by one\n\n\nThe average of the entered input numbers is = 2'
run_test average "4\n10\n20\n30\n40\n" $'Enter the number of elements to calculate the average::\nEnter 4 elements one by one\n\n\nThe average of the entered input numbers is = 25'

# -------- Tests for sumevenodd --------
# Example 1: N=5, input numbers 1,2,3,4,5
# evens = 2+4=6, odds=1+3+5=9
run_test sumevenodd "5\n1\n2\n3\n4\n5\n" \
$'Enter how many numbers you want to input: Enter number 1 : Enter number 2 : Enter number 3 : Enter number 4 : Enter number 5 : The sum of even numbers is : 6\nThe sum of odd numbers is  : 9'

# Example 2: N=4, input numbers 10,11,12,13
# evens=10+12=22, odds=11+13=24
run_test sumevenodd "4\n10\n11\n12\n13\n" \
$'Enter how many numbers you want to input: Enter number 1 : Enter number 2 : Enter number 3 : Enter number 4 : The sum of even numbers is : 22\nThe sum of odd numbers is  : 24'

# Test printhalfpyramid
run_test printhalfpyramid "3\n" $'Enter number of rows: * \n* * \n* * * '
run_test printhalfpyramid "1\n" $'Enter number of rows: * '
run_test printhalfpyramid "0\n" $'Enter number of rows: '

# Test printhalfpyramidnum
run_test printhalfpyramidnum "4\n" $'Enter number of rows: 1 \n2 3 \n4 5 6 \n7 8 9 10 '
run_test printhalfpyramidnum "2\n" $'Enter number of rows: 1 \n2 3 '
run_test printhalfpyramidnum "0\n" $'Enter number of rows: '

echo
echo "Summary: Passed=$pass Failed=$fail Total=$total"
[[ $fail -eq 0 ]] && exit 0 || exit 1
