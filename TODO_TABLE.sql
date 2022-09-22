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

INSERT INTO public.todo(
	todo_id, name, categories, is_completed, remember_me, created, notes, is_archived, expiration)
	VALUES (
		'4321cf0e-80ed-42e2-8811-793cb7491147', 
		'making task of the teacher', 
		'General', 
		 true, 
	  	'2022-09-21', 
	  	'2022-09-21', 
	  	'less notes', 
	  	 false, 
	  	'2022-09-22');
	
	VALUES (
		'159e3306-8b57-43d8-828d-a588c093ee34', 
		'testing the area of TODO', 
		'General', 
		 true, 
	  	'2022-09-22', 
	  	'2022-09-22', 
	  	'try approve', 
	  	 false, 
	  	'2022-09-23');
	
 	VALUES (
		'8894966d-788a-41db-8946-bf2e94ccd6d0', 
		'I wanted to buy something to eat', 
		'General', 
		 true, 
	  	'2022-09-22', 
	  	'2022-09-22', 
	  	'eating hamburger', 
	  	 false, 
	  	'2022-09-23');
		
		
		select * from public.todo where is_completed=true