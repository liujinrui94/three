.class public Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;
.super Lcom/github/mikephil/charting/renderer/DataRenderer;
.source "BubbleChartRenderer.java"


# instance fields
.field private _hsvBuffer:[F

.field protected mChart:Lcom/github/mikephil/charting/interfaces/BubbleDataProvider;

.field private pointBuffer:[F

.field private sizeBuffer:[F


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/interfaces/BubbleDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 2
    .param p1, "chart"    # Lcom/github/mikephil/charting/interfaces/BubbleDataProvider;
    .param p2, "animator"    # Lcom/github/mikephil/charting/animation/ChartAnimator;
    .param p3, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .prologue
    .line 31
    invoke-direct {p0, p2, p3}, Lcom/github/mikephil/charting/renderer/DataRenderer;-><init>(Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 57
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->sizeBuffer:[F

    .line 58
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    .line 189
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->_hsvBuffer:[F

    .line 32
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BubbleDataProvider;

    .line 34
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 36
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 37
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 38
    return-void
.end method


# virtual methods
.method public drawData(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 48
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BubbleDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/BubbleDataProvider;->getBubbleData()Lcom/github/mikephil/charting/data/BubbleData;

    move-result-object v0

    .line 50
    .local v0, "bubbleData":Lcom/github/mikephil/charting/data/BubbleData;
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BubbleData;->getDataSets()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 55
    return-void

    .line 50
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/BubbleDataSet;

    .line 52
    .local v1, "set":Lcom/github/mikephil/charting/data/BubbleDataSet;
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BubbleDataSet;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    invoke-virtual {p0, p1, v1}, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/BubbleDataSet;)V

    goto :goto_0
.end method

.method protected drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/BubbleDataSet;)V
    .locals 24
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/data/BubbleDataSet;

    .prologue
    .line 68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BubbleDataProvider;

    move-object/from16 v20, v0

    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/github/mikephil/charting/interfaces/BubbleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v19

    .line 70
    .local v19, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v15

    .line 71
    .local v15, "phaseX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v16

    .line 73
    .local v16, "phaseY":F
    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getYVals()Ljava/util/List;

    move-result-object v6

    .line 75
    .local v6, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BubbleEntry;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mMinX:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v8

    .line 76
    .local v8, "entryFrom":Lcom/github/mikephil/charting/data/Entry;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mMaxX:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v9

    .line 78
    .local v9, "entryTo":Lcom/github/mikephil/charting/data/Entry;
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getEntryPosition(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v20

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 79
    .local v14, "minx":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getEntryPosition(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v21

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 81
    .local v13, "maxx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->sizeBuffer:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    aput v22, v20, v21

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->sizeBuffer:[F

    move-object/from16 v20, v0

    const/16 v21, 0x2

    const/high16 v22, 0x3f800000    # 1.0f

    aput v22, v20, v21

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->sizeBuffer:[F

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->sizeBuffer:[F

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->sizeBuffer:[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v21, v21, v22

    sub-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 88
    .local v12, "maxBubbleWidth":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v21

    sub-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 89
    .local v11, "maxBubbleHeight":F
    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v17

    .line 91
    .local v17, "referenceSize":F
    move v10, v14

    .local v10, "j":I
    :goto_0
    if-lt v10, v13, :cond_1

    .line 116
    :cond_0
    return-void

    .line 93
    :cond_1
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/github/mikephil/charting/data/BubbleEntry;

    .line 95
    .local v7, "entry":Lcom/github/mikephil/charting/data/BubbleEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/BubbleEntry;->getXIndex()I

    move-result v22

    sub-int v22, v22, v14

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v15

    int-to-float v0, v14

    move/from16 v23, v0

    add-float v22, v22, v23

    aput v22, v20, v21

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/BubbleEntry;->getVal()F

    move-result v22

    mul-float v22, v22, v16

    aput v22, v20, v21

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 99
    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/BubbleEntry;->getSize()F

    move-result v20

    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getMaxSize()F

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->getShapeSize(FFF)F

    move-result v20

    const/high16 v21, 0x40000000    # 2.0f

    div-float v18, v20, v21

    .line 101
    .local v18, "shapeHalf":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v21, v21, v22

    add-float v21, v21, v18

    invoke-virtual/range {v20 .. v21}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v21, v21, v22

    sub-float v21, v21, v18

    invoke-virtual/range {v20 .. v21}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    move-result v20

    if-nez v20, :cond_3

    .line 91
    :cond_2
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 105
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v21, v21, v22

    add-float v21, v21, v18

    invoke-virtual/range {v20 .. v21}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v21, v21, v22

    sub-float v21, v21, v18

    invoke-virtual/range {v20 .. v21}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 111
    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/BubbleEntry;->getXIndex()I

    move-result v20

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getColor(I)I

    move-result v5

    .line 113
    .local v5, "color":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v18

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public drawExtras(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 187
    return-void
.end method

.method public drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/utils/Highlight;)V
    .locals 28
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "indices"    # [Lcom/github/mikephil/charting/utils/Highlight;

    .prologue
    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BubbleDataProvider;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/github/mikephil/charting/interfaces/BubbleDataProvider;->getBubbleData()Lcom/github/mikephil/charting/data/BubbleData;

    move-result-object v5

    .line 196
    .local v5, "bubbleData":Lcom/github/mikephil/charting/data/BubbleData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v17

    .line 197
    .local v17, "phaseX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v18

    .line 199
    .local v18, "phaseY":F
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v23, v0

    const/16 v22, 0x0

    :goto_0
    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_1

    .line 256
    :cond_0
    return-void

    .line 199
    :cond_1
    aget-object v11, p2, v22

    .line 201
    .local v11, "indice":Lcom/github/mikephil/charting/utils/Highlight;
    invoke-virtual {v11}, Lcom/github/mikephil/charting/utils/Highlight;->getDataSetIndex()I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/github/mikephil/charting/data/BubbleData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v7

    check-cast v7, Lcom/github/mikephil/charting/data/BubbleDataSet;

    .line 203
    .local v7, "dataSet":Lcom/github/mikephil/charting/data/BubbleDataSet;
    if-nez v7, :cond_3

    .line 199
    :cond_2
    :goto_1
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 206
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mMinX:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v9

    .line 207
    .local v9, "entryFrom":Lcom/github/mikephil/charting/data/Entry;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mMaxX:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v10

    .line 209
    .local v10, "entryTo":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual {v7, v9}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getEntryPosition(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v15

    .line 210
    .local v15, "minx":I
    invoke-virtual {v7, v10}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getEntryPosition(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getEntryCount()I

    move-result v25

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 212
    .local v14, "maxx":I
    invoke-virtual {v5, v11}, Lcom/github/mikephil/charting/data/BubbleData;->getEntryForHighlight(Lcom/github/mikephil/charting/utils/Highlight;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v8

    check-cast v8, Lcom/github/mikephil/charting/data/BubbleEntry;

    .line 214
    .local v8, "entry":Lcom/github/mikephil/charting/data/BubbleEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BubbleDataProvider;

    move-object/from16 v24, v0

    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Lcom/github/mikephil/charting/interfaces/BubbleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v21

    .line 216
    .local v21, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->sizeBuffer:[F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    aput v26, v24, v25

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->sizeBuffer:[F

    move-object/from16 v24, v0

    const/16 v25, 0x2

    const/high16 v26, 0x3f800000    # 1.0f

    aput v26, v24, v25

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->sizeBuffer:[F

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->sizeBuffer:[F

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->sizeBuffer:[F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    sub-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 223
    .local v13, "maxBubbleWidth":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v25

    sub-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 224
    .local v12, "maxBubbleHeight":F
    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v19

    .line 226
    .local v19, "referenceSize":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/BubbleEntry;->getXIndex()I

    move-result v26

    sub-int v26, v26, v15

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v26, v26, v17

    int-to-float v0, v15

    move/from16 v27, v0

    add-float v26, v26, v27

    aput v26, v24, v25

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/BubbleEntry;->getVal()F

    move-result v26

    mul-float v26, v26, v18

    aput v26, v24, v25

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 230
    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/BubbleEntry;->getSize()F

    move-result v24

    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getMaxSize()F

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->getShapeSize(FFF)F

    move-result v24

    const/high16 v25, 0x40000000    # 2.0f

    div-float v20, v24, v25

    .line 232
    .local v20, "shapeHalf":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aget v25, v25, v26

    add-float v25, v25, v20

    invoke-virtual/range {v24 .. v25}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aget v25, v25, v26

    sub-float v25, v25, v20

    invoke-virtual/range {v24 .. v25}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    add-float v25, v25, v20

    invoke-virtual/range {v24 .. v25}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    sub-float v25, v25, v20

    invoke-virtual/range {v24 .. v25}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 242
    invoke-virtual {v11}, Lcom/github/mikephil/charting/utils/Highlight;->getXIndex()I

    move-result v24

    move/from16 v0, v24

    if-lt v0, v15, :cond_2

    invoke-virtual {v11}, Lcom/github/mikephil/charting/utils/Highlight;->getXIndex()I

    move-result v24

    move/from16 v0, v24

    if-ge v0, v14, :cond_2

    .line 245
    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/BubbleEntry;->getXIndex()I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getColor(I)I

    move-result v16

    .line 247
    .local v16, "originalColor":I
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->red(I)I

    move-result v24

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->green(I)I

    move-result v25

    .line 248
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->blue(I)I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->_hsvBuffer:[F

    move-object/from16 v27, v0

    .line 247
    invoke-static/range {v24 .. v27}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->_hsvBuffer:[F

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget v26, v24, v25

    const/high16 v27, 0x3f000000    # 0.5f

    mul-float v26, v26, v27

    aput v26, v24, v25

    .line 250
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->alpha(I)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->_hsvBuffer:[F

    move-object/from16 v25, v0

    invoke-static/range {v24 .. v25}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v6

    .line 252
    .local v6, "color":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getHighlightCircleWidth()F

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aget v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v20

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method public drawValues(Landroid/graphics/Canvas;)V
    .locals 28
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 121
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BubbleDataProvider;

    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/BubbleDataProvider;->getBubbleData()Lcom/github/mikephil/charting/data/BubbleData;

    move-result-object v11

    .line 123
    .local v11, "bubbleData":Lcom/github/mikephil/charting/data/BubbleData;
    if-nez v11, :cond_1

    .line 183
    :cond_0
    return-void

    .line 127
    :cond_1
    invoke-virtual {v11}, Lcom/github/mikephil/charting/data/BubbleData;->getYValCount()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BubbleDataProvider;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/github/mikephil/charting/interfaces/BubbleDataProvider;->getMaxVisibleCount()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleX()F

    move-result v25

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    .line 127
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v4, v0, :cond_0

    .line 130
    invoke-virtual {v11}, Lcom/github/mikephil/charting/data/BubbleData;->getDataSets()Ljava/util/List;

    move-result-object v13

    .line 132
    .local v13, "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BubbleDataSet;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    const-string v24, "1"

    move-object/from16 v0, v24

    invoke-static {v4, v0}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v4

    int-to-float v0, v4

    move/from16 v18, v0

    .line 134
    .local v18, "lineHeight":F
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_2
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/github/mikephil/charting/data/BubbleDataSet;

    .line 136
    .local v12, "dataSet":Lcom/github/mikephil/charting/data/BubbleDataSet;
    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/BubbleDataSet;->isDrawValuesEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 139
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v6

    .line 140
    .local v6, "phaseX":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v7

    .line 142
    .local v7, "phaseY":F
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v6, v4

    if-nez v4, :cond_4

    move v10, v7

    .line 143
    .local v10, "alpha":F
    :goto_0
    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getValueTextColor()I

    move-result v21

    .line 144
    .local v21, "valueTextColor":I
    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v4, v10

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->red(I)I

    move-result v25

    .line 145
    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->green(I)I

    move-result v26

    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->blue(I)I

    move-result v27

    .line 144
    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v4, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v21

    .line 147
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 149
    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getYVals()Ljava/util/List;

    move-result-object v5

    .line 151
    .local v5, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BubbleEntry;>;"
    move-object/from16 v0, p0

    iget v4, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mMinX:I

    invoke-virtual {v12, v4}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v15

    .line 152
    .local v15, "entryFrom":Lcom/github/mikephil/charting/data/Entry;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mMaxX:I

    invoke-virtual {v12, v4}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v16

    .line 154
    .local v16, "entryTo":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual {v12, v15}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getEntryPosition(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v8

    .line 155
    .local v8, "minx":I
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getEntryPosition(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getEntryCount()I

    move-result v25

    move/from16 v0, v25

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 157
    .local v9, "maxx":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BubbleDataProvider;

    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v4, v0}, Lcom/github/mikephil/charting/interfaces/BubbleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v4

    .line 158
    invoke-virtual/range {v4 .. v9}, Lcom/github/mikephil/charting/utils/Transformer;->generateTransformedValuesBubble(Ljava/util/List;FFII)[F

    move-result-object v19

    .line 160
    .local v19, "positions":[F
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_1
    move-object/from16 v0, v19

    array-length v4, v0

    move/from16 v0, v17

    if-ge v0, v4, :cond_2

    .line 162
    aget v22, v19, v17

    .line 163
    .local v22, "x":F
    add-int/lit8 v4, v17, 0x1

    aget v23, v19, v4

    .line 165
    .local v23, "y":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 168
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v4

    if-nez v4, :cond_5

    .line 160
    :cond_3
    :goto_2
    add-int/lit8 v17, v17, 0x2

    goto :goto_1

    .end local v5    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BubbleEntry;>;"
    .end local v8    # "minx":I
    .end local v9    # "maxx":I
    .end local v10    # "alpha":F
    .end local v15    # "entryFrom":Lcom/github/mikephil/charting/data/Entry;
    .end local v16    # "entryTo":Lcom/github/mikephil/charting/data/Entry;
    .end local v17    # "j":I
    .end local v19    # "positions":[F
    .end local v21    # "valueTextColor":I
    .end local v22    # "x":F
    .end local v23    # "y":F
    :cond_4
    move v10, v6

    .line 142
    goto/16 :goto_0

    .line 171
    .restart local v5    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BubbleEntry;>;"
    .restart local v8    # "minx":I
    .restart local v9    # "maxx":I
    .restart local v10    # "alpha":F
    .restart local v15    # "entryFrom":Lcom/github/mikephil/charting/data/Entry;
    .restart local v16    # "entryTo":Lcom/github/mikephil/charting/data/Entry;
    .restart local v17    # "j":I
    .restart local v19    # "positions":[F
    .restart local v21    # "valueTextColor":I
    .restart local v22    # "x":F
    .restart local v23    # "y":F
    :cond_5
    div-int/lit8 v4, v17, 0x2

    add-int/2addr v4, v8

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/github/mikephil/charting/data/BubbleEntry;

    .line 173
    .local v14, "entry":Lcom/github/mikephil/charting/data/BubbleEntry;
    invoke-virtual {v14}, Lcom/github/mikephil/charting/data/BubbleEntry;->getSize()F

    move-result v20

    .line 175
    .local v20, "val":F
    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getValueFormatter()Lcom/github/mikephil/charting/utils/ValueFormatter;

    move-result-object v4

    move/from16 v0, v20

    invoke-interface {v4, v0}, Lcom/github/mikephil/charting/utils/ValueFormatter;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v4

    .line 177
    const/high16 v25, 0x3f000000    # 0.5f

    mul-float v25, v25, v18

    add-float v25, v25, v23

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    .line 175
    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method protected getShapeSize(FFF)F
    .locals 4
    .param p1, "entrySize"    # F
    .param p2, "maxSize"    # F
    .param p3, "reference"    # F

    .prologue
    .line 61
    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-nez v2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 62
    .local v0, "factor":F
    :goto_0
    mul-float v1, p3, v0

    .line 63
    .local v1, "shapeSize":F
    return v1

    .line 61
    .end local v0    # "factor":F
    .end local v1    # "shapeSize":F
    :cond_0
    div-float v2, p1, p2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    goto :goto_0
.end method

.method public initBuffers()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method
