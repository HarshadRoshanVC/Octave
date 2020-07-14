function signal(t)
    xt=[]
    for ti =t
        xt(end+1) = (1 + (2 * cos(4000 * 180 * ti))) * (cos(400 * 180 * ti))
    end
    plot(t,xt)
    grid on
    xlabel("t")
    ylabel("Signal,x(t)")
    title("t vs Signal")
    
    
end
%sample signal t
t=[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,30,40]
signal(t)
