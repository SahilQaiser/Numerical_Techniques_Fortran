real x0, x1, epsilon, f, df, relerror, f0,df0
integer i,n
f(x) = x**3-4*x-9
df(x) = 3*x*x-4
write (*,'(1x,a\)') 'Enter Starting Approximation : '
read (*,*) x0
write (*,'(1x,a\)') 'Enter Permitted Error : '
read (*,*) epsilon
write (*,'(1x,a\)') 'Enter Lower Bound on Slope : '
read (*,*) delta
write (*,'(1x,a\)') 'Enter Maximum Iterations Permitted : '
read (*,*) n
do i=1,n
  f0=f(x0)
  df0=df(x0)
  if(abs(df0) .le. delta) then
    print *, "Slope of function becomes too small"
    stop ''
    endif
    x1=x0-f0/df0
    relerror = abs((x1-x0)/x1)
    x0=x1
    if( relerror .le. epsilon) then
      write (*,'(//1x,a,i2,a)') 'Solution Converges in ',i,' iterations'
      write (*,'(/1x,a,f8.4)') 'Approximate root = ',x1
      stop ''
    endif
  enddo
  write(*,'(//1x,a,i2)') 'Solution does not converges in ' ,n, ' iterations'
end
      