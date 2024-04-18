
/* A Bison parser, made by GNU Bison 2.4.1.  */

/* Skeleton interface for Bison's Yacc-like parsers in C
   
      Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.
   
   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */


/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     INT = 258,
     FLOAT = 259,
     CHAR = 260,
     DOUBLE = 261,
     ID = 262,
     NUM = 263,
     INCLUDE = 264,
     MAIN = 265,
     DO = 266,
     WHILE = 267,
     IF = 268,
     ELSE = 269,
     FOR = 270,
     SWITCH = 271,
     CASE = 272,
     BREAK = 273,
     CONTINUE = 274,
     ASSIGN = 275,
     EQCOMP = 276,
     GREATEREQ = 277,
     LESSEREQ = 278,
     NOTEQ = 279,
     GREATER = 280,
     LESS = 281,
     ADD = 282,
     SUB = 283,
     MULT = 284,
     DIV = 285
   };
#endif
/* Tokens.  */
#define INT 258
#define FLOAT 259
#define CHAR 260
#define DOUBLE 261
#define ID 262
#define NUM 263
#define INCLUDE 264
#define MAIN 265
#define DO 266
#define WHILE 267
#define IF 268
#define ELSE 269
#define FOR 270
#define SWITCH 271
#define CASE 272
#define BREAK 273
#define CONTINUE 274
#define ASSIGN 275
#define EQCOMP 276
#define GREATEREQ 277
#define LESSEREQ 278
#define NOTEQ 279
#define GREATER 280
#define LESS 281
#define ADD 282
#define SUB 283
#define MULT 284
#define DIV 285




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;


