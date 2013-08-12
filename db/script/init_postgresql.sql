
CREATE SEQUENCE public.queued_mails_id_seq;

CREATE TABLE public.queued_mails (
                id BIGINT NOT NULL DEFAULT nextval('public.queued_mails_id_seq'),
                mail TEXT NOT NULL,
                tries INTEGER DEFAULT 0 NOT NULL,
                sent_at TIMESTAMP,
                created_at TIMESTAMP NOT NULL,
                updated_at TIMESTAMP NOT NULL,
                CONSTRAINT queued_mails_pk PRIMARY KEY (id)
);


ALTER SEQUENCE public.queued_mails_id_seq OWNED BY public.queued_mails.id;

CREATE SEQUENCE public.organizations_id_seq;

CREATE TABLE public.organizations (
                id BIGINT NOT NULL DEFAULT nextval('public.organizations_id_seq'),
                name VARCHAR(100) NOT NULL,
                created_at TIMESTAMP NOT NULL,
                updated_at TIMESTAMP NOT NULL,
                CONSTRAINT organizations_pk PRIMARY KEY (id)
);


ALTER SEQUENCE public.organizations_id_seq OWNED BY public.organizations.id;

CREATE TABLE public.users (
                id BIGINT NOT NULL,
                organization_id BIGINT NOT NULL,
                name VARCHAR(100) NOT NULL,
                mail VARCHAR(100) NOT NULL,
                role VARCHAR(100),
                facebook TEXT,
                twitter TEXT,
                created_at TIMESTAMP NOT NULL,
                updated_at TIMESTAMP NOT NULL,
                CONSTRAINT users_pk PRIMARY KEY (id)
);


ALTER TABLE public.users ADD CONSTRAINT organizations_users_fk
FOREIGN KEY (organization_id)
REFERENCES public.organizations (id)
ON DELETE CASCADE
ON UPDATE CASCADE
NOT DEFERRABLE;