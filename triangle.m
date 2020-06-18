
function triangle
    %reading triangle sides
    disp("Enter sides of triangle")
    sides(1)=input("Side 1:")
    sides(2)=input("Side 2:")
    sides(3)=input("Side 3:")
    %checking whether the sides form a triangle or not
    if(sides(1)+sides(2)<=sides(3) || sides(1)+sides(3)<=sides(2) || sides(3)+sides(2)<=sides(1) )
        disp("The sides does not form  a triangle")
    else
        disp("The sides does form  a triangle")
        %calculating perimeter, change perimeter function name to your last name 5 letters
        perimeter=LNXXX_Perimeter(sides)
        printf("Perimeter of the triangle=%d\n",perimeter)
        %calculating half of perimeter for calculating area
        p=perimeter/2
        %calculating area of triangle
        triangleArea=sqrt(p	* (p - sides(1)) * (p - sides(2)) * (p - sides(3)))
        printf("Area of triangle=%d\n",triangleArea)
        %looping through all the sides
        for side = sides
            %checking whether side is integer or not
            if(floor(side)==side)
                printf("%d is integer\n",side);
            else
                printf("%d is real number\n",side);
            endif
        endfor
    endif
    %ending program
    disp("Program execution completed")
endfunction

function perimeter = LNXXX_Perimeter(sides)
    perimeter = sum(sides)
    return 
endfunction
