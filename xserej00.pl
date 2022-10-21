% Zadání č. 30:
% Napište program řešící úkol daný predikátem u30(LIN,VOUT), kde LIN je  
% vstupní číselný seznam s nejméně jedním prvkem a VOUT je proměnná, ve 
% které se vrací průměrná hodnota absolutních hodnot čísel v seznamu LIN. 

% Testovací predikáty:                                 		% VOUT 
u30_1:- u30([5,3,-18,2,-9,-13,17],VOUT),write(VOUT).		% 9.57...
u30_2:- u30([5,2],VOUT),write(VOUT).				% 3.5
u30_3:- u30([-18.3,-9.2,-13.1],VOUT),write(VOUT).		% 13.53...
u30_r:- write('Zadej LIN: '),read(LIN),
	u30(LIN,VOUT),write(VOUT).

abs2(X,Y) :- X < 0 -> Y is -X ; Y = X.

list_sum_length([],0,0).
list_sum_length([X|TAIL],M,N) :- list_sum_length(TAIL,M1,N1),abs2(X,Y), M is M1 + Y, N is N1 + 1.

u30(LIN,VOUT):- list_sum_length(LIN,SUM,LENGTH), VOUT is SUM/LENGTH.
