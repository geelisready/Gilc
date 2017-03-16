classdef RbfNeuralNetwork < BaseNeuralNetwork
    % Base class for neural network
    
    properties (SetAccess = protected)
        name = 'RBF Neural Network';
        nLayer = 3;
        % nNeurons;
        % isTrained = 0;
        weight;
        mapper;
    end
    
    
    methods
        function obj = RbfNeuralNetwork(nInput, nOutput)
            
            if nInput < 1 || nOutput < 1
                % 触发异常
                
            obj.nInput = nInput;
            obj.nOutput = nOutput;
            obj.nNeurons = [nLayer, ceil((nLayer + nOutput) / 1.5), nOutput];
            obj.kernel = 'gassuian';
        end
    end   
    
    methods
        function setPara(obj, nInput, nOutput, nMidNeuron, kernel = 'gassuian')
        end
        
        function initialWeight(obj, how = 'random')
            obj.mapper = mapper(obj.kernel, obj.nNeurons(1,1), obj.nNeurons(1,2));
            if how == 'random'
                obj.weight = zeros(obj.nNeurons(1,3), obj.nNeurons(1,2));
            elseif how == 'random'
                obj.weight = rand(obj.nNeurons(1,3), obj.nNeurons(1,2));
            else
                % 异常
        end
        
        function updateWeight(newWeight)
            if newWeight
                obj.weight = newWeight;
            
        end
        
        function weight = getWeight(obj)
            weight = obj.weight;
        end
    end


    methods 
        function obj = train(obj, dataSet)
        end
        
        function output = run(obj, Input)
            mapOut = obj.mapper.map(Input);
            output = mapOut * obj.weight;
        end        
        
        function obj = plot(obj, dataSet)
        end
        function obj = crossValidate(obj, dataSet)
        end
    end    
end