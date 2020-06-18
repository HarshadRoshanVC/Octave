function [X] =findMaxXOfPoly(P,R)
    %setting lower limit
    L_limit = R(1)
    %setting upper limit
    U_limit = R(2)
    %setting higher coefficient power
    P_length = length(P) - 1
    %initializing max to minus infinity
    max = -Inf
    %looping through the interval
    while(L_limit <= U_limit)
        %setting starting sum to zero
        sum = 0.000
        %setting power
        pow = P_length;
        %looping through polynomial vector
        for coeff = P
            %adding value of each part
            sum += coeff * power(L_limit,pow)
            %decreasing power
            pow -= 1
        endfor
        %checking new sum is greater than of max
        if(max < sum)
            %if so changing sum and X
            max = sum
            X = L_limit
        endif
        %changing range value for next iteration
        L_limit = L_limit+1
    endwhile
    return
end
