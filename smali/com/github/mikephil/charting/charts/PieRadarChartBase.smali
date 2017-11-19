.class public abstract Lcom/github/mikephil/charting/charts/PieRadarChartBase;
.super Lcom/github/mikephil/charting/charts/Chart;
.source "PieRadarChartBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/data/ChartData",
        "<+",
        "Lcom/github/mikephil/charting/data/DataSet",
        "<+",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;>;>",
        "Lcom/github/mikephil/charting/charts/Chart",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected mListener:Landroid/view/View$OnTouchListener;

.field private mRawRotationAngle:F

.field protected mRotateEnabled:Z

.field private mRotationAngle:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    const/high16 v0, 0x43870000    # 270.0f

    .line 48
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;-><init>(Landroid/content/Context;)V

    .line 36
    iput v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRotationAngle:F

    .line 39
    iput v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRawRotationAngle:F

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRotateEnabled:Z

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    const/high16 v0, 0x43870000    # 270.0f

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/Chart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRotationAngle:F

    .line 39
    iput v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRawRotationAngle:F

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRotateEnabled:Z

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    const/high16 v0, 0x43870000    # 270.0f

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/Chart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    iput v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRotationAngle:F

    .line 39
    iput v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRawRotationAngle:F

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRotateEnabled:Z

    .line 57
    return-void
.end method

.method private getFullLegendWidth()F
    .locals 2

    .prologue
    .line 388
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v0, v0, Lcom/github/mikephil/charting/components/Legend;->mTextWidthMax:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend;->getFormSize()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend;->getFormToTextSpace()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected calcMinMax()V
    .locals 1

    .prologue
    .line 68
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getXVals()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mDeltaX:F

    .line 69
    return-void
.end method

