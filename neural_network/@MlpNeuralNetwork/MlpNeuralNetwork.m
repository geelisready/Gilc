classdef MlpNeuralNetwork < BaseNeuralNetwork
    % Base class for neural network
    
    properties (SetAccess = protected)
        name = 'MLP Neural Network';
        % nLayer;
        % nNeurons;
        % isTrained = 0;
        weight;
    end
    
    
    methods
        function obj = MlpNeuralNetwork(nInput, nOutput, nLayer = 3)
            
            if nInput < 1 || nOutput < 1 || nLayer < 2
                % 触发异常
                
            obj.nLayer = nLayer;
            obj.nInput = nInput;
            obj.nOutput = nOutput;
            obj.nNeurons = [nLayer, ceil((nLayer + nOutput) / 1.5), nOutput];
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
    
    methods
        function initialWeight(obj, how = 'random')
        end
        
        function updateWeight(newWeight, layer)
        end
        
    end
    
end