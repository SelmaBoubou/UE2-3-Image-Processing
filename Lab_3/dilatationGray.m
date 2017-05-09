function retimage = dilatationGray(image,pattern)
    % Retriveing respectivly image & pattern height and width
    [marginVO,marginHO] = size(pattern);
    [sizeV,sizeH]=size(image);
    % Calculating the number of pixel(s) taken by the Structural Element on each direction on
    % the filter
    marginV = (marginVO - 1 )/2;
    marginH = (marginHO - 1 )/2;
    
    special = 0;
    
    if sum(pattern(:)) ~= marginVO * marginHO
        special = 1;
    end
    % Creating the output
    retimage = zeros(size(image),'uint8');
    
    % Parsing the image. To remove any out-of-bound problem,
    % we do not consider the outermost lines
    for i=1+marginV:sizeV-marginV
        for j =1+marginH:sizeH-marginH
            mycurrentmatrix = image(i-marginV:i+marginV,j-marginH:j+marginH);
            currentmax = 0;
            
            if special
                for k = 1 : marginVO
                    for l = 1 : marginHO
                        if pattern(k,l)==1
                            if mycurrentmatrix(k,l) > currentmax
                               currentmax =  mycurrentmatrix(k,l);
                            end
                        end
                    end
                end
            
            
            else
                currentmax = max(max(mycurrentmatrix));
            end
            retimage(i,j) = currentmax;
        end       
    end
end