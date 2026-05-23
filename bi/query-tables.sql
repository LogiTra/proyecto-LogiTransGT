CREATE TABLE public."Products" (
    stock_package_destination_id integer NOT NULL,
    stock_move_line_id integer NOT NULL
);

CREATE TABLE public.account_account (
    id integer NOT NULL,
    currency_id integer,
    create_uid integer,
    write_uid integer,
    account_type character varying NOT NULL,
    name jsonb NOT NULL,
    description jsonb,
    code_store jsonb,
    note text,
    active boolean,
    reconcile boolean,
    non_trade boolean,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    fiscal_category_id integer,
    asset_depreciation_account_id integer,
    asset_expense_account_id integer,
    depreciation_model_id integer,
    asset_properties_definition jsonb,
    is_vehicle_account boolean,
    account_stock_variation_id integer,
    account_stock_expense_id integer
);

CREATE TABLE public.account_account_account_auto_reconcile_wizard_rel (
    account_auto_reconcile_wizard_id integer NOT NULL,
    account_account_id integer NOT NULL
);

CREATE TABLE public.account_account_account_import_summary_rel (
    account_import_summary_id integer NOT NULL,
    account_account_id integer NOT NULL
);

CREATE TABLE public.account_account_account_merge_wizard_rel (
    account_merge_wizard_id integer NOT NULL,
    account_account_id integer NOT NULL
);

CREATE TABLE public.account_account_account_tag (
    account_account_id integer NOT NULL,
    account_account_tag_id integer NOT NULL
);

CREATE TABLE public.account_account_exclude_res_currency_provision (
    account_account_id integer NOT NULL,
    res_currency_id integer NOT NULL
);

CREATE TABLE public.account_account_fiscal_rate (
    id integer NOT NULL,
    related_account_id integer NOT NULL,
    company_id integer NOT NULL,
    create_uid integer,
    write_uid integer,
    date_from date NOT NULL,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    rate double precision NOT NULL
);

CREATE TABLE public.account_account_res_company_rel (
    account_account_id integer NOT NULL,
    res_company_id integer NOT NULL
);

CREATE TABLE public.account_account_tag (
    id integer NOT NULL,
    color integer,
    country_id integer,
    create_uid integer,
    write_uid integer,
    applicability character varying NOT NULL,
    name jsonb NOT NULL,
    active boolean,
    create_date timestamp without time zone,
    write_date timestamp without time zone
);

CREATE TABLE public.account_account_tag_account_move_line_rel (
    account_move_line_id integer NOT NULL,
    account_account_tag_id integer NOT NULL
);

CREATE TABLE public.account_account_tag_account_tax_repartition_line_rel (
    account_tax_repartition_line_id integer NOT NULL,
    account_account_tag_id integer NOT NULL
);

CREATE TABLE public.account_account_tag_product_template_rel (
    product_template_id integer NOT NULL,
    account_account_tag_id integer NOT NULL
);

CREATE TABLE public.account_account_tax_default_rel (
    account_id integer NOT NULL,
    tax_id integer NOT NULL
);

CREATE TABLE public.account_accrued_orders_wizard (
    id integer NOT NULL,
    company_id integer,
    journal_id integer NOT NULL,
    currency_id integer,
    account_id integer NOT NULL,
    create_uid integer,
    write_uid integer,
    date date NOT NULL,
    reversal_date date NOT NULL,
    amount numeric,
    create_date timestamp without time zone,
    write_date timestamp without time zone
);

CREATE TABLE public.account_analytic_account (
    id integer NOT NULL,
    plan_id integer NOT NULL,
    root_plan_id integer,
    company_id integer,
    partner_id integer,
    create_uid integer,
    write_uid integer,
    code character varying,
    name jsonb NOT NULL,
    active boolean,
    create_date timestamp without time zone,
    write_date timestamp without time zone
);

