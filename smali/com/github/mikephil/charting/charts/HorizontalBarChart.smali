.class public Lcom/github/mikephil/charting/charts/HorizontalBarChart;
.super Lcom/github/mikephil/charting/charts/BarChart;
.source "HorizontalBarChart.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/charts/BarChart;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/BarChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/BarChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method


# virtual methods
.method protected calcModulus()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 145
    const/16 v1, 0x9

    new-array v0, v1, [F

    .line 146
    .local v0, "values":[F
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getMatrixTouch()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 148
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 149
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v1, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BarData;->getXValCount()I

    move-result v1

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v3, v3, Lcom/github/mikephil/charting/components/XAxis;->mLabelHeight:I

    mul-int/2addr v1, v3

    int-to-float v1, v1

    .line 150
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentHeight()F

    move-result v3

    const/4 v4, 0x4

    aget v4, v0, v4

    mul-float/2addr v3, v4

    .line 149
    div-float/2addr v1, v3

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 148
    iput v1, v2, Lcom/github/mikephil/charting/components/XAxis;->mAxisLabelModulus:I

    .line 152
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/XAxis;->mAxisLabelModulus:I

    if-ge v1, v6, :cond_0

    .line 153
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iput v6, v1, Lcom/github/mikephil/charting/components/XAxis;->mAxisLabelModulus:I

    .line 154
    :cond_0
    return-void
.end method

.method protected calculateOffsets()V
    .locals 11

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 65
    const/4 v2, 0x0

    .local v2, "offsetLeft":F
    const/4 v3, 0x0

    .local v3, "offsetRight":F
    const/4 v4, 0x0

    .local v4, "offsetTop":F
    const/4 v1, 0x0

    .line 68
    .local v1, "offsetBottom":F
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/Legend;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 70
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/Legend;->getPosition()Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-result-object v6

    sget-object v7, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->RIGHT_OF_CHART:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    if-eq v6, v7, :cond_0

    .line 71
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/Legend;->getPosition()Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-result-object v6

    sget-object v7, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->RIGHT_OF_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    if-ne v6, v7, :cond_6

    .line 73
    :cond_0
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v6, v6, Lcom/github/mikephil/charting/components/Legend;->mTextWidthMax:F

    iget-object v7, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/Legend;->getXOffset()F

    move-result v7

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    add-float/2addr v3, v6

    .line 89
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/YAxis;->needsOffset()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 90
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v7, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mAxisRendererLeft:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->getPaintAxisLabels()Landroid/graphics/Paint;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/github/mikephil/charting/components/YAxis;->getRequiredHeightSpace(Landroid/graphics/Paint;)F

    move-result v6

    add-float/2addr v4, v6

    .line 93
    :cond_2
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/YAxis;->needsOffset()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 94
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v7, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mAxisRendererRight:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    .line 95
    invoke-virtual {v7}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->getPaintAxisLabels()Landroid/graphics/Paint;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/github/mikephil/charting/components/YAxis;->getRequiredHeightSpace(Landroid/graphics/Paint;)F

    move-result v6

    add-float/2addr v1, v6

    .line 98
    :cond_3
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v6, v6, Lcom/github/mikephil/charting/components/XAxis;->mLabelWidth:I

    int-to-float v5, v6

    .line 100
    .local v5, "xlabelwidth":F
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/XAxis;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 103
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v6

    sget-object v7, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v6, v7, :cond_a

    .line 105
    add-float/2addr v2, v5

    .line 118
    :cond_4
    :goto_1
    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v6}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    .line 120
    .local v0, "min":F
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 121
    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v9

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 120
    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->restrainViewPort(FFFF)V

    .line 123
    iget-boolean v6, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mLogEnabled:Z

    if-eqz v6, :cond_5

    .line 124
    const-string v6, "MPAndroidChart"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "offsetLeft: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", offsetTop: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 125
    const-string v8, ", offsetRight: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", offsetBottom: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 124
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-string v6, "MPAndroidChart"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Content: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentRect()Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/RectF;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_5
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->prepareOffsetMatrix()V

    .line 130
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->prepareValuePxMatrix()V

    .line 131
    return-void

    .line 75
    .end local v0    # "min":F
    .end local v5    # "xlabelwidth":F
    :cond_6
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/Legend;->getPosition()Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-result-object v6

    sget-object v7, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->LEFT_OF_CHART:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    if-eq v6, v7, :cond_7

    .line 76
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/Legend;->getPosition()Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-result-object v6

    sget-object v7, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->LEFT_OF_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    if-ne v6, v7, :cond_8

    .line 78
    :cond_7
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v6, v6, Lcom/github/mikephil/charting/components/Legend;->mTextWidthMax:F

    iget-object v7, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/Legend;->getXOffset()F

    move-result v7

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    add-float/2addr v2, v6

    .line 80
    goto/16 :goto_0

    :cond_8
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/Legend;->getPosition()Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-result-object v6

    sget-object v7, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    if-eq v6, v7, :cond_9

    .line 81
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/Legend;->getPosition()Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-result-object v6

    sget-object v7, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    if-eq v6, v7, :cond_9

    .line 82
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/Legend;->getPosition()Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-result-object v6

    sget-object v7, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    if-ne v6, v7, :cond_1

    .line 84
    :cond_9
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v6, v6, Lcom/github/mikephil/charting/components/Legend;->mTextHeightMax:F

    const/high16 v7, 0x40400000    # 3.0f

    mul-float/2addr v6, v7

    add-float/2addr v1, v6

    goto/16 :goto_0

    .line 107
    .restart local v5    # "xlabelwidth":F
    :cond_a
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v6

    sget-object v7, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->TOP:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v6, v7, :cond_b

    .line 109
    add-float/2addr v3, v5

    .line 111
    goto/16 :goto_1

    :cond_b
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v6

    sget-object v7, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTH_SIDED:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v6, v7, :cond_4

    .line 113
    add-float/2addr v2, v5

    .line 114
    add-float/2addr v3, v5

    goto/16 :goto_1
.end method

.method public getBarBounds(Lcom/github/mikephil/charting/data/BarEntry;)Landroid/graphics/RectF;
    .locals 12
    .param p1, "e"    # Lcom/github/mikephil/charting/data/BarEntry;

    .prologue
    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    .line 159
    iget-object v10, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v10, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v10, p1}, Lcom/github/mikephil/charting/data/BarData;->getDataSetForEntry(Lcom/github/mikephil/charting/data/Entry;)Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/BarDataSet;

    .line 161
    .local v5, "set":Lcom/github/mikephil/charting/data/BarDataSet;
    if-nez v5, :cond_0

    .line 162
    const/4 v2, 0x0

    .line 179
    :goto_0
    return-object v2

    .line 164
    :cond_0
    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/BarDataSet;->getBarSpace()F

    move-result v0

    .line 165
    .local v0, "barspace":F
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BarEntry;->getVal()F

    move-result v9

    .line 166
    .local v9, "y":F
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BarEntry;->getXIndex()I

    move-result v10

    int-to-float v8, v10

    .line 168
    .local v8, "x":F
    const/high16 v10, 0x40000000    # 2.0f

    div-float v6, v0, v10

    .line 170
    .local v6, "spaceHalf":F
    sub-float v10, v8, v11

    add-float v7, v10, v6

    .line 171
    .local v7, "top":F
    add-float v10, v8, v11

    sub-float v1, v10, v6

    .line 172
    .local v1, "bottom":F
    cmpl-float v10, v9, v4

    if-ltz v10, :cond_2

    move v3, v9

    .line 173
    .local v3, "left":F
    :goto_1
    cmpg-float v10, v9, v4

    if-gtz v10, :cond_1

    move v4, v9

    .line 175
    .local v4, "right":F
    :cond_1
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v3, v7, v4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 177
    .local v2, "bounds":Landroid/graphics/RectF;
    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/BarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/github/mikephil/charting/utils/Transformer;->rectValueToPixel(Landroid/graphics/RectF;)V

    goto :goto_0

    .end local v2    # "bounds":Landroid/graphics/RectF;
    .end local v3    # "left":F
    .end local v4    # "right":F
    :cond_2
    move v3, v4

    .line 172
    goto :goto_1
