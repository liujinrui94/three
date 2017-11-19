.class public Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;
.super Lcom/github/mikephil/charting/renderer/DataRenderer;
.source "CandleStickChartRenderer.java"


# instance fields
.field private mBodyBuffers:[Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;

.field protected mChart:Lcom/github/mikephil/charting/interfaces/CandleDataProvider;

.field private mShadowBuffers:[Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/interfaces/CandleDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 0
    .param p1, "chart"    # Lcom/github/mikephil/charting/interfaces/CandleDataProvider;
    .param p2, "animator"    # Lcom/github/mikephil/charting/animation/ChartAnimator;
    .param p3, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .prologue
    .line 33
    invoke-direct {p0, p2, p3}, Lcom/github/mikephil/charting/renderer/DataRenderer;-><init>(Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 34
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/CandleDataProvider;

    .line 35
    return-void
.end method


# virtual methods
.method public drawData(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 53
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/CandleDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/CandleDataProvider;->getCandleData()Lcom/github/mikephil/charting/data/CandleData;

    move-result-object v0

    .line 55
    .local v0, "candleData":Lcom/github/mikephil/charting/data/CandleData;
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleData;->getDataSets()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 60
    return-void

    .line 55
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/CandleDataSet;

    .line 57
    .local v1, "set":Lcom/github/mikephil/charting/data/CandleDataSet;
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/CandleDataSet;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 58
    invoke-virtual {p0, p1, v1}, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/CandleDataSet;)V

    goto :goto_0
.end method

.method protected drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/CandleDataSet;)V
    .locals 30
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/data/CandleDataSet;

    .prologue
    .line 64
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/CandleDataProvider;

    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v9

    invoke-interface {v4, v9}, Lcom/github/mikephil/charting/interfaces/CandleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v29

    .line 66
    .local v29, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v24

    .line 67
    .local v24, "phaseX":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v25

    .line 69
    .local v25, "phaseY":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/CandleDataProvider;

    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/CandleDataProvider;->getCandleData()Lcom/github/mikephil/charting/data/CandleData;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/github/mikephil/charting/data/CandleData;->getIndexOfDataSet(Lcom/github/mikephil/charting/data/DataSet;)I

    move-result v16

    .line 71
    .local v16, "dataSetIndex":I
    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getYVals()Ljava/util/List;

    move-result-object v18

    .line 73
    .local v18, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/CandleEntry;>;"
    move-object/from16 v0, p0

    iget v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mMinX:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/data/CandleDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v19

    .line 74
    .local v19, "entryFrom":Lcom/github/mikephil/charting/data/Entry;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mMaxX:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/data/CandleDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v20

    .line 76
    .local v20, "entryTo":Lcom/github/mikephil/charting/data/Entry;
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/CandleDataSet;->getEntryPosition(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v4

    const/4 v9, 0x0

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 77
    .local v23, "minx":I
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/CandleDataSet;->getEntryPosition(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v22

    .line 79
    .local v22, "maxx":I
    sub-int v4, v22, v23

    mul-int/lit8 v26, v4, 0x4

    .line 80
    .local v26, "range":I
    sub-int v4, v22, v23

    int-to-float v4, v4

    mul-float v4, v4, v24

    move/from16 v0, v23

    int-to-float v9, v0

    add-float/2addr v4, v9

    float-to-double v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v0, v10

    move/from16 v28, v0

    .line 82
    .local v28, "to":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mShadowBuffers:[Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;

    aget-object v27, v4, v16

    .line 83
    .local v27, "shadowBuffer":Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;
    move-object/from16 v0, v27

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;->setPhases(FF)V

    .line 84
    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;->limitFrom(I)V

    .line 85
    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;->limitTo(I)V

    .line 86
    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;->feed(Ljava/util/List;)V

    .line 88
    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;->buffer:[F

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 90
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 93
    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getShadowColor()I

    move-result v4

    const/4 v9, -0x1

    if-ne v4, v9, :cond_0

    .line 94
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getColor()I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getShadowWidth()F

    move-result v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 102
    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;->buffer:[F

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v4, v9, v1, v10}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 104
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mBodyBuffers:[Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;

    aget-object v15, v4, v16

    .line 105
    .local v15, "bodyBuffer":Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;
    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getBodySpace()F

    move-result v4

    invoke-virtual {v15, v4}, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->setBodySpace(F)V

    .line 106
    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->setPhases(FF)V

    .line 107
    move/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->limitFrom(I)V

    .line 108
    move/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->limitTo(I)V

    .line 109
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->feed(Ljava/util/List;)V

    .line 111
    iget-object v4, v15, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->buffer:[F

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 114
    const/16 v21, 0x0

    .local v21, "j":I
    :goto_1
    move/from16 v0, v21

    move/from16 v1, v26

    if-lt v0, v1, :cond_1

    .line 158
    return-void

    .line 96
    .end local v15    # "bodyBuffer":Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;
    .end local v21    # "j":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getShadowColor()I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 117
    .restart local v15    # "bodyBuffer":Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;
    .restart local v21    # "j":I
    :cond_1
    div-int/lit8 v4, v21, 0x4

    add-int v4, v4, v23

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/github/mikephil/charting/data/CandleEntry;

    .line 119
    .local v17, "e":Lcom/github/mikephil/charting/data/CandleEntry;
    invoke-virtual/range {v17 .. v17}, Lcom/github/mikephil/charting/data/CandleEntry;->getXIndex()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v9, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mMinX:I

    int-to-float v9, v9

    move/from16 v0, v28

    int-to-float v10, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9, v10}, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->fitsBounds(FFF)Z

    move-result v4

    if-nez v4, :cond_2

    .line 114
    :goto_2
    add-int/lit8 v21, v21, 0x4

    goto :goto_1

    .line 122
    :cond_2
    iget-object v4, v15, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->buffer:[F

    aget v5, v4, v21

    .line 123
    .local v5, "leftBody":F
    iget-object v4, v15, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->buffer:[F

    add-int/lit8 v9, v21, 0x1

    aget v8, v4, v9

    .line 124
    .local v8, "open":F
    iget-object v4, v15, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->buffer:[F

    add-int/lit8 v9, v21, 0x2

    aget v7, v4, v9

    .line 125
    .local v7, "rightBody":F
    iget-object v4, v15, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->buffer:[F

    add-int/lit8 v9, v21, 0x3

    aget v6, v4, v9

    .line 128
    .local v6, "close":F
    cmpl-float v4, v8, v6

    if-lez v4, :cond_4

    .line 130
    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getDecreasingColor()I

    move-result v4

    const/4 v9, -0x1

    if-ne v4, v9, :cond_3

    .line 131
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    div-int/lit8 v9, v21, 0x4

    add-int v9, v9, v23

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/github/mikephil/charting/data/CandleDataSet;->getColor(I)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getDecreasingPaintStyle()Landroid/graphics/Paint$Style;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 138
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 133
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getDecreasingColor()I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    .line 140
    :cond_4
    cmpg-float v4, v8, v6

    if-gez v4, :cond_6

    .line 142
    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getIncreasingColor()I

    move-result v4

    const/4 v9, -0x1

    if-ne v4, v9, :cond_5

    .line 143
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    div-int/lit8 v9, v21, 0x4

    add-int v9, v9, v23

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/github/mikephil/charting/data/CandleDataSet;->getColor(I)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 148
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getIncreasingPaintStyle()Landroid/graphics/Paint$Style;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 150
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move v10, v5

    move v11, v8

    move v12, v7

    move v13, v6

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 145
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getIncreasingColor()I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_4

    .line 153
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    const/high16 v9, -0x1000000

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 154
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 155
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move v10, v5

    move v11, v8

    move v12, v7

    move v13, v6

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_2
.end method

.method public drawExtras(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 255
    return-void
.end method

.method public drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/utils/Highlight;)V
    .locals 13
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "indices"    # [Lcom/github/mikephil/charting/utils/Highlight;

    .prologue
    .line 260
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v10, p2

    if-lt v3, v10, :cond_0

    .line 302
    return-void

    .line 262
    :cond_0
    aget-object v10, p2, v3

    invoke-virtual {v10}, Lcom/github/mikephil/charting/utils/Highlight;->getXIndex()I

    move-result v9

    .line 265
    .local v9, "xIndex":I
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/CandleDataProvider;

    invoke-interface {v10}, Lcom/github/mikephil/charting/interfaces/CandleDataProvider;->getCandleData()Lcom/github/mikephil/charting/data/CandleData;

    move-result-object v10

    .line 266
    aget-object v11, p2, v3

    invoke-virtual {v11}, Lcom/github/mikephil/charting/utils/Highlight;->getDataSetIndex()I

    move-result v11

    .line 265
    invoke-virtual {v10, v11}, Lcom/github/mikephil/charting/data/CandleData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v7

    check-cast v7, Lcom/github/mikephil/charting/data/CandleDataSet;

    .line 268
    .local v7, "set":Lcom/github/mikephil/charting/data/CandleDataSet;
    if-nez v7, :cond_2

    .line 260
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 271
    :cond_2
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/CandleDataSet;->getHighLightColor()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 273
    invoke-virtual {v7, v9}, Lcom/github/mikephil/charting/data/CandleDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/CandleEntry;

    .line 275
    .local v0, "e":Lcom/github/mikephil/charting/data/CandleEntry;
    if-eqz v0, :cond_1

    .line 278
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleEntry;->getLow()F

    move-result v10

    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v11

    mul-float v4, v10, v11

    .line 279
    .local v4, "low":F
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleEntry;->getHigh()F

    move-result v10

    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v11

    mul-float v1, v10, v11

    .line 281
    .local v1, "high":F
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/CandleDataProvider;

    invoke-interface {v10}, Lcom/github/mikephil/charting/interfaces/CandleDataProvider;->getYChartMin()F

    move-result v6

    .line 282
    .local v6, "min":F
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/CandleDataProvider;

    invoke-interface {v10}, Lcom/github/mikephil/charting/interfaces/CandleDataProvider;->getYChartMax()F

    move-result v5

    .line 284
    .local v5, "max":F
    const/16 v10, 0x8

    new-array v8, v10, [F

    const/4 v10, 0x0

    .line 285
    int-to-float v11, v9

    const/high16 v12, 0x3f000000    # 0.5f

    sub-float/2addr v11, v12

    aput v11, v8, v10

    const/4 v10, 0x1

    aput v5, v8, v10

    const/4 v10, 0x2

    int-to-float v11, v9

    const/high16 v12, 0x3f000000    # 0.5f

    sub-float/2addr v11, v12

    aput v11, v8, v10

    const/4 v10, 0x3

    aput v6, v8, v10

    const/4 v10, 0x4

    int-to-float v11, v9

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v11, v12

    aput v11, v8, v10

    const/4 v10, 0x5

    aput v5, v8, v10

    const/4 v10, 0x6

    int-to-float v11, v9

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v11, v12

    aput v11, v8, v10

    const/4 v10, 0x7

    .line 286
    aput v6, v8, v10

    .line 289
    .local v8, "vertPts":[F
    const/16 v10, 0x8

    new-array v2, v10, [F

    const/4 v10, 0x0

    .line 290
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/CandleDataProvider;

    invoke-interface {v11}, Lcom/github/mikephil/charting/interfaces/CandleDataProvider;->getXChartMin()F

    move-result v11

    aput v11, v2, v10

    const/4 v10, 0x1

    aput v4, v2, v10

    const/4 v10, 0x2

    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/CandleDataProvider;

    invoke-interface {v11}, Lcom/github/mikephil/charting/interfaces/CandleDataProvider;->getXChartMax()F

    move-result v11

    aput v11, v2, v10

    const/4 v10, 0x3

    aput v4, v2, v10

    const/4 v10, 0x4

    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/CandleDataProvider;

    invoke-interface {v11}, Lcom/github/mikephil/charting/interfaces/CandleDataProvider;->getXChartMin()F

    move-result v11

    aput v11, v2, v10

    const/4 v10, 0x5

    aput v1, v2, v10

    const/4 v10, 0x6

    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/CandleDataProvider;

    invoke-interface {v11}, Lcom/github/mikephil/charting/interfaces/CandleDataProvider;->getXChartMax()F

    move-result v11

    aput v11, v2, v10

    const/4 v10, 0x7

    aput v1, v2, v10

    .line 293
    .local v2, "horPts":[F
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/CandleDataProvider;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/CandleDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/github/mikephil/charting/interfaces/CandleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 294
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/CandleDataProvider;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/CandleDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/github/mikephil/charting/interfaces/CandleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 297
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v10}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 300
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v10}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method public drawValues(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 203
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/CandleDataProvider;

    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/CandleDataProvider;->getCandleData()Lcom/github/mikephil/charting/data/CandleData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/CandleData;->getYValCount()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/CandleDataProvider;

    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/CandleDataProvider;->getMaxVisibleCount()I

    move-result v6

    int-to-float v6, v6

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleX()F

    move-result v20

    mul-float v6, v6, v20

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    .line 206
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/CandleDataProvider;

    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/CandleDataProvider;->getCandleData()Lcom/github/mikephil/charting/data/CandleData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/CandleData;->getDataSets()Ljava/util/List;

    move-result-object v10

    .line 208
    .local v10, "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/CandleDataSet;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    if-lt v13, v5, :cond_1

    .line 251
    .end local v10    # "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/CandleDataSet;>;"
    .end local v13    # "i":I
    :cond_0
    return-void

    .line 210
    .restart local v10    # "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/CandleDataSet;>;"
    .restart local v13    # "i":I
    :cond_1
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/github/mikephil/charting/data/CandleDataSet;

    .line 212
    .local v9, "dataSet":Lcom/github/mikephil/charting/data/CandleDataSet;
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/CandleDataSet;->isDrawValuesEnabled()Z

    move-result v5

    if-nez v5, :cond_3

    .line 208
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 216
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->applyValueTextStyle(Lcom/github/mikephil/charting/data/DataSet;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/CandleDataProvider;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/CandleDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/github/mikephil/charting/interfaces/CandleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v3

    .line 220
    .local v3, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/CandleDataSet;->getYVals()Ljava/util/List;

    move-result-object v4

    .line 222
    .local v4, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/CandleEntry;>;"
    move-object/from16 v0, p0

    iget v5, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mMinX:I

    invoke-virtual {v9, v5}, Lcom/github/mikephil/charting/data/CandleDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v11

    .line 223
    .local v11, "entryFrom":Lcom/github/mikephil/charting/data/Entry;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mMaxX:I

    invoke-virtual {v9, v5}, Lcom/github/mikephil/charting/data/CandleDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v12

    .line 225
    .local v12, "entryTo":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual {v9, v11}, Lcom/github/mikephil/charting/data/CandleDataSet;->getEntryPosition(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 226
    .local v7, "minx":I
    invoke-virtual {v9, v12}, Lcom/github/mikephil/charting/data/CandleDataSet;->getEntryPosition(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 229
    .local v8, "maxx":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v6

    .line 228
    invoke-virtual/range {v3 .. v8}, Lcom/github/mikephil/charting/utils/Transformer;->generateTransformedValuesCandle(Ljava/util/List;FFII)[F

    move-result-object v15

    .line 231
    .local v15, "positions":[F
    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v5}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v19

    .line 233
    .local v19, "yOffset":F
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_1
    array-length v5, v15

    if-ge v14, v5, :cond_2

    .line 235
    aget v17, v15, v14

    .line 236
    .local v17, "x":F
    add-int/lit8 v5, v14, 0x1

    aget v18, v15, v5

    .line 238
    .local v18, "y":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 241
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v5

    if-nez v5, :cond_5

    .line 233
    :cond_4
    :goto_2
    add-int/lit8 v14, v14, 0x2

    goto :goto_1

    .line 244
    :cond_5
    div-int/lit8 v5, v14, 0x2

    add-int/2addr v5, v7

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/CandleEntry;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/CandleEntry;->getHigh()F

    move-result v16

    .line 246
    .local v16, "val":F
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/CandleDataSet;->getValueFormatter()Lcom/github/mikephil/charting/utils/ValueFormatter;

    move-result-object v5

    move/from16 v0, v16

    invoke-interface {v5, v0}, Lcom/github/mikephil/charting/utils/ValueFormatter;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v5

    sub-float v6, v18, v19

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    .line 246
    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v20

    invoke-virtual {v0, v5, v1, v6, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method public initBuffers()V
    .locals 6

    .prologue
    .line 39
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/CandleDataProvider;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/CandleDataProvider;->getCandleData()Lcom/github/mikephil/charting/data/CandleData;

    move-result-object v0

    .line 40
    .local v0, "candleData":Lcom/github/mikephil/charting/data/CandleData;
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleData;->getDataSetCount()I

    move-result v3

    new-array v3, v3, [Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;

    iput-object v3, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mShadowBuffers:[Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;

    .line 41
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleData;->getDataSetCount()I

    move-result v3

    new-array v3, v3, [Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;

    iput-object v3, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mBodyBuffers:[Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;

    .line 43
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mShadowBuffers:[Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;

    array-length v3, v3

    if-lt v1, v3, :cond_0

    .line 48
    return-void

    .line 44
    :cond_0
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/CandleData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/CandleDataSet;

    .line 45
    .local v2, "set":Lcom/github/mikephil/charting/data/CandleDataSet;
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mShadowBuffers:[Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;

    new-instance v4, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getValueCount()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    invoke-direct {v4, v5}, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;-><init>(I)V

    aput-object v4, v3, v1

    .line 46
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mBodyBuffers:[Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;

    new-instance v4, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getValueCount()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    invoke-direct {v4, v5}, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;-><init>(I)V

    aput-object v4, v3, v1

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
