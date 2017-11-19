.class public Lcom/github/mikephil/charting/charts/BarChart;
.super Lcom/github/mikephil/charting/charts/BarLineChartBase;
.source "BarChart.java"

# interfaces
.implements Lcom/github/mikephil/charting/interfaces/BarDataProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/charts/BarLineChartBase",
        "<",
        "Lcom/github/mikephil/charting/data/BarData;",
        ">;",
        "Lcom/github/mikephil/charting/interfaces/BarDataProvider;"
    }
.end annotation


# instance fields
.field private mDrawBarShadow:Z

.field private mDrawHighlightArrow:Z

.field private mDrawValueAboveBar:Z

.field private mDrawValuesForWholeStack:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;)V

    .line 28
    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawHighlightArrow:Z

    .line 34
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawValueAboveBar:Z

    .line 40
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawValuesForWholeStack:Z

    .line 46
    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawBarShadow:Z

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawHighlightArrow:Z

    .line 34
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawValueAboveBar:Z

    .line 40
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawValuesForWholeStack:Z

    .line 46
    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawBarShadow:Z

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawHighlightArrow:Z

    .line 34
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawValueAboveBar:Z

    .line 40
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawValuesForWholeStack:Z

    .line 46
    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawBarShadow:Z

    .line 58
    return-void
.end method


# virtual methods
.method protected calcMinMax()V
    .locals 6

    .prologue
    .line 73
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->calcMinMax()V

    .line 76
    iget v4, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDeltaX:F

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    iput v4, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDeltaX:F

    .line 79
    iget v5, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDeltaX:F

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v4, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDeltaX:F

    .line 81
    const/4 v2, 0x0

    .line 83
    .local v2, "maxEntry":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v4, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 91
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v4, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/BarData;->getGroupSpace()F

    move-result v0

    .line 92
    .local v0, "groupSpace":F
    iget v4, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDeltaX:F

    int-to-float v5, v2

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    iput v4, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDeltaX:F

    .line 93
    iget v4, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDeltaX:F

    iget v5, p0, Lcom/github/mikephil/charting/charts/BarChart;->mXChartMin:F

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/github/mikephil/charting/charts/BarChart;->mXChartMax:F

    .line 94
    return-void

    .line 85
    .end local v0    # "groupSpace":F
    :cond_0
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v4, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v4, v1}, Lcom/github/mikephil/charting/data/BarData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v3

    .line 87
    .local v3, "set":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<+Lcom/github/mikephil/charting/data/Entry;>;"
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/DataSet;->getEntryCount()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 88
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/DataSet;->getEntryCount()I

    move-result v2

    .line 83
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getBarBounds(Lcom/github/mikephil/charting/data/BarEntry;)Landroid/graphics/RectF;
    .locals 12
    .param p1, "e"    # Lcom/github/mikephil/charting/data/BarEntry;

    .prologue
    const/4 v2, 0x0

    .line 225
    iget-object v11, p0, Lcom/github/mikephil/charting/charts/BarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v11, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v11, p1}, Lcom/github/mikephil/charting/data/BarData;->getDataSetForEntry(Lcom/github/mikephil/charting/data/Entry;)Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/BarDataSet;

    .line 227
    .local v6, "set":Lcom/github/mikephil/charting/data/BarDataSet;
    if-nez v6, :cond_0

    .line 228
    const/4 v3, 0x0

    .line 246
    :goto_0
    return-object v3

    .line 230
    :cond_0
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BarDataSet;->getBarSpace()F

    move-result v1

    .line 231
    .local v1, "barspace":F
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BarEntry;->getVal()F

    move-result v10

    .line 232
    .local v10, "y":F
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BarEntry;->getXIndex()I

    move-result v11

    int-to-float v9, v11

    .line 234
    .local v9, "x":F
    const/high16 v0, 0x3f000000    # 0.5f

    .line 236
    .local v0, "barWidth":F
    const/high16 v11, 0x40000000    # 2.0f

    div-float v7, v1, v11

    .line 237
    .local v7, "spaceHalf":F
    sub-float v11, v9, v0

    add-float v4, v11, v7

    .line 238
    .local v4, "left":F
    add-float v11, v9, v0

    sub-float v5, v11, v7

    .line 239
    .local v5, "right":F
    cmpl-float v11, v10, v2

    if-ltz v11, :cond_2

    move v8, v10

    .line 240
    .local v8, "top":F
    :goto_1
    cmpg-float v11, v10, v2

    if-gtz v11, :cond_1

    move v2, v10

    .line 242
    .local v2, "bottom":F
    :cond_1
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v4, v8, v5, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 244
    .local v3, "bounds":Landroid/graphics/RectF;
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/github/mikephil/charting/charts/BarChart;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v11

    invoke-virtual {v11, v3}, Lcom/github/mikephil/charting/utils/Transformer;->rectValueToPixel(Landroid/graphics/RectF;)V

    goto :goto_0

    .end local v2    # "bottom":F
    .end local v3    # "bounds":Landroid/graphics/RectF;
    .end local v8    # "top":F
    :cond_2
    move v8, v2

    .line 239
    goto :goto_1
