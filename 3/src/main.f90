program exercise_3_4

!сумма элементов массива с индексами с меняющимся шагом = 3, начиная от 5го элемента  
   implicit none

   character(*), parameter     :: input_file = "../data/input.txt", output_file = "output.txt" 
   integer                     ::In = 0, Out = 0, N=0  
   real(4)                     :: SumA=0
   real(4), allocatable        ::  A (:)

          
open (file=input_file, newunit=In)
   read (In, *) N  ! число -  размерность массива
   allocate (A(N))
   read (In, *) A  !читаем N  следующиx элементов из файла
close (In)

   SumA = Sum(A(5:N:3)) !Правильно - экономия памяти. в кеш памяти хранится только каждый 3й элемент. перебор от 5го элемента до  элемента N c шагом 3
   
   open (file=output_file, newunit=Out)
      write (Out, '(F0.2)') A  !оставить 2 знака после запятой
      write (Out, *) SumA
   close (Out)
       
end program exercise_3_4

