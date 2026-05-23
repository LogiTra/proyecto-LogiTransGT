CONSTRAINT ir_embedded_actions_check_only_one_action_defined 
    CHECK ((((action_id IS NOT NULL) AND (python_method IS NULL)) OR ((action_id IS NULL) AND (python_method IS NOT NULL)))),

CONSTRAINT ir_embedded_actions_check_python_method_requires_name 
    CHECK ((NOT ((python_method IS NOT NULL) AND (name IS NULL))))

ALTER TABLE ONLY public.account_bank_statement_line_transient 
    ADD CONSTRAINT account_bank_statement_line_transient_pkey PRIMARY KEY (id);

ALTER TABLE ONLY public.account_bank_statement 
    ADD CONSTRAINT account_bank_statement_pkey PRIMARY KEY (id);

ALTER TABLE ONLY public.crm_stage_crm_team_rel 
    ADD CONSTRAINT crm_stage_crm_team_rel_pkey PRIMARY KEY (crm_stage_id, crm_team_id);

ALTER TABLE ONLY public.account_bank_statement_line 
    ADD CONSTRAINT account_bank_statement_line_unique_import_id UNIQUE (unique_import_id);

ALTER TABLE ONLY public.account_fiscal_category 
    ADD CONSTRAINT account_fiscal_category_unique_code UNIQUE (code);

ALTER TABLE ONLY public.res_company 
    ADD CONSTRAINT res_company_name_uniq UNIQUE (name);

ALTER TABLE ONLY public.hr_employee_location 
    ADD CONSTRAINT hr_employee_location_uniq_exceptional_per_day UNIQUE (employee_id, date);

ALTER TABLE ONLY public.account_asset 
    ADD CONSTRAINT account_asset_company_id_fkey FOREIGN KEY (company_id) REFERENCES public.res_company(id) ON DELETE RESTRICT;

ALTER TABLE ONLY public.account_group 
    ADD CONSTRAINT account_group_parent_id_fkey FOREIGN KEY (parent_id) REFERENCES public.account_group(id) ON DELETE CASCADE;

ALTER TABLE ONLY public.crm_tag_rel 
    ADD CONSTRAINT crm_tag_rel_lead_id_fkey FOREIGN KEY (lead_id) REFERENCES public.crm_lead(id) ON DELETE CASCADE;

ALTER TABLE ONLY public.stock_move_line 
    ADD CONSTRAINT stock_move_line_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.product_product(id) ON DELETE CASCADE;