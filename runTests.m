function results = runTests(testsPath)

    arguments
        testsPath string = "."
    end
    
    import matlab.unittest.TestSuite;
    import matlab.unittest.TestRunner;
    import matlab.unittest.plugins.*;
    
    suite = TestSuite.fromFolder(testsPath, ...
                                 'IncludingSubfolders', true);
    
    % Create TestRunner
    runner = TestRunner.withTextOutput; % Contains TestRunProgressPlugin, DiagnosticsOutputPlugin
    runner.addPlugin(DiagnosticsRecordingPlugin);
    
    % Run the tests
    results = runner.run(suite);
    
end
