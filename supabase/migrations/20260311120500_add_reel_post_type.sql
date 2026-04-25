-- Add 'reel' to the post_type CHECK constraint
ALTER TABLE public.posts DROP CONSTRAINT posts_post_type_check;
ALTER TABLE public.posts ADD CONSTRAINT posts_post_type_check CHECK (post_type IN ('text','photo','video','event','announcement','reel'));
