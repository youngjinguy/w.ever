package kr.whenever.security;

import java.util.ArrayList;
import java.util.List;

import kr.whenever.domain.User;
import kr.whenever.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service("userDetailsServiceImpl")
public class UserDetailsServiceImpl implements UserDetailsService {

    @Autowired
    private UserService userService;

    public UserDetails loadUserByUsername(String loginId) throws UsernameNotFoundException {

        // 시스템 사용자조회
    	User user = userService.findUser(loginId);

        // 역할 별로 권한 나눠야 한다. 우선 하드코딩.
        List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
        authorities.add(new SimpleGrantedAuthority("ROLE_USER"));

        // spring security 의 UserDetails 객체로 변환
        UserDetails userDetails = new SecurityUserDetails(user.getId(), user.getPassword(), authorities);

        return userDetails;
    }

}
