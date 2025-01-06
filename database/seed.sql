INSERT INTO users (email, password_hash) VALUES
  ('player1@example.com', 'hashedpassword1'),
  ('player2@example.com', 'hashedpassword2');

INSERT INTO games (player1_id, player2_id, status) VALUES
  (1, 2, 'ongoing');

INSERT INTO moves (game_id, move_number, move_text) VALUES
  (1, 1, 'e4'),
  (1, 2, 'e5');