.method protected calculateOffsets()V
    .locals 27

    .prologue
    .line 102
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    const/4 v13, 0x0

    .local v13, "legendLeft":F
    const/4 v14, 0x0

    .local v14, "legendRight":F
    const/4 v11, 0x0

    .local v11, "legendBottom":F
    const/4 v15, 0x0

    .line 104
    .local v15, "legendTop":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/github/mikephil/charting/components/Legend;->isEnabled()Z

    move-result v24

    if-eqz v24, :cond_1

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/github/mikephil/charting/components/Legend;->getPosition()Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-result-object v24

    sget-object v25, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->RIGHT_OF_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_3

    .line 109
    const/high16 v24, 0x41500000    # 13.0f

    invoke-static/range {v24 .. v24}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v23

    .line 111
    .local v23, "spacing":F
    invoke-direct/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getFullLegendWidth()F

    move-result v24

    add-float v14, v24, v23

    .line 187
    .end local v23    # "spacing":F
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRequiredBaseOffset()F

    move-result v24

    add-float v13, v13, v24

    .line 188
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRequiredBaseOffset()F

    move-result v24

    add-float v14, v14, v24

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRequiredBaseOffset()F

    move-result v24

    add-float v15, v15, v24

    .line 192
    :cond_1
    const/high16 v24, 0x41200000    # 10.0f

    invoke-static/range {v24 .. v24}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v17

    .line 194
    .local v17, "min":F
    move/from16 v0, v17

    invoke-static {v0, v13}, Ljava/lang/Math;->max(FF)F

    move-result v19

    .line 195
    .local v19, "offsetLeft":F
    move/from16 v0, v17

    invoke-static {v0, v15}, Ljava/lang/Math;->max(FF)F

    move-result v21

    .line 196
    .local v21, "offsetTop":F
    move/from16 v0, v17

    invoke-static {v0, v14}, Ljava/lang/Math;->max(FF)F

    move-result v20

    .line 197
    .local v20, "offsetRight":F
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRequiredBaseOffset()F

    move-result v24

    move/from16 v0, v24

    invoke-static {v0, v11}, Ljava/lang/Math;->max(FF)F

    move-result v24

    move/from16 v0, v17

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v18

    .line 199
    .local v18, "offsetBottom":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v20

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->restrainViewPort(FFFF)V

    .line 201
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLogEnabled:Z

    move/from16 v24, v0

    if-eqz v24, :cond_2

    .line 202
    const-string v24, "MPAndroidChart"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "offsetLeft: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", offsetTop: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 203
    const-string v26, ", offsetRight: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", offsetBottom: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 202
    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_2
    return-void

    .line 113
    .end local v17    # "min":F
    .end local v18    # "offsetBottom":F
    .end local v19    # "offsetLeft":F
    .end local v20    # "offsetRight":F
    .end local v21    # "offsetTop":F
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/github/mikephil/charting/components/Legend;->getPosition()Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-result-object v24

    sget-object v25, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->RIGHT_OF_CHART:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_5

    .line 116
    const/high16 v24, 0x41000000    # 8.0f

    invoke-static/range {v24 .. v24}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v23

    .line 118
    .restart local v23    # "spacing":F
    invoke-direct/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getFullLegendWidth()F

    move-result v24

    add-float v16, v24, v23

    .line 120
    .local v16, "legendWidth":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/github/mikephil/charting/components/Legend;->mTextHeightMax:F

    move/from16 v25, v0

    add-float v12, v24, v25

    .line 122
    .local v12, "legendHeight":F
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getCenter()Landroid/graphics/PointF;

    move-result-object v7

    .line 124
    .local v7, "c":Landroid/graphics/PointF;
    new-instance v6, Landroid/graphics/PointF;

    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v24, v24, v16

    const/high16 v25, 0x41700000    # 15.0f

    add-float v24, v24, v25

    const/high16 v25, 0x41700000    # 15.0f

    add-float v25, v25, v12

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v6, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 125
    .local v6, "bottomRight":Landroid/graphics/PointF;
    iget v0, v6, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    iget v0, v6, Landroid/graphics/PointF;->y:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->distanceToCenter(FF)F

    move-result v9

    .line 127
    .local v9, "distLegend":F
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRadius()F

    move-result v24

    .line 128
    iget v0, v6, Landroid/graphics/PointF;->x:F

    move/from16 v25, v0

    iget v0, v6, Landroid/graphics/PointF;->y:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getAngleForPoint(FF)F

    move-result v25

    .line 127
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v7, v1, v2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getPosition(Landroid/graphics/PointF;FF)Landroid/graphics/PointF;

    move-result-object v22

    .line 130
    .local v22, "reference":Landroid/graphics/PointF;
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->distanceToCenter(FF)F

    move-result v10

    .line 131
    .local v10, "distReference":F
    const/high16 v24, 0x40a00000    # 5.0f

    invoke-static/range {v24 .. v24}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v17

    .line 133
    .restart local v17    # "min":F
    cmpg-float v24, v9, v10

    if-gez v24, :cond_4

    .line 135
    sub-float v8, v10, v9

    .line 136
    .local v8, "diff":F
    add-float v14, v17, v8

    .line 139
    .end local v8    # "diff":F
    :cond_4
    iget v0, v6, Landroid/graphics/PointF;->y:F

    move/from16 v24, v0

    iget v0, v7, Landroid/graphics/PointF;->y:F

    move/from16 v25, v0

    cmpl-float v24, v24, v25

    if-ltz v24, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v24, v24, v16

    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getWidth()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    cmpl-float v24, v24, v25

    if-lez v24, :cond_0

    .line 140
    move/from16 v14, v16

    .line 143
    goto/16 :goto_0

    .end local v6    # "bottomRight":Landroid/graphics/PointF;
    .end local v7    # "c":Landroid/graphics/PointF;
    .end local v9    # "distLegend":F
    .end local v10    # "distReference":F
    .end local v12    # "legendHeight":F
    .end local v16    # "legendWidth":F
    .end local v17    # "min":F
    .end local v22    # "reference":Landroid/graphics/PointF;
    .end local v23    # "spacing":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/github/mikephil/charting/components/Legend;->getPosition()Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-result-object v24

    sget-object v25, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->LEFT_OF_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_6

    .line 146
    const/high16 v24, 0x41500000    # 13.0f

    invoke-static/range {v24 .. v24}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v23

    .line 148
    .restart local v23    # "spacing":F
    invoke-direct/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getFullLegendWidth()F

    move-result v24

    add-float v13, v24, v23

    .line 150
    goto/16 :goto_0

    .end local v23    # "spacing":F
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/github/mikephil/charting/components/Legend;->getPosition()Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-result-object v24

    sget-object v25, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->LEFT_OF_CHART:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_8

    .line 153
    const/high16 v24, 0x41000000    # 8.0f

    invoke-static/range {v24 .. v24}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v23

    .line 155
    .restart local v23    # "spacing":F
    invoke-direct/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getFullLegendWidth()F

    move-result v24

    add-float v16, v24, v23

    .line 157
    .restart local v16    # "legendWidth":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/github/mikephil/charting/components/Legend;->mTextHeightMax:F

    move/from16 v25, v0

    add-float v12, v24, v25

    .line 159
    .restart local v12    # "legendHeight":F
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getCenter()Landroid/graphics/PointF;

    move-result-object v7

    .line 161
    .restart local v7    # "c":Landroid/graphics/PointF;
    new-instance v5, Landroid/graphics/PointF;

    const/high16 v24, 0x41700000    # 15.0f

    sub-float v24, v16, v24

    const/high16 v25, 0x41700000    # 15.0f

    add-float v25, v25, v12

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v5, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 162
    .local v5, "bottomLeft":Landroid/graphics/PointF;
    iget v0, v5, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    iget v0, v5, Landroid/graphics/PointF;->y:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->distanceToCenter(FF)F

    move-result v9

    .line 164
    .restart local v9    # "distLegend":F
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRadius()F

    move-result v24

    .line 165
    iget v0, v5, Landroid/graphics/PointF;->x:F

    move/from16 v25, v0

    iget v0, v5, Landroid/graphics/PointF;->y:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getAngleForPoint(FF)F

    move-result v25

    .line 164
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v7, v1, v2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getPosition(Landroid/graphics/PointF;FF)Landroid/graphics/PointF;

    move-result-object v22

    .line 167
    .restart local v22    # "reference":Landroid/graphics/PointF;
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->distanceToCenter(FF)F

    move-result v10

    .line 168
    .restart local v10    # "distReference":F
    const/high16 v24, 0x40a00000    # 5.0f

    invoke-static/range {v24 .. v24}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v17

    .line 170
    .restart local v17    # "min":F
    cmpg-float v24, v9, v10

    if-gez v24, :cond_7

    .line 172
    sub-float v8, v10, v9

    .line 173
    .restart local v8    # "diff":F
    add-float v13, v17, v8

    .line 176
    .end local v8    # "diff":F
    :cond_7
    iget v0, v5, Landroid/graphics/PointF;->y:F

    move/from16 v24, v0

    iget v0, v7, Landroid/graphics/PointF;->y:F

    move/from16 v25, v0

    cmpl-float v24, v24, v25

    if-ltz v24, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v24, v24, v16

    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getWidth()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    cmpl-float v24, v24, v25

    if-lez v24, :cond_0

    .line 177
    move/from16 v13, v16

    .line 180
    goto/16 :goto_0

    .end local v5    # "bottomLeft":Landroid/graphics/PointF;
    .end local v7    # "c":Landroid/graphics/PointF;
    .end local v9    # "distLegend":F
    .end local v10    # "distReference":F
    .end local v12    # "legendHeight":F
    .end local v16    # "legendWidth":F
    .end local v17    # "min":F
    .end local v22    # "reference":Landroid/graphics/PointF;
    .end local v23    # "spacing":F
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/github/mikephil/charting/components/Legend;->getPosition()Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-result-object v24

    sget-object v25, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_9

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/github/mikephil/charting/components/Legend;->getPosition()Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-result-object v24

    sget-object v25, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_9

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/github/mikephil/charting/components/Legend;->getPosition()Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-result-object v24

    sget-object v25, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 184
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRequiredBottomOffset()F

    move-result v11

    goto/16 :goto_0
