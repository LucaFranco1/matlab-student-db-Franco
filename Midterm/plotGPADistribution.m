%% Next three plot scripts are used for visualization part of project
% GPA Distribution Histogram
function plotGPADistribution(students)
    % Ensure students is a cell array of Student objects
    if ~iscell(students)
        error('Input "students" must be a cell array of Student objects.');
    end
    
    % Extract GPA values from each Student object
    gpas = cellfun(@(s) s.GPA, students);  % Use cellfun to access GPA of each Student
    
    % Check if gpas is valid
    if isempty(gpas)
        error('No students found in the database.');
    end
    
    % Create a figure for the GPA distribution
    figure;
    histogram(gpas, 'Normalization', 'pdf', 'BinWidth', 0.1);
    hold on;
    
    % Title and labels
    title('GPA Distribution');
    xlabel('GPA');
    ylabel('Density');
    hold off;
end
