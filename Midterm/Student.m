% Create Student class
classdef Student
    properties
        StudentID      
        Name    
        Age     
        GPA     
        Major 
    end
    
    methods
        function obj = Student(StudentID, Name, Age, GPA, Major)
            if nargin > 0
                obj.StudentID = StudentID;
                obj.Name = Name;
                obj.Age = Age;
                obj.GPA = GPA;
                obj.Major = Major;
            end
        end
        
        % Display student info
        function displayInfo(obj)
            disp(['StudentID: ', num2str(obj.StudentID)]);
            disp(['Name: ', obj.Name]);
            disp(['Age: ', num2str(obj.Age)]);
            disp(['GPA: ', num2str(obj.GPA)]);
            disp(['Major: ', obj.Major]);
        end
        
        % Update the GPA of the student
        function obj = updateGPA(obj, newGPA)
            obj.GPA = newGPA;
        end
    end
end