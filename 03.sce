
// linspace
x=linspace(0, 2*%pi, 100)
y=sin(x)
plot(x,y)

// scinotes
// powt. j.w.

//plot2
clf
x1=linspace(0,10,100)
y1=x1**2
plot(x1,y1)

x2 = [2, 5,8]
y2 = [4.2, 26, 70]
plot(x2,y2,'or')
xlabel('Czas, h')
ylabel('% degradacji')

// y = x**0.5
// y = x**3 - 2*x**2 - 9*x + 10, x=-4:6


// funkcje w Scilabie

function cp = oblicz_cp(ms,mw)
    cp = (ms/(mw+ms))*100
endfunction

disp(oblicz_cp(5, 95))



// rozwiązać równanie x**0.5 = 2.5

function y = fun(x)
    y = x**0.5 - 2.5
endfunction

guess = 1
x = fsolve( guess, fun)
disp(x)

// porownać z wykresem


// rozwiązać równanie x**3 - 2*x**2 - 9*x = -10
// sprawdzić wpływ guess na znalezione rozwiązania
// tutaj rozwiązanie


// rozwiązać układ równań
// x^2 + y^2 = 4, x*y = 1

function eq = fun(u)
    x = u(1)
    y = u(2)
    eq(1) = x^2 + y^2 - 4
    eq(2) = x*y - 1
endfunction


disp( fsolve([1; 0], fun) )
disp( fsolve([0; -1], fun) )



// from documentation:
function [x, y] = myfct(a, b)
  x=a+b
  y=a-b
endfunction

[x,y]=myfct(3,2)