.end method

.method public getHighestVisibleXIndex()I
    .locals 6

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    .line 255
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v3, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v3

    int-to-float v2, v3

    .line 256
    .local v2, "step":F
    cmpg-float v3, v2, v0

    if-gtz v3, :cond_0

    .line 258
    .local v0, "div":F
    :goto_0
    const/4 v3, 0x2

    new-array v1, v3, [F

    const/4 v3, 0x0

    .line 259
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v4

    aput v4, v1, v3

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v3

    aput v3, v1, v5

    .line 262
    .local v1, "pts":[F
    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {p0, v3}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/github/mikephil/charting/utils/Transformer;->pixelsToValue([F)V

    .line 263
    aget v3, v1, v5

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->getXChartMax()F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->getXChartMax()F

    move-result v3

    div-float/2addr v3, v0

    :goto_1
    float-to-int v3, v3

    return v3

    .line 256
    .end local v0    # "div":F
    .end local v1    # "pts":[F
    :cond_0
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v3, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BarData;->getGroupSpace()F

    move-result v3

    add-float v0, v2, v3

    goto :goto_0

    .line 263
    .restart local v0    # "div":F
    .restart local v1    # "pts":[F
    :cond_1
    aget v3, v1, v5

    div-float/2addr v3, v0

    goto :goto_1
.end method

.method public getHighlightByTouchPoint(FF)Lcom/github/mikephil/charting/utils/Highlight;
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 208
    iget-boolean v2, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mDataNotSet:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    if-nez v2, :cond_2

    .line 209
    :cond_0
    const-string v2, "MPAndroidChart"

    const-string v3, "Can\'t select by touch. No data set."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_1
    :goto_0
    return-object v1

    .line 214
    :cond_2
    const/4 v2, 0x2

    new-array v0, v2, [F

    .line 215
    .local v0, "pts":[F
    aput p1, v0, v5

    .line 216
    aput p2, v0, v4

    .line 218
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mLeftAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-virtual {v2, v0}, Lcom/github/mikephil/charting/utils/Transformer;->pixelsToValue([F)V

    .line 220
    aget v2, v0, v4

    iget v3, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mXChartMin:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_1

    aget v2, v0, v4

    iget v3, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mXChartMax:F

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_1

    .line 223
    aget v1, v0, v4

    float-to-double v2, v1

    aget v1, v0, v5

    float-to-double v4, v1

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->getHighlight(DD)Lcom/github/mikephil/charting/utils/Highlight;

    move-result-object v1

    goto :goto_0
.end method

.method public getLowestVisibleXIndex()I
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    .line 235
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v3, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v3

    int-to-float v2, v3

    .line 236
    .local v2, "step":F
    cmpg-float v3, v2, v4

    if-gtz v3, :cond_0

    move v0, v4

    .line 238
    .local v0, "div":F
    :goto_0
    const/4 v3, 0x2

    new-array v1, v3, [F

    const/4 v3, 0x0

    .line 239
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v6

    aput v6, v1, v3

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v3

    aput v3, v1, v7

    .line 242
    .local v1, "pts":[F
    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {p0, v3}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/github/mikephil/charting/utils/Transformer;->pixelsToValue([F)V

    .line 243
    aget v3, v1, v7

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_1

    move v3, v5

    :goto_1
    add-float/2addr v3, v4

    float-to-int v3, v3

    return v3

    .line 236
    .end local v0    # "div":F
    .end local v1    # "pts":[F
    :cond_0
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v3, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BarData;->getGroupSpace()F

    move-result v3

    add-float v0, v2, v3

    goto :goto_0

    .line 243
    .restart local v0    # "div":F
    .restart local v1    # "pts":[F
    :cond_1
    aget v3, v1, v7

    div-float/2addr v3, v0

    goto :goto_1
.end method

.method public getPosition(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Landroid/graphics/PointF;
    .locals 4
    .param p1, "e"    # Lcom/github/mikephil/charting/data/Entry;
    .param p2, "axis"    # Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 185
    if-nez p1, :cond_0

    .line 186
    const/4 v1, 0x0

    .line 194
    :goto_0
    return-object v1

    .line 188
    :cond_0
    const/4 v1, 0x2

    new-array v0, v1, [F

    .line 189
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v1

    aput v1, v0, v2

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v3

    .line 192
    .local v0, "vals":[F
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 194
    new-instance v1, Landroid/graphics/PointF;

    aget v2, v0, v2

    aget v3, v0, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0
.end method

.method protected init()V
    .locals 4

    .prologue
    .line 48
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/BarChart;->init()V

    .line 50
    new-instance v0, Lcom/github/mikephil/charting/utils/TransformerHorizontalBarChart;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/utils/TransformerHorizontalBarChart;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mLeftAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    .line 51
    new-instance v0, Lcom/github/mikephil/charting/utils/TransformerHorizontalBarChart;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/utils/TransformerHorizontalBarChart;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mRightAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    .line 53
    new-instance v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-direct {v0, p0, v1, v2}, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;-><init>(Lcom/github/mikephil/charting/interfaces/BarDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    .line 54
    new-instance v0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    .line 55
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mLeftAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-direct {v0, v1, v2, v3}, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/YAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    .line 54
    iput-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mAxisRendererLeft:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    .line 56
    new-instance v0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    .line 57
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mRightAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-direct {v0, v1, v2, v3}, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/YAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    .line 56
    iput-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mAxisRendererRight:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    .line 58
    new-instance v0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 59
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mLeftAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/charts/BarChart;)V

    .line 58
    iput-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    .line 60
    return-void
.end method

.method protected prepareValuePxMatrix()V
    .locals 5

    .prologue
    .line 135
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mRightAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/YAxis;->mAxisMinimum:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/YAxis;->mAxisRange:F

    .line 136
    iget v3, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mDeltaX:F

    .line 137
    iget v4, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mXChartMin:F

    .line 135
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/github/mikephil/charting/utils/Transformer;->prepareMatrixValuePx(FFFF)V

    .line 138
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mLeftAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/YAxis;->mAxisMinimum:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/YAxis;->mAxisRange:F

    .line 139
    iget v3, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mDeltaX:F

    .line 140
    iget v4, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mXChartMin:F

    .line 138
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/github/mikephil/charting/utils/Transformer;->prepareMatrixValuePx(FFFF)V

    .line 141
    return-void
.end method
