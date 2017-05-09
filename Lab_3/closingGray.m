function retimage = closingGray(image,pattern)

    resultDila = dilatationGray(image,pattern);
    retimage = erosionGray(resultDila,pattern); 
    
end
