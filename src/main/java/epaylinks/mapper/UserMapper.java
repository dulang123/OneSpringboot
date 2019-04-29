package epaylinks.mapper;

import epaylinks.model.User;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserMapper
{
	public List<User> findUserInfo();
}
