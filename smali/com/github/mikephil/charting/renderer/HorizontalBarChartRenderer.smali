.class public Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;
.super Lcom/github/mikephil/charting/renderer/BarChartRenderer;
.source "HorizontalBarChartRenderer.java"


# instance fields
.field private mYOffset:F


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/interfaces/BarDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 2
    .param p1, "chart"    # Lcom/github/mikephil/charting/interfaces/BarDataProvider;
    .param p2, "animator"    # Lcom/github/mikephil/charting/animation/ChartAnimator;
    .param p3, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;-><init>(Lcom/github/mikephil/charting/interfaces/BarDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mYOffset:F

    .line 34
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/BarDataSet;I)V
    .locals 12
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/data/BarDataSet;
    .param p3, "index"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/BarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v11

    .line 55
    .local v11, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/BarDataSet;->getBarShadowColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v9

    .line 58
    .local v9, "phaseX":F
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v10

    .line 60
    .local v10, "phaseY":F
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/BarDataSet;->getYVals()Ljava/util/List;

    move-result-object v7

    .line 63
    .local v7, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BarEntry;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    aget-object v6, v0, p3

    .line 64
    .local v6, "buffer":Lcom/github/mikephil/charting/buffer/BarBuffer;
    invoke-virtual {v6, v9, v10}, Lcom/github/mikephil/charting/buffer/BarBuffer;->setPhases(FF)V

    .line 65
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/BarDataSet;->getBarSpace()F

    move-result v0

    invoke-virtual {v6, v0}, Lcom/github/mikephil/charting/buffer/BarBuffer;->setBarSpace(F)V

    .line 66
    invoke-virtual {v6, p3}, Lcom/github/mikephil/charting/buffer/BarBuffer;->setDataSet(I)V

    .line 67
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/BarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->isInverted(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Z

    move-result v0

    invoke-virtual {v6, v0}, Lcom/github/mikephil/charting/buffer/BarBuffer;->setInverted(Z)V

    .line 69
    invoke-virtual {v6, v7}, Lcom/github/mikephil/charting/buffer/BarBuffer;->feed(Ljava/util/List;)V

    .line 71
    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    invoke-virtual {v11, v0}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 73
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_0
    invoke-virtual {v6}, Lcom/github/mikephil/charting/buffer/BarBuffer;->size()I

    move-result v0

    if-lt v8, v0, :cond_1

    .line 94
    :cond_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v1, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v2, v8, 0x3

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v1, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v2, v8, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    move-result v0

    if-nez v0, :cond_2

    .line 73
    :goto_1
    add-int/lit8 v8, v8, 0x4

    goto :goto_0

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->isDrawBarShadowEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v1

    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v2, v8, 0x1

    aget v2, v0, v2

    .line 83
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v3

    .line 84
    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v4, v8, 0x3

    aget v4, v0, v4

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mShadowPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 82
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    div-int/lit8 v1, v8, 0x4

    invoke-virtual {p2, v1}, Lcom/github/mikephil/charting/data/BarDataSet;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    aget v1, v0, v8

    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v2, v8, 0x1

    aget v2, v0, v2

    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v3, v8, 0x2

    aget v3, v0, v3

    .line 92
    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v4, v8, 0x3

    aget v4, v0, v4

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 91
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method protected drawValue(Landroid/graphics/Canvas;Ljava/lang/String;FF)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "xPos"    # F
    .param p4, "yPos"    # F

    .prologue
    .line 284
    iget v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mYOffset:F

    add-float/2addr v0, p4

    invoke-super {p0, p1, p2, p3, v0}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->drawValue(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    .line 285
    return-void
.end method

.method public drawValues(Landroid/graphics/Canvas;)V
    .locals 32
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->passesCheck()Z

    move-result v29

    if-eqz v29, :cond_0

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/github/mikephil/charting/data/BarData;->getDataSets()Ljava/util/List;

    move-result-object v8

    .line 103
    .local v8, "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BarDataSet;>;"
    const/high16 v29, 0x40a00000    # 5.0f

    invoke-static/range {v29 .. v29}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v23

    .line 104
    .local v23, "valueOffsetPlus":F
    const/16 v18, 0x0

    .line 105
    .local v18, "posOffset":F
    const/16 v17, 0x0

    .line 106
    .local v17, "negOffset":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->isDrawValueAboveBarEnabled()Z

    move-result v9

    .line 108
    .local v9, "drawValueAboveBar":Z
    if-eqz v9, :cond_1

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    move-object/from16 v29, v0

    sget-object v30, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual/range {v29 .. v30}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 113
    :goto_0
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v29

    move/from16 v0, v29

    if-lt v13, v0, :cond_2

    .line 259
    .end local v8    # "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BarDataSet;>;"
    .end local v9    # "drawValueAboveBar":Z
    .end local v13    # "i":I
    .end local v17    # "negOffset":F
    .end local v18    # "posOffset":F
    .end local v23    # "valueOffsetPlus":F
    :cond_0
    return-void

    .line 111
    .restart local v8    # "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BarDataSet;>;"
    .restart local v9    # "drawValueAboveBar":Z
    .restart local v17    # "negOffset":F
    .restart local v18    # "posOffset":F
    .restart local v23    # "valueOffsetPlus":F
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    move-object/from16 v29, v0

    sget-object v30, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual/range {v29 .. v30}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    .line 115
    .restart local v13    # "i":I
    :cond_2
    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/github/mikephil/charting/data/BarDataSet;

    .line 117
    .local v7, "dataSet":Lcom/github/mikephil/charting/data/BarDataSet;
    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/BarDataSet;->isDrawValuesEnabled()Z

    move-result v29

    if-nez v29, :cond_4

    .line 113
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 120
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    move-object/from16 v29, v0

    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/BarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v30

    invoke-interface/range {v29 .. v30}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->isInverted(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Z

    move-result v14

    .line 123
    .local v14, "isInverted":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->applyValueTextStyle(Lcom/github/mikephil/charting/data/DataSet;)V

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    move-object/from16 v29, v0

    const-string v30, "10"

    invoke-static/range {v29 .. v30}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    const/high16 v30, 0x40000000    # 2.0f

    div-float v29, v29, v30

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mYOffset:F

    .line 127
    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/BarDataSet;->getValueFormatter()Lcom/github/mikephil/charting/utils/ValueFormatter;

    move-result-object v12

    .line 129
    .local v12, "formatter":Lcom/github/mikephil/charting/utils/ValueFormatter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    move-object/from16 v29, v0

    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/BarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v30

    invoke-interface/range {v29 .. v30}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v19

    .line 131
    .local v19, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/BarDataSet;->getYVals()Ljava/util/List;

    move-result-object v11

    .line 133
    .local v11, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BarEntry;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v11, v13}, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->getTransformedValues(Lcom/github/mikephil/charting/utils/Transformer;Ljava/util/List;I)[F

    move-result-object v24

    .line 136
    .local v24, "valuePoints":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->isDrawValuesForWholeStackEnabled()Z

    move-result v29

    if-nez v29, :cond_b

    .line 138
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_2
    int-to-float v0, v15

    move/from16 v29, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v31

    mul-float v30, v30, v31

    cmpg-float v29, v29, v30

    if-gez v29, :cond_3

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v29, v0

    aget v30, v24, v15

    invoke-virtual/range {v29 .. v30}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsX(F)Z

    move-result v29

    if-nez v29, :cond_6

    .line 138
    :cond_5
    :goto_3
    add-int/lit8 v15, v15, 0x2

    goto :goto_2

    .line 143
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v29, v0

    add-int/lit8 v30, v15, 0x1

    aget v30, v24, v30

    invoke-virtual/range {v29 .. v30}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v29, v0

    add-int/lit8 v30, v15, 0x1

    aget v30, v24, v30

    invoke-virtual/range {v29 .. v30}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    move-result v29

    if-eqz v29, :cond_5

    .line 149
    div-int/lit8 v29, v15, 0x2

    move/from16 v0, v29

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-virtual/range {v29 .. v29}, Lcom/github/mikephil/charting/data/BarEntry;->getVal()F

    move-result v21

    .line 150
    .local v21, "val":F
    move/from16 v0, v21

    invoke-interface {v12, v0}, Lcom/github/mikephil/charting/utils/ValueFormatter;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v25

    .line 153
    .local v25, "valueText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/github/mikephil/charting/utils/Utils;->calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v26, v0

    .line 154
    .local v26, "valueTextWidth":F
    if-eqz v9, :cond_8

    move/from16 v18, v23

    .line 155
    :goto_4
    if-eqz v9, :cond_9

    add-float v29, v26, v23

    move/from16 v0, v29

    neg-float v0, v0

    move/from16 v17, v0

    .line 157
    :goto_5
    if-eqz v14, :cond_7

    .line 159
    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v29, v0

    sub-float v18, v29, v26

    .line 160
    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v29, v0

    sub-float v17, v29, v26

    .line 163
    :cond_7
    aget v30, v24, v15

    const/16 v29, 0x0

    cmpl-float v29, v21, v29

    if-ltz v29, :cond_a

    move/from16 v29, v18

    :goto_6
    add-float v29, v29, v30

    .line 164
    add-int/lit8 v30, v15, 0x1

    aget v30, v24, v30

    .line 163
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->drawValue(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    goto/16 :goto_3

    .line 154
    :cond_8
    add-float v29, v26, v23

    move/from16 v0, v29

    neg-float v0, v0

    move/from16 v18, v0

    goto :goto_4

    :cond_9
    move/from16 v17, v23

    .line 155
    goto :goto_5

    :cond_a
    move/from16 v29, v17

    .line 163
    goto :goto_6

    .line 170
    .end local v15    # "j":I
    .end local v21    # "val":F
    .end local v25    # "valueText":Ljava/lang/String;
    .end local v26    # "valueTextWidth":F
    :cond_b
    const/4 v15, 0x0

    .restart local v15    # "j":I
    :goto_7
    int-to-float v0, v15

    move/from16 v29, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v30, v0

    add-int/lit8 v30, v30, -0x1

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v31

    mul-float v30, v30, v31

    cmpg-float v29, v29, v30

    if-gez v29, :cond_3

    .line 172
    div-int/lit8 v29, v15, 0x2

    move/from16 v0, v29

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/github/mikephil/charting/data/BarEntry;

    .line 174
    .local v10, "e":Lcom/github/mikephil/charting/data/BarEntry;
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/BarEntry;->getVals()[F

    move-result-object v22

    .line 179
    .local v22, "vals":[F
    if-nez v22, :cond_12

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v29, v0

    aget v30, v24, v15

    invoke-virtual/range {v29 .. v30}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsX(F)Z

    move-result v29

    if-nez v29, :cond_d

    .line 170
    :cond_c
    :goto_8
    add-int/lit8 v15, v15, 0x2

    goto :goto_7

    .line 184
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v29, v0

    add-int/lit8 v30, v15, 0x1

    aget v30, v24, v30

    invoke-virtual/range {v29 .. v30}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v29, v0

    add-int/lit8 v30, v15, 0x1

    aget v30, v24, v30

    invoke-virtual/range {v29 .. v30}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    move-result v29

    if-eqz v29, :cond_c

    .line 190
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/BarEntry;->getVal()F

    move-result v21

    .line 191
    .restart local v21    # "val":F
    move/from16 v0, v21

    invoke-interface {v12, v0}, Lcom/github/mikephil/charting/utils/ValueFormatter;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v25

    .line 194
    .restart local v25    # "valueText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/github/mikephil/charting/utils/Utils;->calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v26, v0

    .line 195
    .restart local v26    # "valueTextWidth":F
    if-eqz v9, :cond_f

    move/from16 v18, v23

    .line 196
    :goto_9
    if-eqz v9, :cond_10

    add-float v29, v26, v23

    move/from16 v0, v29

    neg-float v0, v0

    move/from16 v17, v0

    .line 198
    :goto_a
    if-eqz v14, :cond_e

    .line 200
    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v29, v0

    sub-float v18, v29, v26

    .line 201
    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v29, v0

    sub-float v17, v29, v26

    .line 204
    :cond_e
    aget v30, v24, v15

    .line 205
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/BarEntry;->getVal()F

    move-result v29

    const/16 v31, 0x0

    cmpl-float v29, v29, v31

    if-ltz v29, :cond_11

    move/from16 v29, v18

    :goto_b
    add-float v29, v29, v30

    .line 206
    add-int/lit8 v30, v15, 0x1

    aget v30, v24, v30

    .line 204
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->drawValue(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    goto :goto_8

    .line 195
    :cond_f
    add-float v29, v26, v23

    move/from16 v0, v29

    neg-float v0, v0

    move/from16 v18, v0

    goto :goto_9

    :cond_10
    move/from16 v17, v23

    .line 196
    goto :goto_a

    :cond_11
    move/from16 v29, v17

    .line 205
    goto :goto_b

    .line 210
    .end local v21    # "val":F
    .end local v25    # "valueText":Ljava/lang/String;
    .end local v26    # "valueTextWidth":F
    :cond_12
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v29, v0

    mul-int/lit8 v29, v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [F

    move-object/from16 v20, v0

    .line 211
    .local v20, "transformed":[F
    const/4 v6, 0x0

    .line 212
    .local v6, "cnt":I
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/BarEntry;->getVal()F

    move-result v5

    .line 214
    .local v5, "add":F
    const/16 v16, 0x0

    .local v16, "k":I
    :goto_c
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v16

    move/from16 v1, v29

    if-lt v0, v1, :cond_15

    .line 221
    invoke-virtual/range {v19 .. v20}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 223
    const/16 v16, 0x0

    :goto_d
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v16

    move/from16 v1, v29

    if-ge v0, v1, :cond_c

    .line 225
    div-int/lit8 v29, v16, 0x2

    aget v21, v22, v29

    .line 226
    .restart local v21    # "val":F
    move/from16 v0, v21

    invoke-interface {v12, v0}, Lcom/github/mikephil/charting/utils/ValueFormatter;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v25

    .line 229
    .restart local v25    # "valueText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/github/mikephil/charting/utils/Utils;->calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v26, v0

    .line 230
    .restart local v26    # "valueTextWidth":F
    if-eqz v9, :cond_16

    move/from16 v18, v23

    .line 231
    :goto_e
    if-eqz v9, :cond_17

    add-float v29, v26, v23

    move/from16 v0, v29

    neg-float v0, v0

    move/from16 v17, v0

    .line 233
    :goto_f
    if-eqz v14, :cond_13

    .line 235
    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v29, v0

    sub-float v18, v29, v26

    .line 236
    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v29, v0

    sub-float v17, v29, v26

    .line 239
    :cond_13
    aget v30, v20, v16

    .line 240
    const/16 v29, 0x0

    cmpl-float v29, v21, v29

    if-ltz v29, :cond_18

    move/from16 v29, v18

    .line 239
    :goto_10
    add-float v27, v30, v29

    .line 241
    .local v27, "x":F
    add-int/lit8 v29, v15, 0x1

    aget v28, v24, v29

    .line 243
    .local v28, "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsX(F)Z

    move-result v29

    if-nez v29, :cond_19

    .line 223
    :cond_14
    :goto_11
    add-int/lit8 v16, v16, 0x2

    goto :goto_d

    .line 216
    .end local v21    # "val":F
    .end local v25    # "valueText":Ljava/lang/String;
    .end local v26    # "valueTextWidth":F
    .end local v27    # "x":F
    .end local v28    # "y":F
    :cond_15
    aget v29, v22, v6

    sub-float v5, v5, v29

    .line 217
    aget v29, v22, v6

    add-float v29, v29, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v30

    mul-float v29, v29, v30

    aput v29, v20, v16

    .line 218
    add-int/lit8 v6, v6, 0x1

    .line 214
    add-int/lit8 v16, v16, 0x2

    goto/16 :goto_c

    .line 230
    .restart local v21    # "val":F
    .restart local v25    # "valueText":Ljava/lang/String;
    .restart local v26    # "valueTextWidth":F
    :cond_16
    add-float v29, v26, v23

    move/from16 v0, v29

    neg-float v0, v0

    move/from16 v18, v0

    goto :goto_e

    :cond_17
    move/from16 v17, v23

    .line 231
    goto :goto_f

    :cond_18
    move/from16 v29, v17

    .line 240
    goto :goto_10

    .line 246
    .restart local v27    # "x":F
    .restart local v28    # "y":F
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    move-result v29

    if-eqz v29, :cond_c

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    move-result v29

    if-eqz v29, :cond_14

    .line 252
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->drawValue(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    goto :goto_11
.end method

.method public getTransformedValues(Lcom/github/mikephil/charting/utils/Transformer;Ljava/util/List;I)[F
    .locals 2
    .param p1, "trans"    # Lcom/github/mikephil/charting/utils/Transformer;
    .param p3, "dataSetIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/mikephil/charting/utils/Transformer;",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/data/BarEntry;",
            ">;I)[F"
        }
    .end annotation

    .prologue
    .line 278
    .line 279
    .local p2, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BarEntry;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v1

    .line 278
    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/github/mikephil/charting/utils/Transformer;->generateTransformedValuesHorizontalBarChart(Ljava/util/List;ILcom/github/mikephil/charting/data/BarData;F)[F

    move-result-object v0

    return-object v0
.end method

.method public initBuffers()V
    .locals 9

    .prologue
    .line 40
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v0

    .line 41
    .local v0, "barData":Lcom/github/mikephil/charting/data/BarData;
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v3

    new-array v3, v3, [Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;

    iput-object v3, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    .line 43
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    array-length v3, v3

    if-lt v1, v3, :cond_0

    .line 49
    return-void

    .line 44
    :cond_0
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/BarData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/BarDataSet;

    .line 45
    .local v2, "set":Lcom/github/mikephil/charting/data/BarDataSet;
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    new-instance v4, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarDataSet;->getValueCount()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarDataSet;->getStackSize()I

    move-result v6

    mul-int/2addr v5, v6

    .line 46
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getGroupSpace()F

    move-result v6

    .line 47
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v7

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarDataSet;->isStacked()Z

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;-><init>(IFIZ)V

    .line 45
    aput-object v4, v3, v1

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected passesCheck()Z
    .locals 3

    .prologue
    .line 289
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getYValCount()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getMaxVisibleCount()I

    move-result v1

    int-to-float v1, v1

    .line 290
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleY()F

    move-result v2

    mul-float/2addr v1, v2

    .line 289
    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected prepareBarHighlight(FFFFLcom/github/mikephil/charting/utils/Transformer;)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "barspaceHalf"    # F
    .param p4, "from"    # F
    .param p5, "trans"    # Lcom/github/mikephil/charting/utils/Transformer;

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    .line 265
    sub-float v4, p1, v5

    add-float v3, v4, p3

    .line 266
    .local v3, "top":F
    add-float v4, p1, v5

    sub-float v0, v4, p3

    .line 267
    .local v0, "bottom":F
    cmpl-float v4, p2, p4

    if-ltz v4, :cond_0

    move v1, p2

    .line 268
    .local v1, "left":F
    :goto_0
    cmpg-float v4, p2, p4

    if-gtz v4, :cond_1

    move v2, p2

    .line 270
    .local v2, "right":F
    :goto_1
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 272
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v5

    invoke-virtual {p5, v4, v5}, Lcom/github/mikephil/charting/utils/Transformer;->rectValueToPixelHorizontal(Landroid/graphics/RectF;F)V

    .line 273
    return-void

    .end local v1    # "left":F
    .end local v2    # "right":F
    :cond_0
    move v1, p4

    .line 267
    goto :goto_0

    .restart local v1    # "left":F
    :cond_1
    move v2, p4

    .line 268
    goto :goto_1
.end method
