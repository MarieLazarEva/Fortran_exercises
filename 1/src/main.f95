program exercise_1_7     
   implicit none
   
   character(*), parameter    :: input_file = "../data/input.txt", output_file = "./output.txt"
   character(:), allocatable  :: fmt  !format
   integer                    :: In = 0, Out = 0, A , B 

   fmt = "(a, '= ',I0,'  ', a, '= ', I0 )"

    open (file=input_file, newunit=In)
      read (In, *) A, B
    close (In) 

    a = a - b
    b = a + b
    a = b - a

    open (file=output_file, newunit=Out)
        fmt = "(a, '= ',I0,'  ', a, '= ', I0 )" 
        write (Out, fmt)  "a", a, "b", b     
    close (Out)

  ! call Write1  !Comment для процедуры при вызове можно использовать аргумент position=append или rewind

  ! contains
  !    subroutine Write1
  !       open (file=output_file, newunit=Out, position='append')
  !          write (Out, fmt) "a", A, "b", B 
  !       close (Out)
  !    end subroutine Write1

 
end program exercise_1_7


