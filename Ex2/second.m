pkg load image;

imOrg = imread ('images/original.jpg');
imWm  = imread ('images/foo.jpg');
imWm2  = imread ('images/foobar.jpg');
imWm3  = imread ('images/openpuffstinkt.jpg');
imWm4  = imread ('images/watermark.jpg');
imWm5  = imread ('images/wichtigenachricht.jpg');


% differenceMatrix = (imWm - imOrg > 0);
% differencesInValues = sum(sum(sum(differenceMatrix)));
% disp('diff1 == ');
% disp(differencesInValues);

% differenceMatrix = (imWm2 - imOrg > 0);
% differencesInValues = sum(sum(sum(differenceMatrix)));
% disp('diff2 == ');
% disp(differencesInValues);

% differenceMatrix = (imWm3 - imOrg > 0);
% differencesInValues = sum(sum(sum(differenceMatrix)));
% disp('diff3 == ');
% disp(differencesInValues);

% differenceMatrix = (imWm4 - imOrg > 0);
% differencesInValues = sum(sum(sum(differenceMatrix)));
% disp('diff4 == ');
% disp(differencesInValues);

% differenceMatrix = (imWm5 - imOrg > 0);
% differencesInValues = sum(sum(sum(differenceMatrix)));
% disp('diff5 == ');
% disp(differencesInValues);

new_image = zeros(size(imWm));

size(imWm, 1)
for y = 1:size(imWm, 1)
	for x = 1:size(imWm, 2)
% 	for y = x
		new_image(y,x,:) += imWm(y, x, :);
	endfor 
endfor 
