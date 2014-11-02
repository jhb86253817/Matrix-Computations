% Importing and normalizing the LegoMan32.jpg image.
%
% Samuli Siltanen October 2014

% Read the jpg image into workspace
im = imread('LegoMan.jpg');

% Convert the 8bit integer image into a matrix containing 
% floating point elements
im = double(im);

% Normalize the pixel values to the range of [0,1]
% Option 1: keep the histogram the same
im = im/255;
% Option 2: Stretch the histogram so that the resulting image surely has
% completely black and completely white pixels (unless all the pixel values 
% are equal).
im = im-min(min(im));
if max(max(im))>0
    im = im/max(max(im));
end

% Let's take a look
figure(1)
clf
imagesc(im)
axis equal
axis off
colormap gray