CREATE TABLE public.account_analytic_applicability (
    id integer NOT NULL,
    analytic_plan_id integer,
    company_id integer,
    create_uid integer,
    write_uid integer,
    business_domain character varying NOT NULL,
    applicability character varying NOT NULL,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    product_categ_id integer,
    account_prefix character varying
);

CREATE TABLE public.account_analytic_distribution_model (
    id integer NOT NULL,
    sequence integer,
    partner_id integer,
    partner_category_id integer,
    company_id integer,
    create_uid integer,
    write_uid integer,
    analytic_distribution jsonb,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    product_id integer,
    product_categ_id integer,
    account_prefix character varying
);

CREATE TABLE public.account_analytic_line (
    id integer NOT NULL,
    account_id integer,
    product_uom_id integer,
    partner_id integer,
    user_id integer,
    company_id integer NOT NULL,
    currency_id integer,
    create_uid integer,
    write_uid integer,
    name character varying,
    category character varying,
    date date NOT NULL,
    amount numeric NOT NULL,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    unit_amount double precision,
    product_id integer,
    general_account_id integer,
    journal_id integer,
    move_line_id integer,
    code character varying(8),
    ref character varying,
    order_id integer,
    so_line integer,
    reinvoice_move_id integer,
    billable_type character varying
);

CREATE TABLE public.base_enable_profiling_wizard (
    id integer NOT NULL,
    create_uid integer,
    write_uid integer,
    duration character varying,
    expiration timestamp without time zone,
    create_date timestamp without time zone,
    write_date timestamp without time zone
);

CREATE TABLE public.base_geo_provider (
    id integer NOT NULL,
    create_uid integer,
    write_uid integer,
    tech_name character varying,
    -- ... (resto de campos truncados en la vista previa del script)
);

CREATE TABLE public.documents_tag_sign_template_rel (
    sign_template_id integer NOT NULL,
    documents_tag_id integer NOT NULL
);

CREATE TABLE public.email_template_attachment_rel (
    email_template_id integer NOT NULL,
    attachment_id integer NOT NULL
);

CREATE TABLE public.employee_bank_account_rel (
    employee_id integer NOT NULL,
    bank_account_id integer NOT NULL
);

CREATE TABLE public.html_editor_converter_test (
    id integer NOT NULL,
    "integer" integer,
    many2one integer,
    create_uid integer,
    write_uid integer,
    "char" character varying,
    selection_str character varying,
    date date,
    html text,
    text text,
    "numeric" numeric,
    datetime timestamp without time zone
    -- ... (resto de campos truncados en la vista previa del script)
);

CREATE TABLE public.ir_actions_todo (
    id integer NOT NULL,
    action_id integer NOT NULL,
    sequence integer,
    create_uid integer,
    write_uid integer,
    state character varying NOT NULL,
    name character varying,
    create_date timestamp without time zone,
    write_date timestamp without time zone
);

CREATE TABLE public.ir_asset (
    id integer NOT NULL,
    sequence integer NOT NULL,
    create_uid integer,
    write_uid integer,
    name character varying NOT NULL
    -- ... (resto de campos truncados en la vista previa del script)
);

CREATE TABLE public.ir_embedded_actions (
    id integer NOT NULL,
    sequence integer,
    parent_action_id integer NOT NULL,
    parent_res_id integer,
    action_id integer,
    user_id integer,
    create_uid integer,
    write_uid integer,
    parent_res_model character varying NOT NULL,
    python_method character varying,
    default_view_mode character varying,
    domain character varying,
    context character varying,
    name jsonb,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    CONSTRAINT ir_embedded_actions_check_only_one_action_defined CHECK ((((action_id IS NOT NULL) AND (python_method IS NULL)) OR ((action_id IS NULL) AND (python_method IS NOT NULL)))),
    CONSTRAINT ir_embedded_actions_check_python_method_requires_name CHECK ((NOT ((python_method IS NOT NULL) AND (name IS NULL))))
);