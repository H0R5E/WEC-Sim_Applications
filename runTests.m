function results = runTests(testsPath)

    arguments
        testsPath string = "."
    end
    
    import matlab.unittest.TestSuite;
    import matlab.unittest.TestRunner;
    
    suite = TestSuite.fromFolder(testsPath, ...
                                 'IncludingSubfolders', true);
    
    % Run the tests
    results = run(suite);
    
end
