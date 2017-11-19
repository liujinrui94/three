.class public Lcom/github/mikephil/charting/buffer/BarBuffer;
.super Lcom/github/mikephil/charting/buffer/AbstractBuffer;
.source "BarBuffer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/buffer/AbstractBuffer",
        "<",
        "Lcom/github/mikephil/charting/data/BarEntry;",
        ">;"
    }
.end annotation


# instance fields
.field protected mBarSpace:F

.field protected mContainsStacks:Z

.field protected mDataSetCount:I

.field protected mDataSetIndex:I

.field protected mGroupSpace:F

.field protected mInverted:Z


# direct methods
.method public constructor <init>(IFIZ)V
    .locals 2
    .param p1, "size"    # I
    .param p2, "groupspace"    # F
    .param p3, "dataSetCount"    # I
    .param p4, "containsStacks"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/buffer/AbstractBuffer;-><init>(I)V

    .line 10
    iput v0, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mBarSpace:F

    .line 11
    iput v0, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mGroupSpace:F

    .line 12
    iput v1, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mDataSetIndex:I

    .line 13
    const/4 v0, 0x1

    iput v0, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mDataSetCount:I

    .line 14
    iput-boolean v1, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mContainsStacks:Z

    .line 15
    iput-boolean v1, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mInverted:Z

    .line 19
    iput p2, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mGroupSpace:F

    .line 20
    iput p3, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mDataSetCount:I

    .line 21
    iput-boolean p4, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mContainsStacks:Z

    .line 22
    return-void
.end method


# virtual methods
.method protected addBar(FFFF)V
    .locals 3
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 38
    iget-object v0, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    iget v1, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->index:I

    aput p1, v0, v1

    .line 39
    iget-object v0, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    iget v1, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->index:I

    aput p2, v0, v1

    .line 40
    iget-object v0, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    iget v1, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->index:I

    aput p3, v0, v1

    .line 41
    iget-object v0, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    iget v1, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->index:I

    aput p4, v0, v1

    .line 42
    return-void
