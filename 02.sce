// https://help.scilab.org/docs/6.0.0/en_US/index.html

// wektory i macierze

// ciąg (zakres)
//start:end
1:5
//start:krok:end
1:2:6

// [ ] służą do sklejania
// przecinek = poziomego
a = [1, 2, 3]
b = [4, 5, 6]
c = [a, b]

// średnik - skleja pionowo
aa = [1; 2; 3]
bb = [4; 5; 6]
cc = [aa; bb]
dd = [aa, bb]

a = [1:2:6]
b = [1:5 ; 1:5]

// apostrof = transpozycja wektorów/macierzy

aa
aa'

// () jednym z zastosowań - wybieranie elementów z wektrów/macierzy
// indeksowanie (od 1)

a = [1,2,3,4]
a(1)
a(2)

b = [1,2,3;4,5,6]
// (wiersz,kolumna)
b(1,1)
b(2,3)
// : = cały wiersz/kolumna
b(:)
b(:,:)
b(1,:)
b(:,1)
// albo zakres - wycinek
b(1,1:2)




//------------------
clear
clf

x = 1:10
y = sin(x)
plot(x,y,'b.')
xlabel('xxx')
ylabel('yyy')
