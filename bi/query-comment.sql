COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';
COMMENT ON EXTENSION unaccent IS 'text search dictionary that removes accents';
COMMENT ON EXTENSION vector IS 'vector data type and ivfflat and hnsw access methods';

COMMENT ON TABLE public."Products" IS 'RELATION BETWEEN stock_package_destination AND stock_move_line';
COMMENT ON TABLE public.account_account IS 'Account';
COMMENT ON TABLE public.account_account_account_auto_reconcile_wizard_rel IS 'RELATION BETWEEN account_auto_reconcile_wizard AND account_account';
COMMENT ON TABLE public.account_analytic_account IS 'Analytic Account';

COMMENT ON COLUMN public.account_account.currency_id IS 'Account Currency';
COMMENT ON COLUMN public.account_account.create_uid IS 'Created by';
COMMENT ON COLUMN public.account_account.write_uid IS 'Last Updated by';
COMMENT ON COLUMN public.account_account.account_type IS 'Type';
COMMENT ON COLUMN public.account_account.name IS 'Account Name';
COMMENT ON COLUMN public.account_account.description IS 'Description';
COMMENT ON COLUMN public.account_account.active IS 'Active';
COMMENT ON COLUMN public.account_account.reconcile IS 'Allow Reconciliation';

COMMENT ON COLUMN public.account_analytic_line.account_id IS 'Project Account';
COMMENT ON COLUMN public.account_analytic_line.product_uom_id IS 'Unit';
COMMENT ON COLUMN public.account_analytic_line.partner_id IS 'Partner';
COMMENT ON COLUMN public.account_analytic_line.user_id IS 'User';
COMMENT ON COLUMN public.account_analytic_line.amount IS 'Amount';
COMMENT ON COLUMN public.account_analytic_line.unit_amount IS 'Quantity';

