package com.ddnc.toy.domain.model;

import com.ddnc.toy.domain.BaseTimeEntity;
import lombok.*;
import org.springframework.data.annotation.Id;
import org.springframework.security.core.GrantedAuthority;

@AllArgsConstructor
@NoArgsConstructor
@Builder
@Data
public class UserAuthority extends BaseTimeEntity implements GrantedAuthority {

    @Id
    private Long userId;

    @Id
    private String authority;

}
