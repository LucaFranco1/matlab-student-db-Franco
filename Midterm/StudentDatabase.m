% Create StudentDatabase class
classdef StudentDatabase
    properties
        students = {};
    end
    
    methods
        % Add new student to the database
        function obj = addStudent(obj, student)
            obj.students{end + 1} = student;
        end
        
        % Find student by their StudentID
        function student = findStudentByStudentID(obj, StudentID)
            student = [];
            for i = 1:length(obj.students)
                if obj.students{i}.StudentID == StudentID
                    student = obj.students{i};
                    break;
                end
            end
        end
        
        % Get list of students by major
        function studentsByMajor = getStudentsByMajor(obj, major)
            studentsByMajor = {};
            for i = 1:length(obj.students)
                if strcmp(obj.students{i}.Major, major)
                    studentsByMajor{end + 1} = obj.students{i};
                end
            end
        end
        
        % Save database to a .mat file
        function saveToFile(obj, filename)
            try
                save(filename, 'obj');
                disp(['Database saved to ', filename]);
            catch
                disp('Error saving the database.');
            end
        end
        
        % Load database from a file
        function obj = loadFromFile(obj, filename)
            try
                data = load(filename);
                obj = data.obj;
                disp(['Database loaded from ', filename]);
            catch
                disp('Error loading the database.');
            end
        end
    end
end