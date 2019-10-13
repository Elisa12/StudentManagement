package com.liu.pojo;

import lombok.*;

@Data
@Builder
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class Student {
    private Integer id;
    private String stuId;
    private String name;
    private String sex;
    private String comYear;
    private String year;
    private Integer collId;
    private Integer proId;
    private Integer claId;
    private String cardId;
    private String password;
    private String address;
    private String politicalStatus;
    private String bankCard;
}
