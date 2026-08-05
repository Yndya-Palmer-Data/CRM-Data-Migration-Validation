/*
Purpose:
Identify potential duplicate contacts using standardized names and email addresses.
*/

SELECT
    LOWER(TRIM(first_name)) AS standardized_first_name,
    LOWER(TRIM(last_name)) AS standardized_last_name,
    LOWER(TRIM(email)) AS standardized_email,
    COUNT(*) AS record_count
FROM contacts_staging
GROUP BY
    LOWER(TRIM(first_name)),
    LOWER(TRIM(last_name)),
    LOWER(TRIM(email))
HAVING COUNT(*) > 1;
