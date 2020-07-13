function velocity(t)
    vt=[]
    for ti =t
        if( ti >= 0 && ti < 8)
            vt(end+1) = (10 * power(ti,2)) - (5 * ti)
        elseif( ti < 16 )
            vt(end+1) = 624 - (3 * ti)
        elseif( ti < 26 )
            vt(end+1) = (36 * ti) + (12 * power(ti - 16,2))
        elseif( ti > 26 )
            vt(end+1) = (2136 * exp(-0.1 * (ti - 26)))
        else 
            vt(end+1) = 0
        endif
    endfor
    plot(t,vt,"k")
    grid on
    xlabel("Time,t")
    ylabel("Velocity,V(t)")
    title("Time vs Velocity")
    
    
endfunction

t=[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,30,40]
velocity(t)
