
// dysocjacja kwasu metakrylowego w wodzie

function eq = model(x)
    h = x(1)
    oh = x(2)
    ha = x(3)
    a = x(4)
    Ka = 10**-4.4
    Kw = 10**-14
    cHA = 0.01    
    eq(1) = Ka - (h*a)/ha
    eq(2) = Kw - h*oh
    eq(3) = cHA - ha - a
    eq(4) = h - oh - a
endfunction

guess = [1e-5; 1e-5; 1e-5; 1e-5] // 'średniki' = pionowy wektor
results = fsolve(guess, model)
