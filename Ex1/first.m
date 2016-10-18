pkg load image;

imOrg = imread ('bilder/uplay_wallpaper.jpg');
imWm  = imread ('bilder/uplay_wallpaper_hidden.jpg');
imWm2  = imread ('bilder/uplay_wallpaper_hidden_long_don.jpg');


% first way
differenceMatrix = (imWm - imOrg > 0);
differencesInValues = sum(sum(sum(differenceMatrix)));
disp('diff1 == ');
disp(differencesInValues);

% 2nd way
differenceMatrix2 = imabsdiff(imOrg, imWm);
differencesInValues2 = sum(sum(sum(differenceMatrix2)));
disp('diff2 == ');
disp(differencesInValues2);

% third way
differenceMatrix = (imWm2 - imOrg > 0);
differencesInValues = sum(sum(sum(differenceMatrix)));
disp('diff3 == ');
disp(differencesInValues);