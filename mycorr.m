1;

function r1= mycorr(x,y,N)
    %N =10000 % assigns the number of samples to N
    %N=1000;
    N=N;
    disp(strcat("N = ", num2str(N)));
   %Assigns the elements of x to the vector x and determines the sum and mean of vector x
    vector_x = x;
    sum_x = sum(vector_x);
    mean_x1=sum(vector_x.*vector_x); %redefine
    mean_x =(sum_x * sum_x)/N;

   %Assigns the elements of y to the vector y and determines the sum and mean of vector y
    vector_y = y;
    sum_y = sum(vector_y);
     mean_y1=sum(vector_y.*vector_y);
    mean_y = (sum_y * sum_y)/N ;

 %Assigns the product of vector x and y to the vector xy and determines the sum and mean of vector xy
    vector_xy = vector_x.*vector_y;
    sum_xy = sum(vector_xy);
    mean_xy = (sum_x * sum_y)/N ;

    numerator = sum_xy - mean_xy;
    denominator = sqrt((mean_x1 -mean_x)*(mean_y1 -mean_y) ) ;

  r1 = numerator / denominator ;

end
