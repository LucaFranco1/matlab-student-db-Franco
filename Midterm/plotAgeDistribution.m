% Age Distribution plot
function plotAgeDistribution(students)
    % Ensure students is a cell array of Student objects
    if ~iscell(students)
        error('Input "students" must be a cell array of Student objects.');
    end
    
    % Extract age values from each Student object
    ages = cellfun(@(s) s.Age, students);  % Use cellfun to access Age of each Student
    
    % Check if age data is valid
    if isempty(ages)
        error('No students found in the database.');
    end
    
    % Create a figure for the age distribution
    figure;
    histogram(ages, 'Normalization', 'pdf', 'BinWidth', 1);
    hold on;
   
    % Title and labels
    title('Age Distribution');
    xlabel('Age');
    ylabel('Density');
    hold off;
end
