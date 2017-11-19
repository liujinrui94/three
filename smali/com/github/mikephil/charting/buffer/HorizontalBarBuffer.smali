.class public Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;
.super Lcom/github/mikephil/charting/buffer/BarBuffer;
.source "HorizontalBarBuffer.java"


# direct methods
.method public constructor <init>(IFIZ)V
    .locals 0
    .param p1, "size"    # I
    .param p2, "groupspace"    # F
    .param p3, "dataSetCount"    # I
    .param p4, "containsStacks"    # Z

    .prologue
    .line 11
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/github/mikephil/charting/buffer/BarBuffer;-><init>(IFIZ)V

    .line 12
    return-void
.end method


# virtual methods
.method public feed(Ljava/util/List;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/data/BarEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BarEntry;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->phaseX:F

    move/from16 v18, v0

    mul-float v12, v17, v18

    .line 19
    .local v12, "size":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->mDataSetCount:I

    move/from16 v17, v0

    add-int/lit8 v5, v17, -0x1

    .line 20
    .local v5, "dataSetOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->mBarSpace:F

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v2, v17, v18

    .line 21
    .local v2, "barSpaceHalf":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->mGroupSpace:F

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v7, v17, v18

    .line 22
    .local v7, "groupSpaceHalf":F
    const/high16 v3, 0x3f000000    # 0.5f

    .line 24
    .local v3, "barWidth":F
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    int-to-float v0, v8

    move/from16 v17, v0

    cmpg-float v17, v17, v12

    if-ltz v17, :cond_0

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->reset()V

    .line 121
    return-void

    .line 26
    :cond_0
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/BarEntry;

    .line 29
    .local v6, "e":Lcom/github/mikephil/charting/data/BarEntry;
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BarEntry;->getXIndex()I

    move-result v17

    mul-int v18, v8, v5

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->mDataSetIndex:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    .line 30
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->mGroupSpace:F

    move/from16 v18, v0

    int-to-float v0, v8

    move/from16 v19, v0

    mul-float v18, v18, v19

    .line 29
    add-float v17, v17, v18

    add-float v15, v17, v7

    .line 31
    .local v15, "x":F
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BarEntry;->getVal()F

    move-result v16

    .line 32
    .local v16, "y":F
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BarEntry;->getVals()[F

    move-result-object v14

    .line 34
    .local v14, "vals":[F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->mInverted:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a

    .line 36
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->mContainsStacks:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    if-nez v14, :cond_6

    .line 38
    :cond_1
    sub-float v17, v15, v3

    add-float v4, v17, v2

    .line 39
    .local v4, "bottom":F
    add-float v17, v15, v3

    sub-float v13, v17, v2

    .line 40
    .local v13, "top":F
    const/16 v17, 0x0

    cmpl-float v17, v16, v17

    if-ltz v17, :cond_3

    move/from16 v10, v16

    .line 41
    .local v10, "left":F
    :goto_1
    const/16 v17, 0x0

    cmpg-float v17, v16, v17

    if-gtz v17, :cond_4

    move/from16 v11, v16

    .line 44
    .local v11, "right":F
    :goto_2
    const/16 v17, 0x0

    cmpl-float v17, v11, v17

    if-lez v17, :cond_5

    .line 45
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->phaseY:F

    move/from16 v17, v0

    mul-float v11, v11, v17

    .line 49
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v13, v11, v4}, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->addBar(FFFF)V

    .line 24
    .end local v4    # "bottom":F
    .end local v10    # "left":F
    .end local v11    # "right":F
    .end local v13    # "top":F
    :cond_2
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 40
    .restart local v4    # "bottom":F
    .restart local v13    # "top":F
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 41
    .restart local v10    # "left":F
    :cond_4
    const/4 v11, 0x0

    goto :goto_2

    .line 47
    .restart local v11    # "right":F
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->phaseY:F

    move/from16 v17, v0

    mul-float v10, v10, v17

    goto :goto_3

    .line 53
    .end local v4    # "bottom":F
    .end local v10    # "left":F
    .end local v11    # "right":F
    .end local v13    # "top":F
    :cond_6
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BarEntry;->getVal()F

    move-result v1

    .line 56
    .local v1, "all":F
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_5
    array-length v0, v14

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_2

    .line 58
    aget v17, v14, v9

    sub-float v1, v1, v17

    .line 59
    aget v17, v14, v9

    add-float v16, v17, v1

    .line 61
    sub-float v17, v15, v3

    add-float v4, v17, v2

    .line 62
    .restart local v4    # "bottom":F
    add-float v17, v15, v3

    sub-float v13, v17, v2

    .line 63
    .restart local v13    # "top":F
    const/16 v17, 0x0

    cmpl-float v17, v16, v17

    if-ltz v17, :cond_7

    move/from16 v10, v16

    .line 64
    .restart local v10    # "left":F
    :goto_6
    const/16 v17, 0x0

    cmpg-float v17, v16, v17

    if-gtz v17, :cond_8

    move/from16 v11, v16

    .line 67
    .restart local v11    # "right":F
    :goto_7
    const/16 v17, 0x0

    cmpl-float v17, v11, v17

    if-lez v17, :cond_9

    .line 68
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->phaseY:F

    move/from16 v17, v0

    mul-float v11, v11, v17

    .line 72
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v13, v11, v4}, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->addBar(FFFF)V

    .line 56
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 63
    .end local v10    # "left":F
    .end local v11    # "right":F
    :cond_7
    const/4 v10, 0x0

    goto :goto_6

    .line 64
    .restart local v10    # "left":F
    :cond_8
    const/4 v11, 0x0

    goto :goto_7

    .line 70
    .restart local v11    # "right":F
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->phaseY:F

    move/from16 v17, v0

    mul-float v10, v10, v17

    goto :goto_8

    .line 78
    .end local v1    # "all":F
    .end local v4    # "bottom":F
    .end local v9    # "k":I
    .end local v10    # "left":F
    .end local v11    # "right":F
    .end local v13    # "top":F
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->mContainsStacks:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

    if-nez v14, :cond_f

    .line 80
    :cond_b
    sub-float v17, v15, v3

    add-float v4, v17, v2

    .line 81
    .restart local v4    # "bottom":F
    add-float v17, v15, v3

    sub-float v13, v17, v2

    .line 82
    .restart local v13    # "top":F
    const/16 v17, 0x0

    cmpl-float v17, v16, v17

    if-ltz v17, :cond_c

    move/from16 v11, v16

    .line 83
    .restart local v11    # "right":F
    :goto_9
    const/16 v17, 0x0

    cmpg-float v17, v16, v17

    if-gtz v17, :cond_d

    move/from16 v10, v16

    .line 86
    .restart local v10    # "left":F
    :goto_a
    const/16 v17, 0x0

    cmpl-float v17, v11, v17

    if-lez v17, :cond_e

    .line 87
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->phaseY:F

    move/from16 v17, v0

    mul-float v11, v11, v17

    .line 91
    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v13, v11, v4}, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->addBar(FFFF)V

    goto/16 :goto_4

    .line 82
    .end local v10    # "left":F
    .end local v11    # "right":F
    :cond_c
    const/4 v11, 0x0

    goto :goto_9

    .line 83
    .restart local v11    # "right":F
    :cond_d
    const/4 v10, 0x0

    goto :goto_a

    .line 89
    .restart local v10    # "left":F
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->phaseY:F

    move/from16 v17, v0

    mul-float v10, v10, v17

    goto :goto_b

    .line 95
    .end local v4    # "bottom":F
    .end local v10    # "left":F
    .end local v11    # "right":F
    .end local v13    # "top":F
    :cond_f
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BarEntry;->getVal()F

    move-result v1

    .line 98
    .restart local v1    # "all":F
    const/4 v9, 0x0

    .restart local v9    # "k":I
    :goto_c
    array-length v0, v14

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_2

    .line 100
    aget v17, v14, v9

    sub-float v1, v1, v17

    .line 101
    aget v17, v14, v9

    add-float v16, v17, v1

    .line 103
    sub-float v17, v15, v3

    add-float v4, v17, v2

    .line 104
    .restart local v4    # "bottom":F
    add-float v17, v15, v3

    sub-float v13, v17, v2

    .line 105
    .restart local v13    # "top":F
    const/16 v17, 0x0

    cmpl-float v17, v16, v17

    if-ltz v17, :cond_10

    move/from16 v11, v16

    .line 106
    .restart local v11    # "right":F
    :goto_d
    const/16 v17, 0x0

    cmpg-float v17, v16, v17

    if-gtz v17, :cond_11

    move/from16 v10, v16

    .line 109
    .restart local v10    # "left":F
    :goto_e
    const/16 v17, 0x0

    cmpl-float v17, v11, v17

    if-lez v17, :cond_12

    .line 110
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->phaseY:F

    move/from16 v17, v0

    mul-float v11, v11, v17

    .line 114
    :goto_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v13, v11, v4}, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->addBar(FFFF)V

    .line 98
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 105
    .end local v10    # "left":F
    .end local v11    # "right":F
    :cond_10
    const/4 v11, 0x0

    goto :goto_d

    .line 106
    .restart local v11    # "right":F
    :cond_11
    const/4 v10, 0x0

    goto :goto_e

    .line 112
    .restart local v10    # "left":F
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->phaseY:F

    move/from16 v17, v0

    mul-float v10, v10, v17

    goto :goto_f
.end method
