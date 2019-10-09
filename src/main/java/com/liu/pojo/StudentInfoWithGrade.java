package com.liu.pojo;

import lombok.*;

@NoArgsConstructor
@Data
@AllArgsConstructor
@Builder
@ToString
public class StudentInfoWithGrade {
    private String stuId;
    private String name;
    private String sex;
    private String comYear;
    private String year;
    private String collName;
    private String proName;
    private String claId;
    private String grade;
}
