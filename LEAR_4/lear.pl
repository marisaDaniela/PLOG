:- ensure_loaded('board.pl').
:- ensure_loaded('menus.pl').
:- ensure_loaded('utils.pl').

:- use_module(library(lists)).
:- use_module(library(random)).
:- dynamic state/2.


hum_hum:- write('oi').
