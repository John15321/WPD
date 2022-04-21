function stable = is_stable(V,Vdot, x)

% Tworzymy symboliczne obiekty i nadajemy im wałsciwości
assume(x, 'real');
assumeAlso(x ~= 0);
positive_for_nonzero = isAlways(V > 0);

v0 = subs(V,x,0);

lapn = (v0 == 0) && positive_for_nonzero;

assume(x, 'real');
Vdotleq = isAlways(Vdot <= 0);
Vdotlt = isAlways(Vdot < 0);

assumeAlso(x ~= 0);
Vdotnonzero = isAlways(Vdot ~= 0);

if lapn
    if Vdotlt
        stable = 'asymptotycznie stabilny';
    elseif Vdotleq
        if Vdotnonzero
            stable = 'asymptotycznie stabilny';
        else
            stable = 'stabilny';
        end
    else
        stable = 'nie stabilny';
    end
else
    stable = 'nie stabilny';
end
end