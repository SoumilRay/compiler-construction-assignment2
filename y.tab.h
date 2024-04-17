/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

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

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token kinds.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    YYEMPTY = -2,
    YYEOF = 0,                     /* "end of file"  */
    YYerror = 256,                 /* error  */
    YYUNDEF = 257,                 /* "invalid token"  */
    PROGRAM = 258,                 /* PROGRAM  */
    IDENTIFIER = 259,              /* IDENTIFIER  */
    VAR = 260,                     /* VAR  */
    BEGINN = 261,                  /* BEGINN  */
    END = 262,                     /* END  */
    PERIOD = 263,                  /* PERIOD  */
    INTEGER = 264,                 /* INTEGER  */
    REAL = 265,                    /* REAL  */
    BOOLEAN = 266,                 /* BOOLEAN  */
    CHARACTER = 267,               /* CHARACTER  */
    COLON = 268,                   /* COLON  */
    SEMICOLON = 269,               /* SEMICOLON  */
    COMMA = 270,                   /* COMMA  */
    VTYPE = 271,                   /* VTYPE  */
    REL_OP = 272,                  /* REL_OP  */
    BOOL_OP = 273,                 /* BOOL_OP  */
    AR_OP = 274,                   /* AR_OP  */
    TO = 275,                      /* TO  */
    DOWNTO = 276,                  /* DOWNTO  */
    IF = 277,                      /* IF  */
    ELSE = 278,                    /* ELSE  */
    WHILE = 279,                   /* WHILE  */
    FOR = 280,                     /* FOR  */
    DO = 281,                      /* DO  */
    ARRAY = 282,                   /* ARRAY  */
    READ = 283,                    /* READ  */
    WRITE = 284,                   /* WRITE  */
    QUESTIONMARK = 285,            /* QUESTIONMARK  */
    EXCLAMATIONMARK = 286,         /* EXCLAMATIONMARK  */
    STRING = 287,                  /* STRING  */
    FNUMBER = 288,                 /* FNUMBER  */
    DNUMBER = 289,                 /* DNUMBER  */
    BO = 290,                      /* BO  */
    BC = 291,                      /* BC  */
    ASS_OP = 292,                  /* ASS_OP  */
    THEN = 293,                    /* THEN  */
    SBO = 294,                     /* SBO  */
    SBC = 295,                     /* SBC  */
    OF = 296                       /* OF  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif
/* Token kinds.  */
#define YYEMPTY -2
#define YYEOF 0
#define YYerror 256
#define YYUNDEF 257
#define PROGRAM 258
#define IDENTIFIER 259
#define VAR 260
#define BEGINN 261
#define END 262
#define PERIOD 263
#define INTEGER 264
#define REAL 265
#define BOOLEAN 266
#define CHARACTER 267
#define COLON 268
#define SEMICOLON 269
#define COMMA 270
#define VTYPE 271
#define REL_OP 272
#define BOOL_OP 273
#define AR_OP 274
#define TO 275
#define DOWNTO 276
#define IF 277
#define ELSE 278
#define WHILE 279
#define FOR 280
#define DO 281
#define ARRAY 282
#define READ 283
#define WRITE 284
#define QUESTIONMARK 285
#define EXCLAMATIONMARK 286
#define STRING 287
#define FNUMBER 288
#define DNUMBER 289
#define BO 290
#define BC 291
#define ASS_OP 292
#define THEN 293
#define SBO 294
#define SBC 295
#define OF 296

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
