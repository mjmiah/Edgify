function edgify = edgify() % function by mjmiah
disp('Processing input...');
input_folder = 'input';
input_files = dir([input_folder '/*.jpg']); % input directory
output_folder = 'output';
for k = 1:length(input_files) % loop through each input file in the directory
    current_input_dir = [input_folder '/' input_files(k).name]; % get file directory
    current_input_img = rgb2gray(imread(current_input_dir)); % read image and convert to grayscale
    log_filter = laplacian_of_g(0,1,[-2:1:2]); % laplacian of gaussian filter
    current_log = conv2(current_input_img,log_filter,'valid'); % apply log filter
    current_log_edge = edge(current_log,'zerocross'); % apply zero crossing
    output_dir = fullfile(output_folder,input_files(k).name); % output file directory
    imwrite(current_log_edge,output_dir); % saves output image to output folder
end
disp('Done');