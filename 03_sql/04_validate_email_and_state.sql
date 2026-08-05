/*
Purpose:
Identify records containing invalid email formats or state codes.
*/

SELECT *
FROM contacts_staging
WHERE email NOT LIKE '%_@_%._%'
   OR UPPER(TRIM(state)) NOT IN (
       'AL','AK','AZ','AR','CA','CO','CT','DE','FL','GA',
       'HI','ID','IL','IN','IA','KS','KY','LA','ME','MD',
       'MA','MI','MN','MS','MO','MT','NE','NV','NH','NJ',
       'NM','NY','NC','ND','OH','OK','OR','PA','RI','SC',
       'SD','TN','TX','UT','VT','VA','WA','WV','WI','WY'
   );
