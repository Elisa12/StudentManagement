package com.liu.pojo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@Data
@AllArgsConstructor
@NoArgsConstructor
public class TeacherInfo {
    private String teaId;
    private String name;
    private String sex;
    private String collName;
    private String proName;
    private String proTitle;
    private String year;
    private String cardId;
}
