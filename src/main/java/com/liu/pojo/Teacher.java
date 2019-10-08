package com.liu.pojo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Teacher {
    private Long id;
    private String teaId;
    private String name;
    private String sex;
    private Integer collId;
    private Integer proId;
    private String password;
    private String proTitle;
    private String cardId;
    private String year;

}
