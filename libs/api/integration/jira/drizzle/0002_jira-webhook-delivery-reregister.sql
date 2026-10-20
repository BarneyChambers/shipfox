UPDATE "integrations_jira_installations"
SET "webhook_expires_at" = now()
WHERE "status" = 'installed'
  AND "webhook_expires_at" IS NOT NULL;
