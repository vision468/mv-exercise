data = {
    5, '0', 15;
    5, 'Done', 17;
    5, '0', 17;
    6, 'Done', 18;
    6, '0', 19;
    6, 'Done', 19;
    6, '0', 20;
    7, '0', 19;
    7, '0', 20;
    8, 'Done', 22;
    8, 'Done', 23
};
ids = [data{:, 1}];
statuses = data(:, 2);

unique_ids = unique(ids);

for i = 1:length(unique_ids)
    current_id = unique_ids(i);

    done_count = sum(strcmp(statuses(ids == current_id), 'Done'));

    if done_count > 1
        fprintf('ID %d: Bug detected (%d times)\n', current_id, done_count);
    end
end
