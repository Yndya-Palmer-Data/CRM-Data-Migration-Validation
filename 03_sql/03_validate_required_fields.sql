/*
Purpose:
Identify records missing fields required for CRM migration.
*/

SELECT *
FROM contacts_staging
WHERE contact_id IS NULL
   OR first_name IS NULL
   OR TRIM(first_name) = ''
   OR last_name IS NULL
   OR TRIM(last_name) = ''
   OR email IS NULL
   OR TRIM(email) = '';
