INSERT INTO TB_ADM_USR (USR_ID, USR_NM, PASSWORD, ENABLED) VALUES ('joyoungc', 'joyoungc', '$2a$10$PPZqEI/bUG9RVuYbRqr/dOCtLqemc1qqocBQMkCjiBjYOh7v2Yj4W', 1); -- 1234
INSERT INTO TB_ADM_USR (USR_ID, USR_NM, PASSWORD, ENABLED) VALUES ('aiden', 'aiden', '$2a$10$ZMwYCLQWNCSQW.w7LnUk6eVHZtIxHxwukkn0VtCYEZnBP7s9fTBaK', 1); -- qwer

INSERT INTO TB_ADM_USR_ATH (USR_ID, ATH_CD) VALUES ('joyoungc', 'ROLE_USER');
INSERT INTO TB_ADM_USR_ATH (USR_ID, ATH_CD) VALUES ('joyoungc', 'ROLE_ADMIN');
INSERT INTO TB_ADM_USR_ATH (USR_ID, ATH_CD) VALUES ('aiden', 'ROLE_USER');