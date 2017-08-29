CREATE TABLE IF NOT EXISTS todos (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details TEXT NULL ,
  priority INTEGER NOT NULL DEFAULT 1,
  created_at  TIMESTAMP NOT NULL,
  completed_at TIMESTAMP  NULL
);

INSERT INTO todos (title, details, priority, created_at)
VALUES
('Clean Room', 'pick up clothes from floor, vaccum', 3, NOW()),
('Mow the lawn', 'Also trim Hedges, water flowers', 1, NOW()),
('Wash the Car', 'Vaccum interior, scrub tires', 3, NOW()),
('Go to Class', 'From 9am - 5pm', 1, NOW());

INSERT INTO todos (title, details, priority, created_at, completed_at)
VALUES
('Do the Dishes', 'Clear dishes from sink', 2, NOW(), NOW());

SELECT * FROM todos
  WHERE completed_at IS NULL;

  SELECT * FROM todos
    WHERE priority < 1;

  UPDATE todos SET completed_at NOW()
  WHERE id = 1;

  DELETE FROM todos
  WHERE completed_at NOT NULL;