.end method

.method public computeScroll()V
    .locals 1

    .prologue
    .line 83
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mListener:Landroid/view/View$OnTouchListener;

    instance-of v0, v0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mListener:Landroid/view/View$OnTouchListener;

    check-cast v0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->computeScroll()V

    .line 85
    :cond_0
    return-void
.end method

.method public distanceToCenter(FF)F
    .locals 10
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 265
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getCenterOffsets()Landroid/graphics/PointF;

    move-result-object v0

    .line 267
    .local v0, "c":Landroid/graphics/PointF;
    const/4 v1, 0x0

    .line 269
    .local v1, "dist":F
    const/4 v2, 0x0

    .line 270
    .local v2, "xDist":F
    const/4 v3, 0x0

    .line 272
    .local v3, "yDist":F
    iget v4, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v4, p1, v4

    if-lez v4, :cond_0

    .line 273
    iget v4, v0, Landroid/graphics/PointF;->x:F

    sub-float v2, p1, v4

    .line 278
    :goto_0
    iget v4, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v4, p2, v4

    if-lez v4, :cond_1

    .line 279
    iget v4, v0, Landroid/graphics/PointF;->y:F

    sub-float v3, p2, v4

    .line 285
    :goto_1
    float-to-double v4, v2

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    float-to-double v6, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 287
    return v1

    .line 275
    :cond_0
    iget v4, v0, Landroid/graphics/PointF;->x:F

    sub-float v2, v4, p1

    goto :goto_0

    .line 281
    :cond_1
    iget v4, v0, Landroid/graphics/PointF;->y:F

    sub-float v3, v4, p2

    goto :goto_1
