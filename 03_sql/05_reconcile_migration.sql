/*
Purpose:
Confirm that all source records are accounted for after migration.

Expected result:
Unexplained variance should equal zero.
*/

SELECT
    source_count,
    rejected_count,
    target_count,
    source_count - rejected_count - target_count AS unexplained_variance
FROM migration_control_totals;
