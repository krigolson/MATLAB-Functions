function CI = makeCIs(data)

    % this function computes CIs for a matrix of data
    % O. Krigolson June 2018

    n = size(data,1);
    
    for counter = 1:size(data,2)
    
        tempData = [];
        tempData = data(:,counter);
        
        df = n - 1;
        % use 0.05 as it is half of (1-0.95)/2
        tCritical = tinv(0.025,df);
        sdData = std(tempData);
        sqrtn = sqrt(n);
        
        ci = abs(tCritical*sdData/sqrtn);
        
        CI(1,counter) = mean(tempData);
        CI(2,counter) = ci;
        CI(3,counter) = mean(tempData) - ci;
        CI(4,counter) = mean(tempData) + ci;
        
    end

end