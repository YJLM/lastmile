
CREATE SEQUENCE public.organizations_id_seq;

CREATE TABLE public.organizations (
                id BIGINT NOT NULL DEFAULT nextval('public.organizations_id_seq'),
                name VARCHAR(100) NOT NULL,
                created_at TIMESTAMP NOT NULL,
                updated_at TIMESTAMP NOT NULL,
                CONSTRAINT organizations_pk PRIMARY KEY (id)
);


ALTER SEQUENCE public.organizations_id_seq OWNED BY public.organizations.id;

CREATE SEQUENCE public.users_id_seq;

CREATE TABLE public.users (
                id BIGINT NOT NULL DEFAULT nextval('public.users_id_seq'),
                organization_id BIGINT NOT NULL,
                name VARCHAR(100) NOT NULL,
                mail VARCHAR(100) NOT NULL,
                role VARCHAR(100) NOT NULL,
                facebook TEXT,
                twitter TEXT,
                created_at TIMESTAMP NOT NULL,
                updated_at TIMESTAMP NOT NULL,
                CONSTRAINT users_pk PRIMARY KEY (id)
);


ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;

ALTER TABLE public.users ADD CONSTRAINT organizations_users_fk
FOREIGN KEY (organization_id)
REFERENCES public.organizations (id)
ON DELETE CASCADE
ON UPDATE CASCADE
NOT DEFERRABLE;