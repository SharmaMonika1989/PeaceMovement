package peace.dao;

import java.util.List;

import peace.model.User;

public interface UserDAO {
	
    //AuthenticationController
        public void insertAtSignUp(User user)throws Exception;
        public User getUserForLogin(String email, String password);
        public void updateUserAfterActivation(User user);
        public User getUserByLink(String link);
        
     //Registration Controller
        public void updateParticipation(User user)throws Exception;

	
}
