package org.example.bootjsp.model.dto;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;

// Lombok
@Getter
@Setter
//@NoArgsConstructor // 기본 생성자
@AllArgsConstructor // 모든 필드를 만드는 생성자
@RequiredArgsConstructor // 꼭 있어야하는 생성자 (자동으로 만들어지는 필드 제외)
// @Data 쓰면 안되요? -> 강력하긴 하지만 뭐가 있는지 명확하지 않음
// JPA
@Entity
public class RealEstate {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(nullable = false)
    private String name;
    @Column(nullable = false)
    private String address;
    @Column(nullable = false)
    private long price;
}
