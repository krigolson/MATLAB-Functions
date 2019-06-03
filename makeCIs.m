function [CIs] = makeCIs(data)

    % this function computes CIs for a vector of data
    % O. Krigolson June 2018

    n = size(data,1);
    
    for counter = 1:size(data,2)
    
        df = n - 1;
        t_critical = tinv(0.025,df);
        std_data = std(data(:,counter));
        sqrtn = sqrt(n);
        CIs(counter) = abs(t_critical*std_data/sqrtn);
        
    end

end