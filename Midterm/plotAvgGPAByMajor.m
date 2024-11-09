% Average GPA by Major plot
function plotAvgGPAByMajor(students)
    % Ensure students is a cell array of Student objects
    if ~iscell(students)
        error('Input "students" must be a cell array of Student objects.');
    end
    
    % Extract Major and GPA values from each Student object
    majors = cellfun(@(s) s.Major, students, 'UniformOutput', false);  % Get the major
    gpas = cellfun(@(s) s.GPA, students);  % Get the GPA values
    
    % Get the unique majors
    uniqueMajors = unique(majors);
    avgGPAs = zeros(1, length(uniqueMajors));
    
    % Calculate average GPA for each major
    for i = 1:length(uniqueMajors)
        % Find the indices of students with the current major
        majorIndices = strcmp(majors, uniqueMajors{i});
        % Compute the average GPA for this major
        avgGPAs(i) = mean(gpas(majorIndices));
    end
    
    % Plot the average GPA by major
    figure;
    bar(avgGPAs);
    set(gca, 'XTickLabel', uniqueMajors, 'XTick', 1:length(uniqueMajors));
    title('Average GPA by Major');
    xlabel('Major');
    ylabel('Average GPA');
    xtickangle(45);  % Rotate major names for better visibility
end