package com.liu.pojo;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@ToString
public class CollOrProInfo {
    private String name;

    private Integer valId;

    private Integer parId;

    private Integer claNum;
}