.end method

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
    .line 47
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BarEntry;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->phaseX:F

    move/from16 v18, v0

    mul-float v12, v17, v18

    .line 49
    .local v12, "size":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mDataSetCount:I

    move/from16 v17, v0

    add-int/lit8 v5, v17, -0x1

    .line 50
    .local v5, "dataSetOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mBarSpace:F

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v2, v17, v18

    .line 51
    .local v2, "barSpaceHalf":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mGroupSpace:F

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v7, v17, v18

    .line 52
    .local v7, "groupSpaceHalf":F
    const/high16 v3, 0x3f000000    # 0.5f

    .line 54
    .local v3, "barWidth":F
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    int-to-float v0, v8

    move/from16 v17, v0

    cmpg-float v17, v17, v12

    if-ltz v17, :cond_0

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/buffer/BarBuffer;->reset()V

    .line 151
    return-void

    .line 56
    :cond_0
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/BarEntry;

    .line 59
    .local v6, "e":Lcom/github/mikephil/charting/data/BarEntry;
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BarEntry;->getXIndex()I

    move-result v17

    mul-int v18, v8, v5

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mDataSetIndex:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    .line 60
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mGroupSpace:F

    move/from16 v18, v0

    int-to-float v0, v8

    move/from16 v19, v0

    mul-float v18, v18, v19

    .line 59
    add-float v17, v17, v18

    add-float v15, v17, v7

    .line 61
    .local v15, "x":F
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BarEntry;->getVal()F

    move-result v16

    .line 62
    .local v16, "y":F
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BarEntry;->getVals()[F

    move-result-object v14

    .line 64
    .local v14, "vals":[F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mInverted:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a

    .line 66
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mContainsStacks:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    if-nez v14, :cond_6

    .line 68
    :cond_1
    sub-float v17, v15, v3

    add-float v10, v17, v2

    .line 69
    .local v10, "left":F
    add-float v17, v15, v3

    sub-float v11, v17, v2

    .line 70
    .local v11, "right":F
    const/16 v17, 0x0

    cmpl-float v17, v16, v17

    if-ltz v17, :cond_3

    move/from16 v4, v16

    .line 71
    .local v4, "bottom":F
    :goto_1
    const/16 v17, 0x0

    cmpg-float v17, v16, v17

    if-gtz v17, :cond_4

    move/from16 v13, v16

    .line 74
    .local v13, "top":F
    :goto_2
    const/16 v17, 0x0

    cmpl-float v17, v13, v17

    if-lez v17, :cond_5

    .line 75
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->phaseY:F

    move/from16 v17, v0

    mul-float v13, v13, v17

    .line 79
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v13, v11, v4}, Lcom/github/mikephil/charting/buffer/BarBuffer;->addBar(FFFF)V

    .line 54
    .end local v4    # "bottom":F
    .end local v10    # "left":F
    .end local v11    # "right":F
    .end local v13    # "top":F
    :cond_2
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 70
    .restart local v10    # "left":F
    .restart local v11    # "right":F
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 71
    .restart local v4    # "bottom":F
    :cond_4
    const/4 v13, 0x0

    goto :goto_2

    .line 77
    .restart local v13    # "top":F
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->phaseY:F

    move/from16 v17, v0

    mul-float v4, v4, v17

    goto :goto_3

    .line 83
    .end local v4    # "bottom":F
    .end local v10    # "left":F
    .end local v11    # "right":F
    .end local v13    # "top":F
    :cond_6
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BarEntry;->getVal()F

    move-result v1

    .line 86
    .local v1, "all":F
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_5
    array-length v0, v14

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_2

    .line 88
    aget v17, v14, v9

    sub-float v1, v1, v17

    .line 89
    aget v17, v14, v9

    add-float v16, v17, v1

    .line 91
    sub-float v17, v15, v3

    add-float v10, v17, v2

    .line 92
    .restart local v10    # "left":F
    add-float v17, v15, v3

    sub-float v11, v17, v2

    .line 93
    .restart local v11    # "right":F
    const/16 v17, 0x0

    cmpl-float v17, v16, v17

    if-ltz v17, :cond_7

    move/from16 v4, v16

    .line 94
    .restart local v4    # "bottom":F
    :goto_6
    const/16 v17, 0x0

    cmpg-float v17, v16, v17

    if-gtz v17, :cond_8

    move/from16 v13, v16

    .line 97
    .restart local v13    # "top":F
    :goto_7
    const/16 v17, 0x0

    cmpl-float v17, v13, v17

    if-lez v17, :cond_9

    .line 98
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->phaseY:F

    move/from16 v17, v0

    mul-float v13, v13, v17

    .line 102
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v13, v11, v4}, Lcom/github/mikephil/charting/buffer/BarBuffer;->addBar(FFFF)V

    .line 86
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 93
    .end local v4    # "bottom":F
    .end local v13    # "top":F
    :cond_7
    const/4 v4, 0x0

    goto :goto_6

    .line 94
    .restart local v4    # "bottom":F
    :cond_8
    const/4 v13, 0x0

    goto :goto_7

    .line 100
    .restart local v13    # "top":F
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->phaseY:F

    move/from16 v17, v0

    mul-float v4, v4, v17

    goto :goto_8

    .line 108
    .end local v1    # "all":F
    .end local v4    # "bottom":F
    .end local v9    # "k":I
    .end local v10    # "left":F
    .end local v11    # "right":F
    .end local v13    # "top":F
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mContainsStacks:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

    if-nez v14, :cond_f

    .line 110
    :cond_b
    sub-float v17, v15, v3

    add-float v10, v17, v2

    .line 111
    .restart local v10    # "left":F
    add-float v17, v15, v3

    sub-float v11, v17, v2

    .line 112
    .restart local v11    # "right":F
    const/16 v17, 0x0

    cmpl-float v17, v16, v17

    if-ltz v17, :cond_c

    move/from16 v13, v16

    .line 113
    .restart local v13    # "top":F
    :goto_9
    const/16 v17, 0x0

    cmpg-float v17, v16, v17

    if-gtz v17, :cond_d

    move/from16 v4, v16

    .line 116
    .restart local v4    # "bottom":F
    :goto_a
    const/16 v17, 0x0

    cmpl-float v17, v13, v17

    if-lez v17, :cond_e

    .line 117
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->phaseY:F

    move/from16 v17, v0

    mul-float v13, v13, v17

    .line 121
    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v13, v11, v4}, Lcom/github/mikephil/charting/buffer/BarBuffer;->addBar(FFFF)V

    goto/16 :goto_4

    .line 112
    .end local v4    # "bottom":F
    .end local v13    # "top":F
    :cond_c
    const/4 v13, 0x0

    goto :goto_9

    .line 113
    .restart local v13    # "top":F
    :cond_d
    const/4 v4, 0x0

    goto :goto_a

    .line 119
    .restart local v4    # "bottom":F
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->phaseY:F

    move/from16 v17, v0

    mul-float v4, v4, v17

    goto :goto_b

    .line 125
    .end local v4    # "bottom":F
    .end local v10    # "left":F
    .end local v11    # "right":F
    .end local v13    # "top":F
    :cond_f
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BarEntry;->getVal()F

    move-result v1

    .line 128
    .restart local v1    # "all":F
    const/4 v9, 0x0

    .restart local v9    # "k":I
    :goto_c
    array-length v0, v14

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_2

    .line 130
    aget v17, v14, v9

    sub-float v1, v1, v17

    .line 131
    aget v17, v14, v9

    add-float v16, v17, v1

    .line 133
    sub-float v17, v15, v3

    add-float v10, v17, v2

    .line 134
    .restart local v10    # "left":F
    add-float v17, v15, v3

    sub-float v11, v17, v2

    .line 135
    .restart local v11    # "right":F
    const/16 v17, 0x0

    cmpl-float v17, v16, v17

    if-ltz v17, :cond_10

    move/from16 v13, v16

    .line 136
    .restart local v13    # "top":F
    :goto_d
    const/16 v17, 0x0

    cmpg-float v17, v16, v17

    if-gtz v17, :cond_11

    move/from16 v4, v16

    .line 139
    .restart local v4    # "bottom":F
    :goto_e
    const/16 v17, 0x0

    cmpl-float v17, v13, v17

    if-lez v17, :cond_12

    .line 140
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->phaseY:F

    move/from16 v17, v0

    mul-float v13, v13, v17

    .line 144
    :goto_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v13, v11, v4}, Lcom/github/mikephil/charting/buffer/BarBuffer;->addBar(FFFF)V

    .line 128
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 135
    .end local v4    # "bottom":F
    .end local v13    # "top":F
    :cond_10
    const/4 v13, 0x0

    goto :goto_d

    .line 136
    .restart local v13    # "top":F
    :cond_11
    const/4 v4, 0x0

    goto :goto_e

    .line 142
    .restart local v4    # "bottom":F
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->phaseY:F

    move/from16 v17, v0

    mul-float v4, v4, v17

    goto :goto_f
.end method

.method public setBarSpace(F)V
    .locals 0
    .param p1, "barspace"    # F

    .prologue
    .line 25
    iput p1, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mBarSpace:F

    .line 26
    return-void
.end method

.method public setDataSet(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mDataSetIndex:I

    .line 30
    return-void
.end method

.method public setInverted(Z)V
    .locals 0
    .param p1, "inverted"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mInverted:Z

    .line 34
    return-void
.end method
