1;

function noise = createwhiten(n,fs)
  array=zeros(n*fs,1);
    for i = 1:1:n*fs
        array(i)= rand()*2-1;
    end

    noise=array;
end



tic;noise = createwhiten(1000,48000);runtime=toc();
disp(strcat("It took:",num2str(runtime*1000),"ms to run"))
