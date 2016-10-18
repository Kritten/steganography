imOrg = imread ('bilder/uplay_wallpaper.jpg');
imWm  = imread ('bilder/uplay_wallpaper_hidden.jpg');

% first way
differenceMatrix = (imWm - imOrg > 0);
differencesInValues = sum(sum(sum(differenceMatrix)));
disp('diff1 ==');
disp(differencesInValues);