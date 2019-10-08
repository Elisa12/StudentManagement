package com.liu.pojo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class StudentInfo {
    private String stuId;
    private String name;
    private String sex;
    private String comYear;
    private String year;
    private String collName;
    private String proName;
    private String claId;
    private String cardId;
    private String address;
    private String politicalStatus;
    private String bankCard;


}
