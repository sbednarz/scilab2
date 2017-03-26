// dysocjacja słabego kwasu
// K = x**2/(A0-x)

function y = model(x)
    K = 1e-4
    A0 = 0.1
    y = K - x**2/(A0 - x)
endfunction

guess = 1e-5
[x,v,i] = fsolve(guess, model)

disp('wynik:')
disp(x) // wynik
disp(v) // jak blisko zera
disp(i) // 1 to OK


// policzyć A0 dla ...


// A <=> B + C + D
// K = ...
// K=.. A0=..
// A + B <=> C + D
