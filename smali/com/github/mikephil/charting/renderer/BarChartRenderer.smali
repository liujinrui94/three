.class public Lcom/github/mikephil/charting/renderer/BarChartRenderer;
.super Lcom/github/mikephil/charting/renderer/DataRenderer;
.source "BarChartRenderer.java"


# instance fields
.field protected mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

.field protected mBarRect:Landroid/graphics/RectF;

.field protected mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

.field protected mShadowPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/interfaces/BarDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 4
    .param p1, "chart"    # Lcom/github/mikephil/charting/interfaces/BarDataProvider;
    .param p2, "animator"    # Lcom/github/mikephil/charting/animation/ChartAnimator;
    .param p3, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    invoke-direct {p0, p2, p3}, Lcom/github/mikephil/charting/renderer/DataRenderer;-><init>(Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 29
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarRect:Landroid/graphics/RectF;

    .line 38
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    .line 41
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 42
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mShadowPaint:Landroid/graphics/Paint;

    .line 47
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mShadowPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 48
    return-void
.end method


# virtual methods
.method public drawData(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 67
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v0

    .line 69
    .local v0, "barData":Lcom/github/mikephil/charting/data/BarData;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 77
    return-void

    .line 71
    :cond_0
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/BarData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/BarDataSet;

    .line 73
    .local v2, "set":Lcom/github/mikephil/charting/data/BarDataSet;
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarDataSet;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 74
    invoke-virtual {p0, p1, v2, v1}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/BarDataSet;I)V

    .line 69
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/BarDataSet;I)V
    .locals 12
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/data/BarDataSet;
    .param p3, "index"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/BarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v11

    .line 83
    .local v11, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/BarDataSet;->getBarShadowColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v9

    .line 86
    .local v9, "phaseX":F
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v10

    .line 88
    .local v10, "phaseY":F
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/BarDataSet;->getYVals()Ljava/util/List;

    move-result-object v7

    .line 91
    .local v7, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BarEntry;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    aget-object v6, v0, p3

    .line 92
    .local v6, "buffer":Lcom/github/mikephil/charting/buffer/BarBuffer;
    invoke-virtual {v6, v9, v10}, Lcom/github/mikephil/charting/buffer/BarBuffer;->setPhases(FF)V

    .line 93
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/BarDataSet;->getBarSpace()F

    move-result v0

    invoke-virtual {v6, v0}, Lcom/github/mikephil/charting/buffer/BarBuffer;->setBarSpace(F)V

    .line 94
    invoke-virtual {v6, p3}, Lcom/github/mikephil/charting/buffer/BarBuffer;->setDataSet(I)V

    .line 95
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/BarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->isInverted(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Z

    move-result v0

    invoke-virtual {v6, v0}, Lcom/github/mikephil/charting/buffer/BarBuffer;->setInverted(Z)V

    .line 97
    invoke-virtual {v6, v7}, Lcom/github/mikephil/charting/buffer/BarBuffer;->feed(Ljava/util/List;)V

    .line 99
    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    invoke-virtual {v11, v0}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 102
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/BarDataSet;->getColors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    .line 104
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_0
    invoke-virtual {v6}, Lcom/github/mikephil/charting/buffer/BarBuffer;->size()I

    move-result v0

    if-lt v8, v0, :cond_1

    .line 147
    :cond_0
    return-void

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v1, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v2, v8, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v0

    if-nez v0, :cond_2

    .line 104
    :goto_1
    add-int/lit8 v8, v8, 0x4

    goto :goto_0

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v1, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    aget v1, v1, v8

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->isDrawBarShadowEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 113
    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    aget v1, v0, v8

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v2

    .line 114
    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v3, v8, 0x2

    aget v3, v0, v3

    .line 115
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v4

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mShadowPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 113
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 121
    :cond_3
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    div-int/lit8 v1, v8, 0x4

    invoke-virtual {p2, v1}, Lcom/github/mikephil/charting/data/BarDataSet;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    aget v1, v0, v8

    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v2, v8, 0x1

    aget v2, v0, v2

    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v3, v8, 0x2

    aget v3, v0, v3

    .line 123
    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v4, v8, 0x3

    aget v4, v0, v4

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 122
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 127
    .end local v8    # "j":I
    :cond_4
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/BarDataSet;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    const/4 v8, 0x0

    .restart local v8    # "j":I
    :goto_2
    invoke-virtual {v6}, Lcom/github/mikephil/charting/buffer/BarBuffer;->size()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v1, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v2, v8, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v0

    if-nez v0, :cond_5

    .line 129
    :goto_3
    add-int/lit8 v8, v8, 0x4

    goto :goto_2

    .line 134
    :cond_5
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v1, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    aget v1, v1, v8

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->isDrawBarShadowEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 138
    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    aget v1, v0, v8

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v2

    .line 139
    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v3, v8, 0x2

    aget v3, v0, v3

    .line 140
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v4

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mShadowPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 138
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 143
    :cond_6
    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    aget v1, v0, v8

    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v2, v8, 0x1

    aget v2, v0, v2

    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v3, v8, 0x2

    aget v3, v0, v3

    .line 144
    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v4, v8, 0x3

    aget v4, v0, v4

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 143
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_3
.end method

.method public drawExtras(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 312
    return-void
.end method

.method public drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/utils/Highlight;)V
    .locals 21
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "indices"    # [Lcom/github/mikephil/charting/utils/Highlight;

    .prologue
    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v18

    .line 319
    .local v18, "setCount":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move-object/from16 v0, p2

    array-length v2, v0

    if-lt v13, v2, :cond_0

    .line 380
    return-void

    .line 321
    :cond_0
    aget-object v12, p2, v13

    .line 322
    .local v12, "h":Lcom/github/mikephil/charting/utils/Highlight;
    invoke-virtual {v12}, Lcom/github/mikephil/charting/utils/Highlight;->getXIndex()I

    move-result v14

    .line 324
    .local v14, "index":I
    invoke-virtual {v12}, Lcom/github/mikephil/charting/utils/Highlight;->getDataSetIndex()I

    move-result v9

    .line 325
    .local v9, "dataSetIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/github/mikephil/charting/data/BarData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v17

    check-cast v17, Lcom/github/mikephil/charting/data/BarDataSet;

    .line 327
    .local v17, "set":Lcom/github/mikephil/charting/data/BarDataSet;
    if-nez v17, :cond_2

    .line 319
    :cond_1
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 330
    :cond_2
    invoke-virtual/range {v17 .. v17}, Lcom/github/mikephil/charting/data/BarDataSet;->getBarSpace()F

    move-result v2

    const/high16 v19, 0x40000000    # 2.0f

    div-float v5, v2, v19

    .line 332
    .local v5, "barspaceHalf":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-virtual/range {v17 .. v17}, Lcom/github/mikephil/charting/data/BarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v2, v0}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v7

    .line 334
    .local v7, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v17 .. v17}, Lcom/github/mikephil/charting/data/BarDataSet;->getHighLightColor()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v17 .. v17}, Lcom/github/mikephil/charting/data/BarDataSet;->getHighLightAlpha()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarData;->getYValCount()I

    move-result v2

    if-ge v14, v2, :cond_1

    if-ltz v14, :cond_1

    .line 339
    int-to-float v2, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getXChartMax()F

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v20

    mul-float v19, v19, v20

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    cmpg-float v2, v2, v19

    if-gez v2, :cond_1

    .line 341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/github/mikephil/charting/data/BarData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/BarDataSet;

    .line 342
    invoke-virtual {v2, v14}, Lcom/github/mikephil/charting/data/BarDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v10

    check-cast v10, Lcom/github/mikephil/charting/data/BarEntry;

    .line 344
    .local v10, "e":Lcom/github/mikephil/charting/data/BarEntry;
    if-eqz v10, :cond_1

    .line 347
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarData;->getGroupSpace()F

    move-result v11

    .line 348
    .local v11, "groupspace":F
    invoke-virtual {v12}, Lcom/github/mikephil/charting/utils/Highlight;->getStackIndex()I

    move-result v2

    if-gez v2, :cond_3

    const/4 v15, 0x0

    .line 351
    .local v15, "isStack":Z
    :goto_2
    mul-int v2, v14, v18

    add-int/2addr v2, v9

    int-to-float v2, v2

    const/high16 v19, 0x40000000    # 2.0f

    div-float v19, v11, v19

    add-float v2, v2, v19

    .line 352
    int-to-float v0, v14

    move/from16 v19, v0

    mul-float v19, v19, v11

    .line 351
    add-float v3, v2, v19

    .line 353
    .local v3, "x":F
    if-eqz v15, :cond_4

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/BarEntry;->getVals()[F

    move-result-object v2

    invoke-virtual {v12}, Lcom/github/mikephil/charting/utils/Highlight;->getStackIndex()I

    move-result v19

    aget v2, v2, v19

    .line 354
    invoke-virtual {v12}, Lcom/github/mikephil/charting/utils/Highlight;->getStackIndex()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/github/mikephil/charting/data/BarEntry;->getBelowSum(I)F

    move-result v19

    add-float v4, v2, v19

    .line 357
    .local v4, "y":F
    :goto_3
    if-eqz v15, :cond_5

    invoke-virtual {v12}, Lcom/github/mikephil/charting/utils/Highlight;->getStackIndex()I

    move-result v2

    invoke-virtual {v10, v2}, Lcom/github/mikephil/charting/data/BarEntry;->getBelowSum(I)F

    move-result v6

    .local v6, "from":F
    :goto_4
    move-object/from16 v2, p0

    .line 359
    invoke-virtual/range {v2 .. v7}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->prepareBarHighlight(FFFFLcom/github/mikephil/charting/utils/Transformer;)V

    .line 361
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->isDrawHighlightArrowEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    const/16 v19, 0xff

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v2

    const v19, 0x3d8f5c29    # 0.07f

    mul-float v16, v2, v19

    .line 370
    .local v16, "offsetY":F
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    .line 371
    .local v8, "arrow":Landroid/graphics/Path;
    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    const v19, 0x3e99999a    # 0.3f

    mul-float v19, v19, v16

    add-float v19, v19, v4

    move/from16 v0, v19

    invoke-virtual {v8, v2, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 372
    const v2, 0x3e4ccccd    # 0.2f

    add-float/2addr v2, v3

    add-float v19, v4, v16

    move/from16 v0, v19

    invoke-virtual {v8, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 373
    const v2, 0x3f4ccccd    # 0.8f

    add-float/2addr v2, v3

    add-float v19, v4, v16

    move/from16 v0, v19

    invoke-virtual {v8, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 375
    invoke-virtual {v7, v8}, Lcom/github/mikephil/charting/utils/Transformer;->pathValueToPixel(Landroid/graphics/Path;)V

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 348
    .end local v3    # "x":F
    .end local v4    # "y":F
    .end local v6    # "from":F
    .end local v8    # "arrow":Landroid/graphics/Path;
    .end local v15    # "isStack":Z
    .end local v16    # "offsetY":F
    :cond_3
    const/4 v15, 0x1

    goto/16 :goto_2

    .line 354
    .restart local v3    # "x":F
    .restart local v15    # "isStack":Z
    :cond_4
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/BarEntry;->getVal()F

    move-result v4

    goto/16 :goto_3

    .line 357
    .restart local v4    # "y":F
    :cond_5
    const/4 v6, 0x0

    goto :goto_4
.end method

.method protected drawValue(Landroid/graphics/Canvas;Ljava/lang/String;FF)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "xPos"    # F
    .param p4, "yPos"    # F

    .prologue
    .line 306
    .line 307
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    .line 306
    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 308
    return-void
.end method

.method public drawValues(Landroid/graphics/Canvas;)V
    .locals 33
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->passesCheck()Z

    move-result v28

    if-eqz v28, :cond_0

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/github/mikephil/charting/data/BarData;->getDataSets()Ljava/util/List;

    move-result-object v8

    .line 180
    .local v8, "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BarDataSet;>;"
    const/high16 v28, 0x40a00000    # 5.0f

    invoke-static/range {v28 .. v28}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v23

    .line 181
    .local v23, "valueOffsetPlus":F
    const/16 v18, 0x0

    .line 182
    .local v18, "posOffset":F
    const/16 v17, 0x0

    .line 183
    .local v17, "negOffset":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->isDrawValueAboveBarEnabled()Z

    move-result v9

    .line 185
    .local v9, "drawValueAboveBar":Z
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v28

    move/from16 v0, v28

    if-lt v13, v0, :cond_1

    .line 294
    .end local v8    # "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BarDataSet;>;"
    .end local v9    # "drawValueAboveBar":Z
    .end local v13    # "i":I
    .end local v17    # "negOffset":F
    .end local v18    # "posOffset":F
    .end local v23    # "valueOffsetPlus":F
    :cond_0
    return-void

    .line 187
    .restart local v8    # "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BarDataSet;>;"
    .restart local v9    # "drawValueAboveBar":Z
    .restart local v13    # "i":I
    .restart local v17    # "negOffset":F
    .restart local v18    # "posOffset":F
    .restart local v23    # "valueOffsetPlus":F
    :cond_1
    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/github/mikephil/charting/data/BarDataSet;

    .line 189
    .local v7, "dataSet":Lcom/github/mikephil/charting/data/BarDataSet;
    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/BarDataSet;->isDrawValuesEnabled()Z

    move-result v28

    if-nez v28, :cond_3

    .line 185
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 192
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    move-object/from16 v28, v0

    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/BarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->isInverted(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Z

    move-result v14

    .line 196
    .local v14, "isInverted":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    const-string v29, "8"

    invoke-static/range {v28 .. v29}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v25, v0

    .line 197
    .local v25, "valueTextHeight":F
    if-eqz v9, :cond_6

    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v18, v0

    .line 198
    :goto_1
    if-eqz v9, :cond_7

    add-float v17, v25, v23

    .line 200
    :goto_2
    if-eqz v14, :cond_4

    .line 202
    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v28, v0

    sub-float v18, v28, v25

    .line 203
    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v28, v0

    sub-float v17, v28, v25

    .line 207
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->applyValueTextStyle(Lcom/github/mikephil/charting/data/DataSet;)V

    .line 209
    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/BarDataSet;->getValueFormatter()Lcom/github/mikephil/charting/utils/ValueFormatter;

    move-result-object v12

    .line 211
    .local v12, "formatter":Lcom/github/mikephil/charting/utils/ValueFormatter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    move-object/from16 v28, v0

    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/BarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v19

    .line 213
    .local v19, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/BarDataSet;->getYVals()Ljava/util/List;

    move-result-object v11

    .line 215
    .local v11, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BarEntry;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v11, v13}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->getTransformedValues(Lcom/github/mikephil/charting/utils/Transformer;Ljava/util/List;I)[F

    move-result-object v24

    .line 218
    .local v24, "valuePoints":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->isDrawValuesForWholeStackEnabled()Z

    move-result v28

    if-nez v28, :cond_a

    .line 220
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_3
    int-to-float v0, v15

    move/from16 v28, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v30

    mul-float v29, v29, v30

    cmpg-float v28, v28, v29

    if-gez v28, :cond_2

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v28, v0

    aget v29, v24, v15

    invoke-virtual/range {v28 .. v29}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v28, v0

    add-int/lit8 v29, v15, 0x1

    aget v29, v24, v29

    invoke-virtual/range {v28 .. v29}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v28

    if-eqz v28, :cond_5

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v28, v0

    aget v29, v24, v15

    invoke-virtual/range {v28 .. v29}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v28

    if-nez v28, :cond_8

    .line 220
    :cond_5
    :goto_4
    add-int/lit8 v15, v15, 0x2

    goto :goto_3

    .line 197
    .end local v11    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BarEntry;>;"
    .end local v12    # "formatter":Lcom/github/mikephil/charting/utils/ValueFormatter;
    .end local v15    # "j":I
    .end local v19    # "trans":Lcom/github/mikephil/charting/utils/Transformer;
    .end local v24    # "valuePoints":[F
    :cond_6
    add-float v18, v25, v23

    goto/16 :goto_1

    .line 198
    :cond_7
    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v17, v0

    goto/16 :goto_2

    .line 229
    .restart local v11    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BarEntry;>;"
    .restart local v12    # "formatter":Lcom/github/mikephil/charting/utils/ValueFormatter;
    .restart local v15    # "j":I
    .restart local v19    # "trans":Lcom/github/mikephil/charting/utils/Transformer;
    .restart local v24    # "valuePoints":[F
    :cond_8
    div-int/lit8 v28, v15, 0x2

    move/from16 v0, v28

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-virtual/range {v28 .. v28}, Lcom/github/mikephil/charting/data/BarEntry;->getVal()F

    move-result v21

    .line 231
    .local v21, "val":F
    move/from16 v0, v21

    invoke-interface {v12, v0}, Lcom/github/mikephil/charting/utils/ValueFormatter;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v29

    aget v30, v24, v15

    .line 232
    add-int/lit8 v28, v15, 0x1

    aget v31, v24, v28

    const/16 v28, 0x0

    cmpl-float v28, v21, v28

    if-ltz v28, :cond_9

    move/from16 v28, v18

    :goto_5
    add-float v28, v28, v31

    .line 231
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->drawValue(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    goto :goto_4

    :cond_9
    move/from16 v28, v17

    .line 232
    goto :goto_5

    .line 238
    .end local v15    # "j":I
    .end local v21    # "val":F
    :cond_a
    const/4 v15, 0x0

    .restart local v15    # "j":I
    :goto_6
    int-to-float v0, v15

    move/from16 v28, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v29, v0

    add-int/lit8 v29, v29, -0x1

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v30

    mul-float v29, v29, v30

    cmpg-float v28, v28, v29

    if-gez v28, :cond_2

    .line 240
    div-int/lit8 v28, v15, 0x2

    move/from16 v0, v28

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/github/mikephil/charting/data/BarEntry;

    .line 242
    .local v10, "e":Lcom/github/mikephil/charting/data/BarEntry;
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/BarEntry;->getVals()[F

    move-result-object v22

    .line 247
    .local v22, "vals":[F
    if-nez v22, :cond_e

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v28, v0

    aget v29, v24, v15

    invoke-virtual/range {v28 .. v29}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v28, v0

    add-int/lit8 v29, v15, 0x1

    aget v29, v24, v29

    invoke-virtual/range {v28 .. v29}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v28

    if-eqz v28, :cond_b

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v28, v0

    aget v29, v24, v15

    invoke-virtual/range {v28 .. v29}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v28

    if-nez v28, :cond_c

    .line 238
    :cond_b
    :goto_7
    add-int/lit8 v15, v15, 0x2

    goto :goto_6

    .line 256
    :cond_c
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/BarEntry;->getVal()F

    move-result v28

    move/from16 v0, v28

    invoke-interface {v12, v0}, Lcom/github/mikephil/charting/utils/ValueFormatter;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v29

    aget v30, v24, v15

    .line 257
    add-int/lit8 v28, v15, 0x1

    aget v31, v24, v28

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/BarEntry;->getVal()F

    move-result v28

    const/16 v32, 0x0

    cmpl-float v28, v28, v32

    if-ltz v28, :cond_d

    move/from16 v28, v18

    :goto_8
    add-float v28, v28, v31

    .line 256
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->drawValue(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    goto :goto_7

    :cond_d
    move/from16 v28, v17

    .line 257
    goto :goto_8

    .line 261
    :cond_e
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v28, v0

    mul-int/lit8 v28, v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v20, v0

    .line 262
    .local v20, "transformed":[F
    const/4 v6, 0x0

    .line 263
    .local v6, "cnt":I
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/BarEntry;->getVal()F

    move-result v5

    .line 265
    .local v5, "add":F
    const/16 v16, 0x0

    .local v16, "k":I
    :goto_9
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v16

    move/from16 v1, v28

    if-lt v0, v1, :cond_10

    .line 272
    invoke-virtual/range {v19 .. v20}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 274
    const/16 v16, 0x0

    :goto_a
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v16

    move/from16 v1, v28

    if-ge v0, v1, :cond_b

    .line 276
    aget v26, v24, v15

    .line 277
    .local v26, "x":F
    add-int/lit8 v28, v16, 0x1

    aget v29, v20, v28

    .line 278
    div-int/lit8 v28, v16, 0x2

    aget v28, v22, v28

    const/16 v30, 0x0

    cmpl-float v28, v28, v30

    if-ltz v28, :cond_11

    move/from16 v28, v18

    .line 277
    :goto_b
    add-float v27, v29, v28

    .line 280
    .local v27, "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v28

    if-eqz v28, :cond_b

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v28

    if-eqz v28, :cond_f

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v28

    if-nez v28, :cond_12

    .line 274
    :cond_f
    :goto_c
    add-int/lit8 v16, v16, 0x2

    goto :goto_a

    .line 267
    .end local v26    # "x":F
    .end local v27    # "y":F
    :cond_10
    aget v28, v22, v6

    sub-float v5, v5, v28

    .line 268
    add-int/lit8 v28, v16, 0x1

    aget v29, v22, v6

    add-float v29, v29, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v30

    mul-float v29, v29, v30

    aput v29, v20, v28

    .line 269
    add-int/lit8 v6, v6, 0x1

    .line 265
    add-int/lit8 v16, v16, 0x2

    goto :goto_9

    .restart local v26    # "x":F
    :cond_11
    move/from16 v28, v17

    .line 278
    goto :goto_b

    .line 287
    .restart local v27    # "y":F
    :cond_12
    div-int/lit8 v28, v16, 0x2

    aget v28, v22, v28

    move/from16 v0, v28

    invoke-interface {v12, v0}, Lcom/github/mikephil/charting/utils/ValueFormatter;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->drawValue(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    goto :goto_c
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
    .line 384
    .line 385
    .local p2, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BarEntry;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v0

    .line 386
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v1

    .line 384
    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/github/mikephil/charting/utils/Transformer;->generateTransformedValuesBarChart(Ljava/util/List;ILcom/github/mikephil/charting/data/BarData;F)[F

    move-result-object v0

    return-object v0
.end method

.method public initBuffers()V
    .locals 9

    .prologue
    .line 53
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v0

    .line 54
    .local v0, "barData":Lcom/github/mikephil/charting/data/BarData;
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v3

    new-array v3, v3, [Lcom/github/mikephil/charting/buffer/BarBuffer;

    iput-object v3, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    .line 56
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    array-length v3, v3

    if-lt v1, v3, :cond_0

    .line 62
    return-void

    .line 57
    :cond_0
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/BarData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/BarDataSet;

    .line 58
    .local v2, "set":Lcom/github/mikephil/charting/data/BarDataSet;
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    new-instance v4, Lcom/github/mikephil/charting/buffer/BarBuffer;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarDataSet;->getValueCount()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarDataSet;->getStackSize()I

    move-result v6

    mul-int/2addr v5, v6

    .line 59
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getGroupSpace()F

    move-result v6

    .line 60
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v7

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarDataSet;->isStacked()Z

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/github/mikephil/charting/buffer/BarBuffer;-><init>(IFIZ)V

    .line 58
    aput-object v4, v3, v1

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected passesCheck()Z
    .locals 3

    .prologue
    .line 390
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getYValCount()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getMaxVisibleCount()I

    move-result v1

    int-to-float v1, v1

    .line 391
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleX()F

    move-result v2

    mul-float/2addr v1, v2

    .line 390
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
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "barspaceHalf"    # F
    .param p4, "from"    # F
    .param p5, "trans"    # Lcom/github/mikephil/charting/utils/Transformer;

    .prologue
    .line 161
    const/high16 v0, 0x3f000000    # 0.5f

    .line 163
    .local v0, "barWidth":F
    sub-float v5, p1, v0

    add-float v2, v5, p3

    .line 164
    .local v2, "left":F
    add-float v5, p1, v0

    sub-float v3, v5, p3

    .line 165
    .local v3, "right":F
    cmpl-float v5, p2, p4

    if-ltz v5, :cond_0

    move v4, p2

    .line 166
    .local v4, "top":F
    :goto_0
    cmpg-float v5, p2, p4

    if-gtz v5, :cond_1

    move v1, p2

    .line 168
    .local v1, "bottom":F
    :goto_1
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarRect:Landroid/graphics/RectF;

    invoke-virtual {v5, v2, v4, v3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 170
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarRect:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v6

    invoke-virtual {p5, v5, v6}, Lcom/github/mikephil/charting/utils/Transformer;->rectValueToPixel(Landroid/graphics/RectF;F)V

    .line 171
    return-void

    .end local v1    # "bottom":F
    .end local v4    # "top":F
    :cond_0
    move v4, p4

    .line 165
    goto :goto_0

    .restart local v4    # "top":F
    :cond_1
    move v1, p4

    .line 166
    goto :goto_1
.end method
