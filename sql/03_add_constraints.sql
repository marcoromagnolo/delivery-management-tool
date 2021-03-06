ALTER TABLE session
    ADD CONSTRAINT user_id FOREIGN KEY (user_id)
    REFERENCES user (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION;
	
ALTER TABLE session_history	 
	ADD CONSTRAINT user_id FOREIGN KEY (user_id)
    REFERENCES user (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION;
  
ALTER TABLE user
    ADD CONSTRAINT setting_id FOREIGN KEY (setting_id)
    REFERENCES user_setting (id) MATCH SIMPLE
    ON UPDATE CASCADE ON DELETE CASCADE;
	
ALTER TABLE user_role
    ADD CONSTRAINT user_id FOREIGN KEY (user_id)
    REFERENCES user (id) MATCH SIMPLE
    ON UPDATE CASCADE ON DELETE CASCADE;
	
ALTER TABLE user_role
    ADD CONSTRAINT role_id FOREIGN KEY (role_id)
    REFERENCES role (id) MATCH SIMPLE
    ON UPDATE CASCADE ON DELETE CASCADE;
	
ALTER TABLE user_group
    ADD CONSTRAINT user_id FOREIGN KEY (user_id)
    REFERENCES user (id) MATCH SIMPLE
    ON UPDATE CASCADE ON DELETE CASCADE;
	
ALTER TABLE user_group
    ADD CONSTRAINT group_id FOREIGN KEY (group_id)
    REFERENCES group (id) MATCH SIMPLE
    ON UPDATE CASCADE ON DELETE CASCADE;	
	  
ALTER TABLE user_account
    ADD CONSTRAINT recovery_id FOREIGN KEY (recovery_id)
    REFERENCES user_account_recovery (id) MATCH SIMPLE
    ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE user_account
    ADD CONSTRAINT user_id FOREIGN KEY (user_id)
    REFERENCES user (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION;