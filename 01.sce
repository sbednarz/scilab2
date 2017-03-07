// komentarz zaczynają dwa slashe
// Scilab: https://www.scilab.org/download/latest

// konsola
// echo


//-----------------------------------------------
// wprowadzenie - ćwiczenia na konsoli
// ----------------------------------------------

//kalkulator
2+2
4+4
log(10)
20/(log(2**2+5))

//potęgowanie
45**6

//zmienne
a=3
pH=7.5
//obliczenia
ms=10
mr=100
cp=ms/mr*100
ms+mr
//prawda-fałsz
2>5
5==5



//wektor wierszowy
v1=[1,2,3,4]

//wektor kolumnowy
v2=[1;2;3;4]

//transpozycja
v1'
v2'

//zakresy, ciągi wartości
// start:end
//start:step:end

1:10
1:0.5:10

v3=[1:1:10]
v3

//macierz, średnik rozdziela kolumny
m1=[1,2,3;4,5,6]

// odwołania po indeksach do elementów wektora/macierzy
// pojedyńcze elementy
v3(2)
m1(1,1)
m1(2,2)
m1(1,1) + m1(2,2)

// wybieranie 'większych częśći' kolumn, wierszy
m1(1:2,1:2)
m1(:,2)
m1(:,:)


// jak to działa?
linspace(1,2,5)

//działania skalar-macierz
x=[1,2,3,4,5,6,7]
y=2*x
y2=4*x**2+4*x+10

// stałe matematyczne
%pi
%e


function cp = licz_cp(ms, mr)
    cp = ms/mr*100
endfunction

cp1 = licz_cp(10,100)
disp(cp1)
