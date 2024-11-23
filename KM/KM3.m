matrix = randi([20, 80], 10, 10);

more_than_60 = matrix(matrix > 60);

every_unique_number = unique(more_than_60);
count_of_unique_number = histc(more_than_60, every_unique_number);

disp('matrix 10×10:');
disp(matrix);
disp('number greater than 60 and they count:');
disp(table(every_unique_number', count_of_unique_number', 'name', {'number', 'count'}));
