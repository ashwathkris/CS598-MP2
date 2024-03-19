% Licensed to the Apache Software Foundation (ASF) under one or more
% contributor license agreements.  See the NOTICE file distributed with
% this work for additional information regarding copyright ownership.
% The ASF licenses this file to you under the Apache License, Version
% 2.0 (the "License"); you may not use this file except in compliance
% with the License.  You may obtain a copy of the License at
%
%   http://www.apache.org/licenses/LICENSE-2.0
%
% Unless required by applicable law or agreed to in writing, software
% distributed under the License is distributed on an "AS IS" BASIS,
% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
% implied.  See the License for the specific language governing
% permissions and limitations under the License.

classdef tID < matlab.unittest.TestCase
% Test class for arrow.type.ID

    methods(TestClassSetup)
        function verifyOnMatlabPath(tc)
        % Verify the arrow array class is on the MATLAB Search Path.
            tc.assertTrue(~isempty(which("arrow.type.ID")), ...
                """arrow.type.ID"" must be on the MATLAB path. " + ...
                "Use ""addpath"" to add folders to the MATLAB path.");
        end
    end

    methods (Test)
        function CastToUInt64(testCase)
            import arrow.type.ID

            typeIDs = dictionary( ...
                ID.Boolean,   1,  ...
                ID.UInt8,     2,  ...
                ID.Int8,      3,  ...
                ID.UInt16,    4,  ...
                ID.Int16,     5,  ...
                ID.UInt32,    6,  ...
                ID.Int32,     7,  ...
                ID.UInt64,    8,  ...
                ID.Int64,     9,  ...
                ID.Float32,   11, ...
                ID.Float64,   12, ...
                ID.String,    13, ...
                ID.Date32,    16, ...
                ID.Date64,    17, ...
                ID.Timestamp, 18, ...
                ID.Time32,    19, ...
                ID.Time64,    20, ...
                ID.List,      25, ...
                ID.Struct,    26 ...
            );

            enumValues = typeIDs.keys();
            uint64Values = uint64(typeIDs.values());

            for ii = 1:numel(enumValues)
                actualValue = uint64(enumValues(ii));
                expectedValue = uint64Values(ii);
                testCase.verifyEqual(actualValue, expectedValue);
            end
        end
    end
end