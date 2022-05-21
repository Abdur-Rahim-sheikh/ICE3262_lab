%% B8ZS

function [t,x] = B8ZS(n,bits)
    T = length(bits);
    %N = length(bits)*n;
    t = 0:1/n:T;
    x = zeros(1,length(t));
    cons_zero = 0;
    
    for i=1:T
        if bits(i) ==0
            cons_zero = cons_zero+1;
        else
            cons_zero = 0;
        end
        if cons_zero == 8
            bits(i-4) = -1;
            bits(i-3) = 1;
            bits(i-1) = -1;
            bits(i) = 1;
            cons_zero = 0;
        end
    end
    state = -1;
    for i = 1:T
        if bits(i) ==1
            state = state*-1;
        end
        if bits(i)~=0
            x((i-1)*n+1:i*n) = state;
        end
        
        
    end


end