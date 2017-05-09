function retimage = opening(image,pattern)

    resultEro = erosion(image,pattern); 
    retimage = dilatation(resultEro,pattern);
end