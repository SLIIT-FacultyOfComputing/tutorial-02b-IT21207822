echo Which program do you want to run?
echo
echo 1 - Tute01.cpp
echo 2 - Tute02.cpp
echo 3 - Tute03.cpp
echo 4 - Tute04.cpp 
echo
read -p 'Enter your Choice (1-4) : ' no

case $no in 1*)
     filename="tute01.cpp"
;;
  2*)
     filename="tute02.cpp"
;;
  3*)
     filename="tute03.cpp"
;;
  4*)
     filename="tute04.cpp"
;;
esac

clang++-7 -pthread -std=c++17 -o main $filename
./main

echo
echo
read -p 'Do you want to Test if your program is correct ? (Y/N) :' choice

if [ $choice == 'Y' ] || [ $choice == 'y' ]; then
  if [ $no -ge 1 -a $no -le 4 ]; then
     ./test $no
  fi
fi
