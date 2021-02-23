function [t, w] = Euler(f, to, yo, h, n)
  
  # Euler's method initial value problem.
  
w=[yo];
t=[to];
for i = 1:n
w=[w ; w(i)+h*f(t(i),w(i))];
t=[t ; t(i)+h];
endfor
endfunction

  # Example:
  # [t,w] = Euler(@(t,y)t*y+t^3,0,1,1/3,3)
  
  # WE GET:
  
  # t =
    # 0.00000
    # 0.33333
    # 0.66667
    # 1.00000
  # w =
    # 1.0000
    # 1.0000
    # 1.1235
    # 1.4719
