a.out:
  g++ tute01.c -otute01.o
  g++ tute02.c -otute02.o
  g++ tute03.c -otute03.o
  g++ tute04.c -otute04.o

clean:
  rm tute01.o
  rm tute02.o
  rm tute03.o
  rm tute04.o

test: a.out
	 bash test.sh
