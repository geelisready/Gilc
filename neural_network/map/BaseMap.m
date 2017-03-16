classdef BaseMap
    % Base class for neural network
    
    properties (SetAccess = protected)
        name;
        kernel;
        nInput;
        nOutput;
    end
    
    methods
        function obj = BaseMap()
        end
    end
    methods 
        function obj = setPara(obj)
        function obj = map(obj, dataSet)
        end

    end
    
end