ALTER TABLE "integrations_jira_installations" ADD COLUMN "webhook_delivery_bound" boolean DEFAULT true NOT NULL;--> statement-breakpoint
UPDATE "integrations_jira_installations"
SET "webhook_delivery_bound" = false
WHERE "status" = 'installed';
