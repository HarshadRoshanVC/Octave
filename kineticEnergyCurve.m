function kineticEnergyCurve
    m=1
    for iter =1:1:3
        %looping through m=1,3,5
        %setting v a list of 11 to 49
        v=11:1:49;
        %plotting curve
        plot(v, kinetic_energy(m,v));
        %holding on plot to contain multiple curve in single plot
        hold on
        m +=power(2,iter)
    endfor
    %setting x label
    xlabel ("Velocity");
    %setting y label
    ylabel ("Kinetic energy");
    %setting title
    title ("Kinetic enery Vs Velocity");
    %setting legend
    legend("m=1","m=3","m=7")

    hold off
endfunction


function [energy] = kinetic_energy(m,v)
    %this function returns kinetic energy calculated by equation T=0.5mv^2
    energy = 0.5 * m * power(v,2)
endfunction
