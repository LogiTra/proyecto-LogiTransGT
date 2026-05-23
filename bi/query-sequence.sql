CREATE SEQUENCE public.account_account_fiscal_rate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE public.account_account_fiscal_rate_id_seq OWNED BY public.account_account_fiscal_rate.id;

CREATE SEQUENCE public.account_account_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE public.account_account_id_seq OWNED BY public.account_account.id;

CREATE SEQUENCE public.account_account_tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE public.account_account_tag_id_seq OWNED BY public.account_account_tag.id;

CREATE SEQUENCE public.account_accrued_orders_wizard_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE public.account_accrued_orders_wizard_id_seq OWNED BY public.account_accrued_orders_wizard.id;

CREATE SEQUENCE public.account_analytic_account_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE public.account_analytic_account_id_seq OWNED BY public.account_analytic_account.id;

CREATE SEQUENCE public.account_analytic_applicability_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE public.account_analytic_applicability_id_seq OWNED BY public.account_analytic_applicability.id;

CREATE SEQUENCE public.account_analytic_distribution_model_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE public.account_analytic_distribution_model_id_seq OWNED BY public.account_analytic_distribution_model.id;

CREATE SEQUENCE public.account_analytic_line_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE public.account_analytic_line_id_seq OWNED BY public.account_analytic_line.id;

CREATE SEQUENCE public.base_enable_profiling_wizard_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE public.base_enable_profiling_wizard_id_seq OWNED BY public.base_enable_profiling_wizard.id;

CREATE SEQUENCE public.base_geo_provider_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE public.base_geo_provider_id_seq OWNED BY public.base_geo_provider.id;

CREATE SEQUENCE public.html_editor_converter_test_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE public.html_editor_converter_test_id_seq OWNED BY public.html_editor_converter_test.id;

CREATE SEQUENCE public.ir_actions_todo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE public.ir_actions_todo_id_seq OWNED BY public.ir_actions_todo.id;

CREATE SEQUENCE public.ir_asset_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE public.ir_asset_id_seq OWNED BY public.ir_asset.id;

CREATE SEQUENCE public.ir_embedded_actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE public.ir_embedded_actions_id_seq OWNED BY public.ir_embedded_actions.id;