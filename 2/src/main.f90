program exercise_2_7    
   implicit none
   
   character(*), parameter    :: input_file = "../data/input.txt", output_file = "output.txt"
   character(:), allocatable  :: fmt  !формат для ввода-вывода
   integer                    :: In = 0, Out = 0
   real(4)                      :: X , Y , Z

  
   open (file=input_file, newunit=In)
      read (In, *) X, Y
   close (In) 

   open (file=output_file, newunit=Out)
      fmt = "(a, '=', F0.2, '  ', a, '=', F0.2 )"
      write (Out, fmt) "x", X , "y", Y 
  ! close (Out)  !На самом деле можно оставить файл открытым и дальнейшие действия выполнять при открытом файле
   !Много раз открывать-закрывать файл ввода-вывода тоже не хорошо
  

   open (file=output_file, newunit=Out, position='append')  
   if(Y>X) then
      z = (ABS(x)+ ABS(y))/2  !|11|+|-33| /2 =22
      write (Out,'(a)') "x<y"
   else if( X>Y.or.Y==X) then
      z = 1+ 2*ABS(x)    !1+2*|-11|=23	
      write (Out,'(a)') "x>=y"  
   end if  
      write (Out,* ) "z=", Z

   close (Out)  

   
end program exercise_2_7

