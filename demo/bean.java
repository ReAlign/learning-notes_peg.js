package com.netease.kaola.aftersalems.web.vo;

import com.netease.kaola.aftersale.entity.dto.AfsLabelDTO;

import java.io.Serializable;
import java.util.List;
import java.util.Objects;

public class AftersaleReasonVO implements Serializable {
    private static final long serialVersionUID = -661589199066062128L;

    private Long reasonId;

    private String reasonShow;

    private List<AfsLabelDTO> descriptionLabelList;

    public Long getReasonId() {
        return reasonId;
    }

    public void setReasonId(Long reasonId) {
        this.reasonId = reasonId;
    }

    public String getReasonShow() {
        return reasonShow;
    }

    public void setReasonShow(String reasonShow) {
        this.reasonShow = reasonShow;
    }

    public List<AfsLabelDTO> getDescriptionLabelList() {
        return descriptionLabelList;
    }

    public void setDescriptionLabelList(List<AfsLabelDTO> descriptionLabelList) {
        this.descriptionLabelList = descriptionLabelList;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }

        if (o == null || getClass() != o.getClass()) {
            return false;
        }

        AftersaleReasonVO that = (AftersaleReasonVO) o;
        return Objects.equals(reasonId, that.reasonId);
    }
}
