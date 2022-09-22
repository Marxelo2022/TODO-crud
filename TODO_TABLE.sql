CREATE TABLE public.todo
(
    todo_id uuid NOT NULL,
    name text,
    categories character varying(50) NOT NULL,
    is_completed boolean NOT NULL DEFAULT false,
    remember_me date,
    created timestamp(2) without time zone NOT NULL,
    notes text,
    is_archived boolean,
    expiration date,
    PRIMARY KEY (todo_id)
);

ALTER TABLE IF EXISTS public.todo
    OWNER to postgres;
