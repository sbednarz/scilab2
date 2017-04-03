//
//
// A <=> B
clear
A0=1
B0=0
K=10

function eq=model(u)
	A=u(1)
	B=u(2)
	eq(1)=B/A-K
	eq(2)=A+B-A0
endfunction

[conc,v,info]=fsolve([0.5;0.5],model)
disp(conc)
disp(info)
disp(conc(1)+conc(2))

//
//
// A <=> 2B

clear

A0=1
B0=0
K=10

function eq=model(u)
	A=u(1)
	B=u(2)
	eq(1)=B/A-K
	eq(2)=A+0.5*B-A0
endfunction

[conc,v,info]=fsolve([0.5;0.5],model)

disp(conc)
disp(info)
//sprawdzenie
disp(conc(1)+conc(2)/2)

clear

//
//
// A <=> 2B , K1
// A <=> C , K2

clear

A0=1
B0=0
C0=0
K1=10
K2=20

function eq=model(x)
	A=x(1)
	B=x(2)
	C=x(3)
	eq(1)=B/A-K1
	eq(2)=C/A-K2
	eq(3)=A+0.5*B+C-A0
endfunction

[conc,v,info]=fsolve([0.5;0.5;0.5],model)

disp(conc)
disp(info)
disp('sprawdzenie:')
disp(conc(1)+conc(2)/2+conc(3))





// A <=> B + C
// A0 = 2
// K = 1e-5
clear
function eq = model(u)
    A = u(1)
    B = u(2)
    C = u(3)
    A0 = 2
    K = 1e-3
    eq(1) = K - (B*C)/A
    eq(2) = A0 - A - B
    eq(3) = A0 - A - C
endfunction

guess = [1;1;1]

[r,v,i] = fsolve(guess, model)
disp(r)
disp(v)
disp(i)


// HA <=> H + A
// H2O <=> H + OH
// CA0 = 0.1
// Ka = 1e-5
// Kw = 1e-14

clear
function eq = model(u)
    H = u(1)
    A = u(2)
    OH = u(3)
    HA = u(4)
    CA0 = 0.1
    Ka = 1.86e-5
    Kw = 1e-14
    eq(1) = Ka - (H*A)/HA
    eq(2) = CA0 - A - HA
    eq(3) = Kw - H*OH
    eq(4) = H - OH - A
endfunction

guess = [1e-5;1e-5;1e-5;1e-5]

[r,v,i] = fsolve(guess, model)
disp(r)
disp(v)
disp(i)
H = r(1)
//pH
disp(-log10(H))




//pH roztworu kwasu siarkowego (IV)
clear
c_h2so3 = 0.01 //M
Ka1=0.017
Ka2=10^-7.19
Kw=1e-14

function eq = model(u)
    
    //lista jonow i obojetnych cz. => 4
    h=u(1)
    oh=u(2)
    h2a=u(3)
    ha=u(4)
    a=u(5)

    //iloczyn jonowy wody
    eq(1)=h*oh-Kw
    //bilans ladunku
    eq(2)=h-2*a-ha
    //bilans kwasu
    eq(3)=h2a+ha+a-c_h2so3
    //dysocjacja kwasu 1
    eq(4)=(ha*h)/h2a-Ka1
    //dysocjacja kwasu 2
    eq(5)=(a*h)/ha-Ka2

endfunction

[conc,v,info]=fsolve([1e-2; 1e-2; 1e-2; 1e-2; 1e-2], model)
pH=-log10(conc(1))
disp(pH)







// Obliczyć jaką objętość toluenu i heksanu należy zmieszać aby 
// otrzymać Vtotal roztworu o zadanym ułamku molowym toluenu xt

clear
Vtotal=100
xt=0.8
//masy molowe
Mh=86
Mt=92
//gęstości
roh=0.65
rot=0.86

//guess
//Vt=50
//Vh=50

function eq = mix(u)
    Vt=u(1)
    Vh=u(2)
    //ilości moli
    nt=(rot*Vt)/Mt
    nh=(roh*Vh)/Mh
    //równania
    eq(1) = nt/(nt+nh)-xt
    eq(2) = Vt+Vh-Vtotal
endfunction

V=fsolve([50;50], mix)
Vt=V(1)
Vh=V(2)
printf("Aby przygotować %f ml mieszaniny o xt=%f \n",Vtotal, xt)
printf("Należy zmieszać: %f ml toluenu i %f ml heksanu", Vt, Vh)