.end method

.method public getAngleForPoint(FF)F
    .locals 14
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 217
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getCenterOffsets()Landroid/graphics/PointF;

    move-result-object v1

    .line 219
    .local v1, "c":Landroid/graphics/PointF;
    iget v10, v1, Landroid/graphics/PointF;->x:F

    sub-float v10, p1, v10

    float-to-double v6, v10

    .local v6, "tx":D
    iget v10, v1, Landroid/graphics/PointF;->y:F

    sub-float v10, p2, v10

    float-to-double v8, v10

    .line 220
    .local v8, "ty":D
    mul-double v10, v6, v6

    mul-double v12, v8, v8

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 221
    .local v2, "length":D
    div-double v10, v8, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    .line 223
    .local v4, "r":D
    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    double-to-float v0, v10

    .line 225
    .local v0, "angle":F
    iget v10, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v10, p1, v10

    if-lez v10, :cond_0

    .line 226
    const/high16 v10, 0x43b40000    # 360.0f

    sub-float v0, v10, v0

    .line 229
    :cond_0
    const/high16 v10, 0x42b40000    # 90.0f

    add-float/2addr v0, v10

    .line 232
    const/high16 v10, 0x43b40000    # 360.0f

    cmpl-float v10, v0, v10

    if-lez v10, :cond_1

    .line 233
    const/high16 v10, 0x43b40000    # 360.0f

    sub-float/2addr v0, v10

    .line 235
    :cond_1
    return v0
.end method

.method public getDiameter()F
    .locals 3

    .prologue
    .line 356
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 357
    .local v0, "content":Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    return v1
.end method

.method public abstract getIndexForAngle(F)I
.end method

.method protected getPosition(Landroid/graphics/PointF;FF)Landroid/graphics/PointF;
    .locals 8
    .param p1, "center"    # Landroid/graphics/PointF;
    .param p2, "dist"    # F
    .param p3, "angle"    # F

    .prologue
    .line 249
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    float-to-double v2, v1

    float-to-double v4, p2

    float-to-double v6, p3

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v1, v2

    .line 250
    iget v2, p1, Landroid/graphics/PointF;->y:F

    float-to-double v2, v2

    float-to-double v4, p2

    float-to-double v6, p3

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    .line 249
    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 251
    .local v0, "p":Landroid/graphics/PointF;
    return-object v0
