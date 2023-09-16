function gaussian = gaussian(m,s,x) % returns 2D gaussian with mean m, standard deviation s on vector x
g_1D = N(m,s,x); % obtain 1D gaussian filter using pdf
gaussian = g_1D'*g_1D; % multipy transpose of 1D gaussian with 1D gaussian for 2D gaussian
