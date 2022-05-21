%% HBD3
function [t,x] = HBD3(n,bits)
     T = length(bits);
    %N = length(bits)*n;
    t = 0:1/n:T;
    x = zeros(1,length(t));
    cons_zero = 0;
    state = 0;
     for i=1:T
        if bits(i) ==0
            cons_zero = cons_zero+1;
        else
            state = mod(state+1,2);
            cons_zero = 0;
        end
        if cons_zero == 4
            bits(i) = -1;
            if state==0
                bits(i-3) = 1;
            end
            state = 0;
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