classdef BaseNeuralNetwork
    % Base class for neural network
    
    properties (SetAccess = protected)
        name;
        nLayer;
        nInput;
        nOutput;
        nNeurons;
        isTrained = 0;
    end
    
    methods
        function obj = BaseNeuralNetwork()
        end
    end
    methods 
        function obj = train(obj, dataSet)
        end
        function obj = run(obj, dataSet)
        end
        function obj = plot(obj, dataSet)
        end
        function obj = crossValidate(obj, dataSet)
        end
    end
    
end