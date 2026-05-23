CREATE TEXT SEARCH DICTIONARY public.knowledge_dictionary (
    TEMPLATE = pg_catalog.simple );
CREATE TEXT SEARCH CONFIGURATION public.knowledge_config (
    PARSER = pg_catalog.default );
ALTER TEXT SEARCH CONFIGURATION public.knowledge_config
    ADD MAPPING FOR asciihword WITH simple;

ALTER TEXT SEARCH CONFIGURATION public.knowledge_config
    ADD MAPPING FOR asciiword WITH simple;

ALTER TEXT SEARCH CONFIGURATION public.knowledge_config
    ADD MAPPING FOR email WITH simple;

ALTER TEXT SEARCH CONFIGURATION public.knowledge_config
    ADD MAPPING FOR file WITH simple;

ALTER TEXT SEARCH CONFIGURATION public.knowledge_config
    ADD MAPPING FOR float WITH simple;

ALTER TEXT SEARCH CONFIGURATION public.knowledge_config
    ADD MAPPING FOR host WITH simple;

ALTER TEXT SEARCH CONFIGURATION public.knowledge_config
    ADD MAPPING FOR hword WITH simple;

ALTER TEXT SEARCH CONFIGURATION public.knowledge_config
    ADD MAPPING FOR hword_asciipart WITH simple;

ALTER TEXT SEARCH CONFIGURATION public.knowledge_config
    ADD MAPPING FOR hword_numpart WITH simple;

ALTER TEXT SEARCH CONFIGURATION public.knowledge_config
    ADD MAPPING FOR hword_part WITH simple;

ALTER TEXT SEARCH CONFIGURATION public.knowledge_config
    ADD MAPPING FOR int WITH simple;

ALTER TEXT SEARCH CONFIGURATION public.knowledge_config
    ADD MAPPING FOR numhword WITH simple;

ALTER TEXT SEARCH CONFIGURATION public.knowledge_config
    ADD MAPPING FOR numword WITH simple;

ALTER TEXT SEARCH CONFIGURATION public.knowledge_config
    ADD MAPPING FOR sfloat WITH simple;

ALTER TEXT SEARCH CONFIGURATION public.knowledge_config
    ADD MAPPING FOR sint WITH simple;

ALTER TEXT SEARCH CONFIGURATION public.knowledge_config
    ADD MAPPING FOR uint WITH simple;

ALTER TEXT SEARCH CONFIGURATION public.knowledge_config
    ADD MAPPING FOR url WITH simple;

ALTER TEXT SEARCH CONFIGURATION public.knowledge_config
    ADD MAPPING FOR url_path WITH simple;

ALTER TEXT SEARCH CONFIGURATION public.knowledge_config
    ADD MAPPING FOR version WITH simple;

ALTER TEXT SEARCH CONFIGURATION public.knowledge_config
    ADD MAPPING FOR word WITH simple;