function retimage = dilatation(image,pattern)
    % Retriveing respectivly image & pattern height and width
    [marginV,marginH] = size(pattern);
    [sizeV,sizeH]=size(image);
    % Calculating the number of pixel(s) taken by the Structural Element on each direction on
    % the filter
    marginV = (marginV - 1 )/2;
    marginH = (marginH - 1 )/2;
    % Creating the output
    retimage = zeros(size(image));
    
    % Parsing the image. To remove any out-of-bound problem,
    % we do not consider the outermost lines
    for i=1+marginV:sizeV-marginV
        for j =1+marginH:sizeH-marginH
            mycurrentmatrix = image(i-marginV:i+marginV,j-marginH:j+marginH);
            res2 = mycurrentmatrix & pattern;
            if sum(res2(:)) > 0
               retimage(i,j)=1; 
            end
        end       
    end
    retimage=im2bw(retimage,0.5);
end