.class public Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;
.super Lcom/github/mikephil/charting/renderer/DataRenderer;
.source "ScatterChartRenderer.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$github$mikephil$charting$charts$ScatterChart$ScatterShape:[I


# instance fields
.field protected mChart:Lcom/github/mikephil/charting/interfaces/ScatterDataProvider;

.field protected mScatterBuffers:[Lcom/github/mikephil/charting/buffer/ScatterBuffer;


# direct methods
.method static synthetic $SWITCH_TABLE$com$github$mikephil$charting$charts$ScatterChart$ScatterShape()[I
    .locals 3

    .prologue
    .line 22
    sget-object v0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->$SWITCH_TABLE$com$github$mikephil$charting$charts$ScatterChart$ScatterShape:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->values()[Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->CIRCLE:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->CROSS:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->SQUARE:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->TRIANGLE:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->$SWITCH_TABLE$com$github$mikephil$charting$charts$ScatterChart$ScatterShape:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Lcom/github/mikephil/charting/interfaces/ScatterDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 2
    .param p1, "chart"    # Lcom/github/mikephil/charting/interfaces/ScatterDataProvider;
    .param p2, "animator"    # Lcom/github/mikephil/charting/animation/ChartAnimator;
    .param p3, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .prologue
    .line 30
    invoke-direct {p0, p2, p3}, Lcom/github/mikephil/charting/renderer/DataRenderer;-><init>(Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 31
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/ScatterDataProvider;

    .line 33
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 34
    return-void
.end method


# virtual methods
.method public drawData(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 52
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/ScatterDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/ScatterDataProvider;->getScatterData()Lcom/github/mikephil/charting/data/ScatterData;

    move-result-object v0

    .line 54
    .local v0, "scatterData":Lcom/github/mikephil/charting/data/ScatterData;
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ScatterData;->getDataSets()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 59
    return-void

    .line 54
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/ScatterDataSet;

    .line 56
    .local v1, "set":Lcom/github/mikephil/charting/data/ScatterDataSet;
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/ScatterDataSet;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 57
    invoke-virtual {p0, p1, v1}, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/ScatterDataSet;)V

    goto :goto_0
.end method

.method protected drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/ScatterDataSet;)V
    .locals 16
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/data/ScatterDataSet;

    .prologue
    .line 63
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/ScatterDataProvider;

    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/ScatterDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/github/mikephil/charting/interfaces/ScatterDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v14

    .line 65
    .local v14, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v10

    .line 66
    .local v10, "phaseX":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v11

    .line 68
    .local v11, "phaseY":F
    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/ScatterDataSet;->getYVals()Ljava/util/List;

    move-result-object v8

    .line 70
    .local v8, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/ScatterDataSet;->getScatterShapeSize()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v13, v1, v2

    .line 72
    .local v13, "shapeHalf":F
    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/ScatterDataSet;->getScatterShape()Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    move-result-object v12

    .line 74
    .local v12, "shape":Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mScatterBuffers:[Lcom/github/mikephil/charting/buffer/ScatterBuffer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/ScatterDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/ScatterDataProvider;->getScatterData()Lcom/github/mikephil/charting/data/ScatterData;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/github/mikephil/charting/data/ScatterData;->getIndexOfDataSet(Lcom/github/mikephil/charting/data/DataSet;)I

    move-result v2

    aget-object v7, v1, v2

    .line 76
    .local v7, "buffer":Lcom/github/mikephil/charting/buffer/ScatterBuffer;
    invoke-virtual {v7, v10, v11}, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->setPhases(FF)V

    .line 77
    invoke-virtual {v7, v8}, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->feed(Ljava/util/List;)V

    .line 79
    iget-object v1, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    invoke-virtual {v14, v1}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 81
    invoke-static {}, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->$SWITCH_TABLE$com$github$mikephil$charting$charts$ScatterChart$ScatterShape()[I

    move-result-object v1

    invoke-virtual {v12}, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 197
    :cond_0
    return-void

    .line 84
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 86
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {v7}, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->size()I

    move-result v1

    if-ge v9, v1, :cond_0

    .line 88
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v2, v2, v9

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v2, v2, v9

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v3, v9, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v1

    if-nez v1, :cond_2

    .line 86
    :cond_1
    :goto_1
    add-int/lit8 v9, v9, 0x2

    goto :goto_0

    .line 95
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    div-int/lit8 v2, v9, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/data/ScatterDataSet;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    iget-object v1, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v1, v1, v9

    sub-float v2, v1, v13

    .line 97
    iget-object v1, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v3, v9, 0x1

    aget v1, v1, v3

    sub-float v3, v1, v13

    iget-object v1, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v1, v1, v9

    .line 98
    add-float v4, v1, v13

    iget-object v1, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v5, v9, 0x1

    aget v1, v1, v5

    .line 99
    add-float v5, v1, v13

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    .line 96
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 104
    .end local v9    # "i":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 106
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_2
    invoke-virtual {v7}, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->size()I

    move-result v1

    if-ge v9, v1, :cond_0

    .line 108
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v2, v2, v9

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v2, v2, v9

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 112
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v3, v9, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v1

    if-nez v1, :cond_4

    .line 106
    :cond_3
    :goto_3
    add-int/lit8 v9, v9, 0x2

    goto :goto_2

    .line 115
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    div-int/lit8 v2, v9, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/data/ScatterDataSet;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    iget-object v1, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v1, v1, v9

    iget-object v2, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v3, v9, 0x1

    aget v2, v2, v3

    .line 117
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 116
    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v13, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 122
    .end local v9    # "i":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 125
    new-instance v15, Landroid/graphics/Path;

    invoke-direct {v15}, Landroid/graphics/Path;-><init>()V

    .line 127
    .local v15, "tri":Landroid/graphics/Path;
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_4
    invoke-virtual {v7}, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->size()I

    move-result v1

    if-ge v9, v1, :cond_0

    .line 129
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v2, v2, v9

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v2, v2, v9

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 133
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v3, v9, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v1

    if-nez v1, :cond_6

    .line 127
    :cond_5
    :goto_5
    add-int/lit8 v9, v9, 0x2

    goto :goto_4

    .line 136
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    div-int/lit8 v2, v9, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/data/ScatterDataSet;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    iget-object v1, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v1, v1, v9

    iget-object v2, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v3, v9, 0x1

    aget v2, v2, v3

    sub-float/2addr v2, v13

    invoke-virtual {v15, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 138
    iget-object v1, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v1, v1, v9

    add-float/2addr v1, v13

    iget-object v2, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v3, v9, 0x1

    aget v2, v2, v3

    add-float/2addr v2, v13

    invoke-virtual {v15, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 139
    iget-object v1, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v1, v1, v9

    sub-float/2addr v1, v13

    iget-object v2, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v3, v9, 0x1

    aget v2, v2, v3

    add-float/2addr v2, v13

    invoke-virtual {v15, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 140
    invoke-virtual {v15}, Landroid/graphics/Path;->close()V

    .line 142
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 143
    invoke-virtual {v15}, Landroid/graphics/Path;->reset()V

    goto :goto_5

    .line 148
    .end local v9    # "i":I
    .end local v15    # "tri":Landroid/graphics/Path;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 150
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_6
    invoke-virtual {v7}, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->size()I

    move-result v1

    if-ge v9, v1, :cond_0

    .line 152
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v2, v2, v9

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v2, v2, v9

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 156
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v3, v9, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v1

    if-nez v1, :cond_8

    .line 150
    :cond_7
    :goto_7
    add-int/lit8 v9, v9, 0x2

    goto :goto_6

    .line 159
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    div-int/lit8 v2, v9, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/data/ScatterDataSet;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    iget-object v1, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v1, v1, v9

    sub-float v2, v1, v13

    iget-object v1, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v3, v9, 0x1

    aget v3, v1, v3

    .line 162
    iget-object v1, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v1, v1, v9

    add-float v4, v1, v13

    .line 163
    iget-object v1, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v5, v9, 0x1

    aget v5, v1, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    .line 161
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 164
    iget-object v1, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v2, v1, v9

    iget-object v1, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v3, v9, 0x1

    aget v1, v1, v3

    sub-float v3, v1, v13

    .line 165
    iget-object v1, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v4, v1, v9

    iget-object v1, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v5, v9, 0x1

    aget v1, v1, v5

    .line 166
    add-float v5, v1, v13

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    .line 164
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_7

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public drawExtras(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 248
    return-void
.end method

.method public drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/utils/Highlight;)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "indices"    # [Lcom/github/mikephil/charting/utils/Highlight;

    .prologue
    .line 253
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, p2

    if-lt v0, v5, :cond_0

    .line 282
    return-void

    .line 255
    :cond_0
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/ScatterDataProvider;

    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/ScatterDataProvider;->getScatterData()Lcom/github/mikephil/charting/data/ScatterData;

    move-result-object v5

    aget-object v6, p2, v0

    .line 256
    invoke-virtual {v6}, Lcom/github/mikephil/charting/utils/Highlight;->getDataSetIndex()I

    move-result v6

    .line 255
    invoke-virtual {v5, v6}, Lcom/github/mikephil/charting/data/ScatterData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/ScatterDataSet;

    .line 258
    .local v2, "set":Lcom/github/mikephil/charting/data/ScatterDataSet;
    if-nez v2, :cond_2

    .line 253
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 261
    :cond_2
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/ScatterDataSet;->getHighLightColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 263
    aget-object v5, p2, v0

    invoke-virtual {v5}, Lcom/github/mikephil/charting/utils/Highlight;->getXIndex()I

    move-result v3

    .line 266
    .local v3, "xIndex":I
    int-to-float v5, v3

    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/ScatterDataProvider;

    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/ScatterDataProvider;->getXChartMax()F

    move-result v6

    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v7

    mul-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_1

    .line 269
    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/ScatterDataSet;->getYValForXIndex(I)F

    move-result v5

    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v6

    mul-float v4, v5, v6

    .line 273
    .local v4, "y":F
    const/16 v5, 0x8

    new-array v1, v5, [F

    const/4 v5, 0x0

    .line 274
    int-to-float v6, v3

    aput v6, v1, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/ScatterDataProvider;

    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/ScatterDataProvider;->getYChartMax()F

    move-result v6

    aput v6, v1, v5

    const/4 v5, 0x2

    int-to-float v6, v3

    aput v6, v1, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/ScatterDataProvider;

    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/ScatterDataProvider;->getYChartMin()F

    move-result v6

    aput v6, v1, v5

    const/4 v5, 0x4

    const/4 v6, 0x0

    aput v6, v1, v5

    const/4 v5, 0x5

    aput v4, v1, v5

    const/4 v5, 0x6

    .line 275
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/ScatterDataProvider;

    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/ScatterDataProvider;->getXChartMax()F

    move-result v6

    aput v6, v1, v5

    const/4 v5, 0x7

    aput v4, v1, v5

    .line 278
    .local v1, "pts":[F
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/ScatterDataProvider;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/ScatterDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/github/mikephil/charting/interfaces/ScatterDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 280
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v5}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public drawValues(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 203
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/ScatterDataProvider;

    invoke-interface {v8}, Lcom/github/mikephil/charting/interfaces/ScatterDataProvider;->getScatterData()Lcom/github/mikephil/charting/data/ScatterData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/ScatterData;->getYValCount()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/ScatterDataProvider;

    invoke-interface {v9}, Lcom/github/mikephil/charting/interfaces/ScatterDataProvider;->getMaxVisibleCount()I

    move-result v9

    int-to-float v9, v9

    .line 204
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleX()F

    move-result v10

    mul-float/2addr v9, v10

    cmpg-float v8, v8, v9

    if-gez v8, :cond_0

    .line 206
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/ScatterDataProvider;

    invoke-interface {v8}, Lcom/github/mikephil/charting/interfaces/ScatterDataProvider;->getScatterData()Lcom/github/mikephil/charting/data/ScatterData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/ScatterData;->getDataSets()Ljava/util/List;

    move-result-object v1

    .line 208
    .local v1, "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/ScatterDataSet;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/ScatterDataProvider;

    invoke-interface {v8}, Lcom/github/mikephil/charting/interfaces/ScatterDataProvider;->getScatterData()Lcom/github/mikephil/charting/data/ScatterData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/ScatterData;->getDataSetCount()I

    move-result v8

    if-lt v3, v8, :cond_1

    .line 244
    .end local v1    # "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/ScatterDataSet;>;"
    .end local v3    # "i":I
    :cond_0
    return-void

    .line 210
    .restart local v1    # "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/ScatterDataSet;>;"
    .restart local v3    # "i":I
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/ScatterDataSet;

    .line 212
    .local v0, "dataSet":Lcom/github/mikephil/charting/data/ScatterDataSet;
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ScatterDataSet;->isDrawValuesEnabled()Z

    move-result v8

    if-nez v8, :cond_3

    .line 208
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 216
    :cond_3
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->applyValueTextStyle(Lcom/github/mikephil/charting/data/DataSet;)V

    .line 218
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ScatterDataSet;->getYVals()Ljava/util/List;

    move-result-object v2

    .line 220
    .local v2, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/ScatterDataProvider;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ScatterDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/github/mikephil/charting/interfaces/ScatterDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v8

    .line 222
    iget-object v9, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v9

    .line 221
    invoke-virtual {v8, v2, v9}, Lcom/github/mikephil/charting/utils/Transformer;->generateTransformedValuesScatter(Ljava/util/List;F)[F

    move-result-object v5

    .line 224
    .local v5, "positions":[F
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ScatterDataSet;->getScatterShapeSize()F

    move-result v6

    .line 226
    .local v6, "shapeSize":F
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    int-to-float v8, v4

    array-length v9, v5

    int-to-float v9, v9

    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v10

    mul-float/2addr v9, v10

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    .line 228
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    aget v9, v5, v4

    invoke-virtual {v8, v9}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 232
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    aget v9, v5, v4

    invoke-virtual {v8, v9}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 233
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    add-int/lit8 v9, v4, 0x1

    aget v9, v5, v9

    invoke-virtual {v8, v9}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v8

    if-nez v8, :cond_5

    .line 226
    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    .line 236
    :cond_5
    div-int/lit8 v8, v4, 0x2

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v7

    .line 238
    .local v7, "val":F
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ScatterDataSet;->getValueFormatter()Lcom/github/mikephil/charting/utils/ValueFormatter;

    move-result-object v8

    invoke-interface {v8, v7}, Lcom/github/mikephil/charting/utils/ValueFormatter;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v8

    aget v9, v5, v4

    .line 239
    add-int/lit8 v10, v4, 0x1

    aget v10, v5, v10

    sub-float/2addr v10, v6

    .line 240
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    .line 238
    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method public initBuffers()V
    .locals 6

    .prologue
    .line 39
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/ScatterDataProvider;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/ScatterDataProvider;->getScatterData()Lcom/github/mikephil/charting/data/ScatterData;

    move-result-object v1

    .line 41
    .local v1, "scatterData":Lcom/github/mikephil/charting/data/ScatterData;
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/ScatterData;->getDataSetCount()I

    move-result v3

    new-array v3, v3, [Lcom/github/mikephil/charting/buffer/ScatterBuffer;

    iput-object v3, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mScatterBuffers:[Lcom/github/mikephil/charting/buffer/ScatterBuffer;

    .line 43
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mScatterBuffers:[Lcom/github/mikephil/charting/buffer/ScatterBuffer;

    array-length v3, v3

    if-lt v0, v3, :cond_0

    .line 47
    return-void

    .line 44
    :cond_0
    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/data/ScatterData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/ScatterDataSet;

    .line 45
    .local v2, "set":Lcom/github/mikephil/charting/data/ScatterDataSet;
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mScatterBuffers:[Lcom/github/mikephil/charting/buffer/ScatterBuffer;

    new-instance v4, Lcom/github/mikephil/charting/buffer/ScatterBuffer;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/ScatterDataSet;->getEntryCount()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Lcom/github/mikephil/charting/buffer/ScatterBuffer;-><init>(I)V

    aput-object v4, v3, v0

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