.end method

.method public abstract getRadius()F
.end method

.method public getRawRotationAngle()F
    .locals 1

    .prologue
    .line 318
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRawRotationAngle:F

    return v0
.end method

.method protected abstract getRequiredBaseOffset()F
.end method

.method protected abstract getRequiredBottomOffset()F
.end method

.method public getRotationAngle()F
    .locals 1

    .prologue
    .line 328
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRotationAngle:F

    return v0
.end method

.method public getYChartMax()F
    .locals 1

    .prologue
    .line 404
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getYChartMin()F
    .locals 1

    .prologue
    .line 410
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getYValsAtIndex(I)Ljava/util/List;
    .locals 5
    .param p1, "xIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/utils/SelInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 423
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 425
    .local v2, "vals":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/utils/SelInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetCount()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 437
    return-object v2

    .line 427
    :cond_0
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v4, v1}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v0

    .line 430
    .local v0, "dataSet":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<*>;"
    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/data/DataSet;->getYValForXIndex(I)F

    move-result v3

    .line 432
    .local v3, "yVal":F
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_1

    .line 433
    new-instance v4, Lcom/github/mikephil/charting/utils/SelInfo;

    invoke-direct {v4, v3, v1, v0}, Lcom/github/mikephil/charting/utils/SelInfo;-><init>(FILcom/github/mikephil/charting/data/DataSet;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected init()V
    .locals 1

    .prologue
    .line 61
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/Chart;->init()V

    .line 63
    new-instance v0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;

    invoke-direct {v0, p0}, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;-><init>(Lcom/github/mikephil/charting/charts/PieRadarChartBase;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mListener:Landroid/view/View$OnTouchListener;

    .line 64
    return-void
.end method

.method public isRotationEnabled()Z
    .locals 1

    .prologue
    .line 347
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRotateEnabled:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 89
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mDataNotSet:Z

    if-eqz v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->calcMinMax()V

    .line 94
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegendRenderer:Lcom/github/mikephil/charting/renderer/LegendRenderer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computeLegend(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 96
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->calculateOffsets()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 74
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mTouchEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 77
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 398
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mListener:Landroid/view/View$OnTouchListener;

    .line 399
    return-void
.end method

.method public setRotationAngle(F)V
    .locals 1
    .param p1, "angle"    # F

    .prologue
    .line 306
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    iput p1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRawRotationAngle:F

    .line 307
    iget v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRawRotationAngle:F

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->getNormalizedAngle(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRotationAngle:F

    .line 308
    return-void
.end method

.method public setRotationEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 338
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRotateEnabled:Z

    .line 339
    return-void
.end method

.method public spin(IFFLcom/github/mikephil/charting/animation/Easing$EasingOption;)V
    .locals 4
    .param p1, "durationmillis"    # I
    .param p2, "fromangle"    # F
    .param p3, "toangle"    # F
    .param p4, "easing"    # Lcom/github/mikephil/charting/animation/Easing$EasingOption;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 455
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    .line 473
    :goto_0
    return-void

    .line 458
    :cond_0
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->setRotationAngle(F)V

    .line 460
    const-string v1, "rotationAngle"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    const/4 v3, 0x1

    .line 461
    aput p3, v2, v3

    .line 460
    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 462
    .local v0, "spinAnimator":Landroid/animation/ObjectAnimator;
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 463
    invoke-static {p4}, Lcom/github/mikephil/charting/animation/Easing;->getEasingFunctionFromOption(Lcom/github/mikephil/charting/animation/Easing$EasingOption;)Lcom/github/mikephil/charting/animation/EasingFunction;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 465
    new-instance v1, Lcom/github/mikephil/charting/charts/PieRadarChartBase$1;

    invoke-direct {v1, p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase$1;-><init>(Lcom/github/mikephil/charting/charts/PieRadarChartBase;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 472
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method
