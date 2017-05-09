function retimage = openingGray(image,pattern)

    resultEro = erosionGray(image,pattern); 
    retimage = dilatationGray(resultEro,pattern);
    
end
