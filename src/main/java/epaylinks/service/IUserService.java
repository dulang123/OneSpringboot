package epaylinks.service;

import epaylinks.model.User;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface IUserService
{

	List<User> getUserList();

}
