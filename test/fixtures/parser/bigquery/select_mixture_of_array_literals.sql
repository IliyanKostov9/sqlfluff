-- Created this test case in response to issue #989. As of April 25, 2021 and PR #998,
-- this query PARSES without error, but the word ARRAY is parsing as a column name, and
-- the angle brackets  < and > are being incorrectly parsed as comparison operators.
-- This is being tracked in a separate issue, 999, not #989, since it's less severe
-- (incorrect parse vs parse failure).
SELECT
    [],
    [false],
    ARRAY<BOOLEAN>[false],
    ['a'] AS strcol1,
    ARRAY<string>['b'] AS strcol2,
    [1.0] AS numcol1,
    ARRAY<NUMERIC>[1.4] AS numcol1
