package com.liu.pojo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@Data
@NoArgsConstructor
@AllArgsConstructor
public class TeaClass {
    private String className;
    private String year;
    private String collName;
    private String proName;
    private int claId;
    private String stuYear;
    private int classId;
}
