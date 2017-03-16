function mapNetwork = mapper(kernel, nInput, nOutput)
    % Base class for neural network
    if kernel == 'gaussian'
        mapNetwork = GaussianMapper(nInput, nOutput)
    else
        % 异常

end