.end method

.method public getBarData()Lcom/github/mikephil/charting/data/BarData;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v0, Lcom/github/mikephil/charting/data/BarData;

    return-object v0
.end method

.method public getHighestVisibleXIndex()I
    .locals 6

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 359
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v3, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v3

    int-to-float v2, v3

    .line 360
    .local v2, "step":F
    cmpg-float v3, v2, v0

    if-gtz v3, :cond_0

    .line 362
    .local v0, "div":F
    :goto_0
    const/4 v3, 0x2

    new-array v1, v3, [F

    .line 363
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v3

    aput v3, v1, v5

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v4

    aput v4, v1, v3

    .line 366
    .local v1, "pts":[F
    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {p0, v3}, Lcom/github/mikephil/charting/charts/BarChart;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/github/mikephil/charting/utils/Transformer;->pixelsToValue([F)V

    .line 367
    aget v3, v1, v5

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarChart;->getXChartMax()F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarChart;->getXChartMax()F

    move-result v3

    div-float/2addr v3, v0

    :goto_1
    float-to-int v3, v3

    return v3

    .line 360
    .end local v0    # "div":F
    .end local v1    # "pts":[F
    :cond_0
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v3, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BarData;->getGroupSpace()F

    move-result v3

    add-float v0, v2, v3

    goto :goto_0

    .line 367
    .restart local v0    # "div":F
    .restart local v1    # "pts":[F
    :cond_1
    aget v3, v1, v5

    div-float/2addr v3, v0

    goto :goto_1
.end method

.method protected getHighlight(DD)Lcom/github/mikephil/charting/utils/Highlight;
    .locals 11
    .param p1, "xPosition"    # D
    .param p3, "yPosition"    # D

    .prologue
    .line 134
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/BarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v7, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v3

    .line 135
    .local v3, "setCount":I
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/BarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v7, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/BarData;->getXValCount()I

    move-result v5

    .line 136
    .local v5, "valCount":I
    const/4 v1, 0x0

    .line 137
    .local v1, "dataSetIndex":I
    const/4 v6, 0x0

    .line 140
    .local v6, "xIndex":I
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/BarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v7, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/BarData;->isGrouped()Z

    move-result v7

    if-nez v7, :cond_2

    .line 142
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v6, v8

    .line 145
    if-gez v6, :cond_1

    .line 146
    const/4 v6, 0x0

    .line 188
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/BarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v7, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v7, v1}, Lcom/github/mikephil/charting/data/BarData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v7

    check-cast v7, Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/BarDataSet;->isStacked()Z

    move-result v7

    if-nez v7, :cond_8

    .line 189
    new-instance v7, Lcom/github/mikephil/charting/utils/Highlight;

    invoke-direct {v7, v6, v1}, Lcom/github/mikephil/charting/utils/Highlight;-><init>(II)V

    .line 191
    :goto_1
    return-object v7

    .line 147
    :cond_1
    if-lt v6, v5, :cond_0

    .line 148
    add-int/lit8 v6, v5, -0x1

    .line 152
    goto :goto_0

    .line 155
    :cond_2
    double-to-float v8, p1

    int-to-float v9, v3

    iget-object v7, p0, Lcom/github/mikephil/charting/charts/BarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v7, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/BarData;->getGroupSpace()F

    move-result v7

    add-float/2addr v7, v9

    div-float v7, v8, v7

    float-to-int v4, v7

    .line 157
    .local v4, "steps":I
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/BarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v7, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/BarData;->getGroupSpace()F

    move-result v7

    int-to-float v8, v4

    mul-float v2, v7, v8

    .line 159
    .local v2, "groupSpaceSum":F
    double-to-float v7, p1

    sub-float v0, v7, v2

    .line 161
    .local v0, "baseNoSpace":F
    iget-boolean v7, p0, Lcom/github/mikephil/charting/charts/BarChart;->mLogEnabled:Z

    if-eqz v7, :cond_3

    .line 162
    const-string v7, "MPAndroidChart"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "base: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", steps: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", groupSpaceSum: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 163
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 164
    const-string v9, ", baseNoSpace: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 162
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_3
    float-to-int v7, v0

    rem-int v1, v7, v3

    .line 167
    float-to-int v7, v0

    div-int v6, v7, v3

    .line 169
    iget-boolean v7, p0, Lcom/github/mikephil/charting/charts/BarChart;->mLogEnabled:Z

    if-eqz v7, :cond_4

    .line 170
    const-string v7, "MPAndroidChart"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "xIndex: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", dataSet: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_4
    if-gez v6, :cond_6

    .line 174
    const/4 v6, 0x0

    .line 175
    const/4 v1, 0x0

    .line 182
    :cond_5
    :goto_2
    if-gez v1, :cond_7

    .line 183
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 176
    :cond_6
    if-lt v6, v5, :cond_5

    .line 177
    add-int/lit8 v6, v5, -0x1

    .line 178
    add-int/lit8 v1, v3, -0x1

    goto :goto_2

    .line 184
    :cond_7
    if-lt v1, v3, :cond_0

    .line 185
    add-int/lit8 v1, v3, -0x1

    goto/16 :goto_0

    .line 191
    .end local v0    # "baseNoSpace":F
    .end local v2    # "groupSpaceSum":F
    .end local v4    # "steps":I
    :cond_8
    invoke-virtual {p0, v6, v1, p3, p4}, Lcom/github/mikephil/charting/charts/BarChart;->getStackedHighlight(IID)Lcom/github/mikephil/charting/utils/Highlight;

    move-result-object v7

    goto/16 :goto_1
.end method

.method public getHighlightByTouchPoint(FF)Lcom/github/mikephil/charting/utils/Highlight;
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 107
    iget-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDataNotSet:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    if-nez v2, :cond_2

    .line 108
    :cond_0
    const-string v2, "MPAndroidChart"

    const-string v3, "Can\'t select by touch. No data set."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_1
    :goto_0
    return-object v1

    .line 113
    :cond_2
    const/4 v2, 0x2

    new-array v0, v2, [F

    .line 114
    .local v0, "pts":[F
    aput p1, v0, v4

    .line 115
    aput p2, v0, v5

    .line 117
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarChart;->mLeftAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-virtual {v2, v0}, Lcom/github/mikephil/charting/utils/Transformer;->pixelsToValue([F)V

    .line 119
    aget v2, v0, v4

    iget v3, p0, Lcom/github/mikephil/charting/charts/BarChart;->mXChartMin:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_1

    aget v2, v0, v4

    iget v3, p0, Lcom/github/mikephil/charting/charts/BarChart;->mXChartMax:F

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_1

    .line 122
    aget v1, v0, v4

    float-to-double v2, v1

    aget v1, v0, v5

    float-to-double v4, v1

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/github/mikephil/charting/charts/BarChart;->getHighlight(DD)Lcom/github/mikephil/charting/utils/Highlight;

    move-result-object v1

    goto :goto_0
.end method

.method public getLowestVisibleXIndex()I
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 339
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v3, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v3

    int-to-float v2, v3

    .line 340
    .local v2, "step":F
    cmpg-float v3, v2, v4

    if-gtz v3, :cond_0

    move v0, v4

    .line 342
    .local v0, "div":F
    :goto_0
    const/4 v3, 0x2

    new-array v1, v3, [F

    .line 343
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v3

    aput v3, v1, v7

    const/4 v3, 0x1

    iget-object v6, p0, Lcom/github/mikephil/charting/charts/BarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v6

    aput v6, v1, v3

    .line 346
    .local v1, "pts":[F
    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {p0, v3}, Lcom/github/mikephil/charting/charts/BarChart;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/github/mikephil/charting/utils/Transformer;->pixelsToValue([F)V

    .line 347
    aget v3, v1, v7

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_1

    move v3, v5

    :goto_1
    add-float/2addr v3, v4

    float-to-int v3, v3

    return v3

    .line 340
    .end local v0    # "div":F
    .end local v1    # "pts":[F
    :cond_0
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v3, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BarData;->getGroupSpace()F

    move-result v3

    add-float v0, v2, v3

    goto :goto_0

    .line 347
    .restart local v0    # "div":F
    .restart local v1    # "pts":[F
    :cond_1
    aget v3, v1, v7

    div-float/2addr v3, v0

    goto :goto_1
.end method

.method protected getStackedHighlight(IID)Lcom/github/mikephil/charting/utils/Highlight;
    .locals 5
    .param p1, "xIndex"    # I
    .param p2, "dataSet"    # I
    .param p3, "yValue"    # D

    .prologue
    .line 205
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v3, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v3, p2}, Lcom/github/mikephil/charting/data/BarData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-virtual {v3, p1}, Lcom/github/mikephil/charting/data/BarDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/BarEntry;

    .line 207
    .local v0, "entry":Lcom/github/mikephil/charting/data/BarEntry;
    if-eqz v0, :cond_0

    .line 208
    double-to-float v3, p3

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/data/BarEntry;->getClosestIndexAbove(F)I

    move-result v2

    .line 209
    .local v2, "stackIndex":I
    new-instance v1, Lcom/github/mikephil/charting/utils/Highlight;

    invoke-direct {v1, p1, p2, v2}, Lcom/github/mikephil/charting/utils/Highlight;-><init>(III)V

    .line 212
    .end local v2    # "stackIndex":I
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected init()V
    .locals 4

    .prologue
    .line 62
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->init()V

    .line 64
    new-instance v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-direct {v0, p0, v1, v2}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;-><init>(Lcom/github/mikephil/charting/interfaces/BarDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    .line 65
    new-instance v0, Lcom/github/mikephil/charting/renderer/XAxisRendererBarChart;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarChart;->mLeftAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    .line 66
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/github/mikephil/charting/renderer/XAxisRendererBarChart;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/charts/BarChart;)V

    .line 65
    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    .line 68
    const/high16 v0, -0x41000000    # -0.5f

    iput v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->mXChartMin:F

    .line 69
    return-void
.end method

.method public isDrawBarShadowEnabled()Z
    .locals 1

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawBarShadow:Z

    return v0
.end method

.method public isDrawHighlightArrowEnabled()Z
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawHighlightArrow:Z

    return v0
.end method

.method public isDrawValueAboveBarEnabled()Z
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawValueAboveBar:Z

    return v0
.end method

.method public isDrawValuesForWholeStackEnabled()Z
    .locals 1

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawValuesForWholeStack:Z

    return v0
.end method

.method public setDrawBarShadow(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 312
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawBarShadow:Z

    .line 313
    return-void
.end method

.method public setDrawHighlightArrow(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 255
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawHighlightArrow:Z

    .line 256
    return-void
.end method

.method public setDrawValueAboveBar(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 274
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawValueAboveBar:Z

    .line 275
    return-void
.end method

.method public setDrawValuesForWholeStack(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 293
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawValuesForWholeStack:Z

    .line 294
    return-void
.end method
