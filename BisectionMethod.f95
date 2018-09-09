!Bisection Method
!parameter (EPS = 1.0E-5)
real x1,x2,x3
f(x) = x**3-4*x-9
write (*,'(1x,a\)') 'Enter Values for x1 and x2 : '
read (*,*) x1,x2
write (*,'(1x,a\)') 'Enter Permitted Error : '
read (*,*) eps

if(f(x1)*f(x2) .gt. 0) then
  write (*,'(3x,a\)') 'Error in Guess Values'
  stop
  endif
  
do while(abs(x1-x2) .gt. eps)
  x3=(x1+x2)/2
  if(f(x3)*f(x1) .lt. 0) then
    x2=x3
  else
    x1=x3
  endif
 enddo
 write (*,*) 'Root = ',x3
 end