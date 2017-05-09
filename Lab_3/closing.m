function retimage = closing(image,pattern)

    resultDila = dilatation(image,pattern);
    retimage = erosion(resultDila,pattern); 
    
end
