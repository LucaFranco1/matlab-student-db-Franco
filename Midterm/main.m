%% Use this code to Run project - Main Script
% Create and Initialize StudentDatabase
db = StudentDatabase();

% Add sample students
student1 = Student(1, 'Luca', 21, 3.8, 'Mechanical Engineering');
student2 = Student(2, 'Juliet', 22, 4.0, 'Psychology');
student3 = Student(3, 'Nick', 25, 2.8, 'Environmental Science');
student4 = Student(4, 'Joey', 20, 2.1, 'Accounting');
student5 = Student(5, 'Ryan', 28, 3.2, 'Physics');
db = db.addStudent(student1);
db = db.addStudent(student2);
db = db.addStudent(student3);
db = db.addStudent(student4);
db = db.addStudent(student5);

% Save the database to .mat file
db.saveToFile('student_database.mat');

% Load the database from the file
db = db.loadFromFile('student_database.mat');

% Perform a search by StudentID
student = db.findStudentByStudentID(3);
if ~isempty(student)
    student.displayInfo();
else
    disp('Student not found!');
end

% Perform a search by major
studentsInCS = db.getStudentsByMajor('Mechanical Engineering');
for i = 1:length(studentsInCS)
    studentsInCS{i}.displayInfo();
end

% Generate Visualizations
plotGPADistribution(db.students);  % GPA Distribution Histogram
plotAvgGPAByMajor(db.students);    % Average GPA by Major
plotAgeDistribution(db.students);  % Age Distribution