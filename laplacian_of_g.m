function laplacian_of_g = laplacian_of_g(m,s,x) %mean m, standard deviation s, vector x
% convolve the laplacian to the gaussian (output same size as gaussian)
laplacian_of_g = conv2(gaussian(m,s,x), laplacian(), 'same');