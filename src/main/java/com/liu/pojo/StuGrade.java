package com.liu.pojo;

import lombok.*;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Builder
@ToString
public class StuGrade {
    private String stuId;
    private int classId;
    private String grade;
}
