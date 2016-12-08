############################
# Name: Leo Gomez          #
# CruzID: legomez          #
# Class: CMPS-12M          #
# Date: Dec 10, 2014       #
# filename: Makefile       #
# Details: builds the files#
#   runs the test for lab7.#
############################

GCC      = gcc -g -O0 -Wall -Wextra -std=gnu99

CSOURCE   = main.c
OBJECTS   = ${CSOURCE:.c=.o}
EXECBIN   = hash
SOURCES   = ${CSOURCE} ${MKFILE}
WORDS     = words.txt

all : ${EXECBIN}

${EXECBIN} : ${OBJECTS}
	${GCC} -o $@ ${OBJECTS}

%.o : %.c
	${GCC} -c $<

clean :
	rm -f ${OBJECTS} core

spotless : clean
	rm -f ${EXECBIN}

test : ${EXECBIN}
	./${EXECBIN} ${WORDS}

.PHONY: all clean spotless test
