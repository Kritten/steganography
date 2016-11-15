pkg load image;

imOrg = imread ('images/original.jpg');
imWm1  = imread ('images/foo.jpg');
imWm2  = imread ('images/foobar.jpg');
imWm3  = imread ('images/openpuffstinkt.jpg');
imWm4  = imread ('images/watermark.jpg');
imWm5  = imread ('images/wichtigenachricht.jpg');


differenceMatrix = (imWm1 - imOrg > 0);
differencesInValues = sum(sum(sum(differenceMatrix)));
disp('diff1 == ');
disp(differencesInValues);

differenceMatrix = (imWm2 - imOrg > 0);
differencesInValues = sum(sum(sum(differenceMatrix)));
disp('diff2 == ');
disp(differencesInValues);

differenceMatrix = (imWm3 - imOrg > 0);
differencesInValues = sum(sum(sum(differenceMatrix)));
disp('diff3 == ');
disp(differencesInValues);

differenceMatrix = (imWm4 - imOrg > 0);
differencesInValues = sum(sum(sum(differenceMatrix)));
disp('diff4 == ');
disp(differencesInValues);

differenceMatrix = (imWm5 - imOrg > 0);
differencesInValues = sum(sum(sum(differenceMatrix)));
disp('diff5 == ');
disp(differencesInValues);

average_image = zeros(size(imWm1));

% average
average_image .+= imWm1 ./ 5;
average_image .+= imWm2 ./ 5;
average_image .+= imWm3 ./ 5;
average_image .+= imWm4 ./ 5;
average_image .+= imWm5 ./ 5;

imwrite(average_image, 'average_image.png');

% median
median_matrix(:,:,:,1) = imWm1;
median_matrix(:,:,:,2) = imWm2;
median_matrix(:,:,:,3) = imWm3;
median_matrix(:,:,:,4) = imWm4;
median_matrix(:,:,:,5) = imWm5;
median_image = median(median_matrix, 4);

imwrite(median_image, 'median_image.png');

% majority
mode_matrix(:,:,:,1) = imWm1;
mode_matrix(:,:,:,2) = imWm2;
mode_matrix(:,:,:,3) = imWm3;
mode_matrix(:,:,:,4) = imWm4;
mode_matrix(:,:,:,5) = imWm5;
mode_image = mode(mode_matrix, 4);

imwrite(mode_image, 'mode_image.png');

differenceMatrix = (average_image - imOrg > 0);
differencesInValues = sum(sum(sum(differenceMatrix)));
disp('diffaverage == ');
disp(differencesInValues);

differenceMatrix = (median_image - imOrg > 0);
differencesInValues = sum(sum(sum(differenceMatrix)));
disp('diffmedian == ');
disp(differencesInValues);

differenceMatrix = (mode_image - imOrg > 0);
differencesInValues = sum(sum(sum(differenceMatrix)));
disp('diffmode == ');
disp(differencesInValues);
