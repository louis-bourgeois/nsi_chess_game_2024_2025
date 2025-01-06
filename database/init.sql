DO $$ 
BEGIN
    IF NOT EXISTS (SELECT FROM pg_database WHERE datname = 'chess_game') THEN
        CREATE DATABASE chess_game;
    END IF;
END
$$;

DO $$
BEGIN
    IF NOT EXISTS (SELECT FROM pg_catalog.pg_user WHERE usename = 'chess_user') THEN
        CREATE USER chess_user WITH PASSWORD 'securepassword';
    END IF;
END
$$;

GRANT ALL PRIVILEGES ON DATABASE chess_game TO chess_user;
