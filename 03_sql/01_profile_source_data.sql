/*
Purpose:
Profile the source contact data before cleansing and migration.

Note:
This portfolio project uses synthetic data.
*/

SELECT
    COUNT(*) AS total_records,
    COUNT(DISTINCT contact_id) AS unique_contact_ids,
    COUNT(email) AS records_with_email,
    COUNT(*) - COUNT(email) AS records_missing_email
FROM contacts_staging;
