.class public Lcom/github/mikephil/charting/renderer/PieChartRenderer;
.super Lcom/github/mikephil/charting/renderer/DataRenderer;
.source "PieChartRenderer.java"


# instance fields
.field protected mBitmapCanvas:Landroid/graphics/Canvas;

.field private mCenterTextPaint:Landroid/graphics/Paint;

.field protected mChart:Lcom/github/mikephil/charting/charts/PieChart;

.field protected mDrawBitmap:Landroid/graphics/Bitmap;

.field protected mHolePaint:Landroid/graphics/Paint;

.field protected mTransparentCirclePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/PieChart;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 4
    .param p1, "chart"    # Lcom/github/mikephil/charting/charts/PieChart;
    .param p2, "animator"    # Lcom/github/mikephil/charting/animation/ChartAnimator;
    .param p3, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 48
    invoke-direct {p0, p2, p3}, Lcom/github/mikephil/charting/renderer/DataRenderer;-><init>(Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 49
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHolePaint:Landroid/graphics/Paint;

    .line 52
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHolePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHolePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    .line 56
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextPaint:Landroid/graphics/Paint;

    .line 60
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 62
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 64
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41500000    # 13.0f

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 65
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 67
    return-void
.end method


# virtual methods
.method protected drawCenterText(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 279
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterText()Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, "centerText":Ljava/lang/String;
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawCenterTextEnabled()Z

    move-result v11

    if-eqz v11, :cond_0

    if-eqz v1, :cond_0

    .line 283
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Landroid/graphics/PointF;

    move-result-object v0

    .line 286
    .local v0, "center":Landroid/graphics/PointF;
    const-string v11, "\n"

    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 288
    .local v6, "lines":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 291
    .local v8, "maxlineheight":F
    array-length v12, v6

    const/4 v11, 0x0

    :goto_0
    if-lt v11, v12, :cond_1

    .line 297
    const/high16 v11, 0x3e800000    # 0.25f

    mul-float v7, v8, v11

    .line 299
    .local v7, "linespacing":F
    array-length v11, v6

    int-to-float v11, v11

    mul-float/2addr v11, v8

    array-length v12, v6

    add-int/lit8 v12, v12, -0x1

    int-to-float v12, v12

    mul-float/2addr v12, v7

    sub-float v9, v11, v12

    .line 301
    .local v9, "totalheight":F
    array-length v2, v6

    .line 303
    .local v2, "cnt":I
    iget v10, v0, Landroid/graphics/PointF;->y:F

    .line 305
    .local v10, "y":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v11, v6

    if-lt v4, v11, :cond_3

    .line 316
    .end local v0    # "center":Landroid/graphics/PointF;
    .end local v2    # "cnt":I
    .end local v4    # "i":I
    .end local v6    # "lines":[Ljava/lang/String;
    .end local v7    # "linespacing":F
    .end local v8    # "maxlineheight":F
    .end local v9    # "totalheight":F
    .end local v10    # "y":F
    :cond_0
    return-void

    .line 291
    .restart local v0    # "center":Landroid/graphics/PointF;
    .restart local v6    # "lines":[Ljava/lang/String;
    .restart local v8    # "maxlineheight":F
    :cond_1
    aget-object v5, v6, v11

    .line 292
    .local v5, "line":Ljava/lang/String;
    iget-object v13, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextPaint:Landroid/graphics/Paint;

    invoke-static {v13, v5}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v13

    int-to-float v3, v13

    .line 293
    .local v3, "curHeight":F
    cmpl-float v13, v3, v8

    if-lez v13, :cond_2

    .line 294
    move v8, v3

    .line 291
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 307
    .end local v3    # "curHeight":F
    .end local v5    # "line":Ljava/lang/String;
    .restart local v2    # "cnt":I
    .restart local v4    # "i":I
    .restart local v7    # "linespacing":F
    .restart local v9    # "totalheight":F
    .restart local v10    # "y":F
    :cond_3
    array-length v11, v6

    sub-int/2addr v11, v4

    add-int/lit8 v11, v11, -0x1

    aget-object v5, v6, v11

    .line 309
    .restart local v5    # "line":Ljava/lang/String;
    iget v11, v0, Landroid/graphics/PointF;->x:F

    .line 310
    int-to-float v12, v2

    mul-float/2addr v12, v8

    add-float/2addr v12, v10

    const/high16 v13, 0x40000000    # 2.0f

    div-float v13, v9, v13

    sub-float/2addr v12, v13

    .line 311
    iget-object v13, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextPaint:Landroid/graphics/Paint;

    .line 309
    invoke-virtual {p1, v5, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 312
    add-int/lit8 v2, v2, -0x1

    .line 313
    sub-float/2addr v10, v7

    .line 305
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public drawData(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 90
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartWidth()F

    move-result v4

    float-to-int v3, v4

    .line 91
    .local v3, "width":I
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    move-result v4

    float-to-int v0, v4

    .line 93
    .local v0, "height":I
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 94
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 95
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eq v4, v0, :cond_1

    .line 97
    :cond_0
    if-lez v3, :cond_3

    if-lez v0, :cond_3

    .line 99
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Landroid/graphics/Bitmap;

    .line 100
    new-instance v4, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    .line 105
    :cond_1
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 107
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/PieData;

    .line 109
    .local v1, "pieData":Lcom/github/mikephil/charting/data/PieData;
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/PieData;->getDataSets()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    .line 114
    .end local v1    # "pieData":Lcom/github/mikephil/charting/data/PieData;
    :cond_3
    return-void

    .line 109
    .restart local v1    # "pieData":Lcom/github/mikephil/charting/data/PieData;
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/PieDataSet;

    .line 111
    .local v2, "set":Lcom/github/mikephil/charting/data/PieDataSet;
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/PieDataSet;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 112
    invoke-virtual {p0, p1, v2}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/PieDataSet;)V

    goto :goto_0
.end method

.method protected drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/PieDataSet;)V
    .locals 13
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/data/PieDataSet;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getRotationAngle()F

    move-result v6

    .line 120
    .local v6, "angle":F
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/PieDataSet;->getYVals()Ljava/util/List;

    move-result-object v9

    .line 121
    .local v9, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getDrawAngles()[F

    move-result-object v7

    .line 123
    .local v7, "drawAngles":[F
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-lt v10, v0, :cond_0

    .line 146
    return-void

    .line 125
    :cond_0
    aget v11, v7, v10

    .line 126
    .local v11, "newangle":F
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/PieDataSet;->getSliceSpace()F

    move-result v12

    .line 128
    .local v12, "sliceSpace":F
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/github/mikephil/charting/data/Entry;

    .line 131
    .local v8, "e":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 133
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v2

    .line 134
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/PieData;

    invoke-virtual {v0, p2}, Lcom/github/mikephil/charting/data/PieData;->getIndexOfDataSet(Lcom/github/mikephil/charting/data/DataSet;)I

    move-result v0

    .line 133
    invoke-virtual {v1, v2, v0}, Lcom/github/mikephil/charting/charts/PieChart;->needsHighlight(II)Z

    move-result v0

    .line 134
    if-nez v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v10}, Lcom/github/mikephil/charting/data/PieDataSet;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->getCircleBox()Landroid/graphics/RectF;

    move-result-object v1

    .line 138
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v12, v2

    add-float/2addr v2, v6

    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v3

    mul-float/2addr v2, v3

    .line 139
    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v12, v3

    sub-float v3, v11, v3

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v4

    mul-float/2addr v3, v4

    .line 140
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 137
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v0

    mul-float/2addr v0, v11

    add-float/2addr v6, v0

    .line 123
    add-int/lit8 v10, v10, 0x1

    goto :goto_0
.end method

.method public drawExtras(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 233
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawHole(Landroid/graphics/Canvas;)V

    .line 234
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 235
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawCenterText(Landroid/graphics/Canvas;)V

    .line 236
    return-void
.end method

.method public drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/utils/Highlight;)V
    .locals 17
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "indices"    # [Lcom/github/mikephil/charting/utils/Highlight;

    .prologue
    .line 321
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->getRotationAngle()F

    move-result v12

    .line 322
    .local v12, "rotationAngle":F
    const/4 v8, 0x0

    .line 324
    .local v8, "angle":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->getDrawAngles()[F

    move-result-object v10

    .line 325
    .local v10, "drawAngles":[F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->getAbsoluteAngles()[F

    move-result-object v7

    .line 327
    .local v7, "absoluteAngles":[F
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move-object/from16 v0, p2

    array-length v1, v0

    if-lt v11, v1, :cond_0

    .line 372
    return-void

    .line 330
    :cond_0
    aget-object v1, p2, v11

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/Highlight;->getXIndex()I

    move-result v16

    .line 331
    .local v16, "xIndex":I
    array-length v1, v10

    move/from16 v0, v16

    if-lt v0, v1, :cond_2

    .line 327
    :cond_1
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 334
    :cond_2
    if-nez v16, :cond_3

    .line 335
    move v8, v12

    .line 339
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v1

    mul-float/2addr v8, v1

    .line 341
    aget v15, v10, v16

    .line 343
    .local v15, "sliceDegrees":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/PieData;

    .line 344
    aget-object v3, p2, v11

    .line 345
    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/Highlight;->getDataSetIndex()I

    move-result v3

    .line 344
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/data/PieData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/PieDataSet;

    move-result-object v13

    .line 347
    .local v13, "set":Lcom/github/mikephil/charting/data/PieDataSet;
    if-eqz v13, :cond_1

    .line 350
    invoke-virtual {v13}, Lcom/github/mikephil/charting/data/PieDataSet;->getSelectionShift()F

    move-result v14

    .line 351
    .local v14, "shift":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->getCircleBox()Landroid/graphics/RectF;

    move-result-object v9

    .line 359
    .local v9, "circleBox":Landroid/graphics/RectF;
    new-instance v2, Landroid/graphics/RectF;

    iget v1, v9, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v14

    .line 360
    iget v3, v9, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v14

    .line 361
    iget v4, v9, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v14

    .line 362
    iget v5, v9, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v14

    .line 359
    invoke-direct {v2, v1, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 364
    .local v2, "highlighted":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/github/mikephil/charting/data/PieDataSet;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 368
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v13}, Lcom/github/mikephil/charting/data/PieDataSet;->getSliceSpace()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v8

    .line 369
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v4

    mul-float/2addr v4, v15

    .line 370
    invoke-virtual {v13}, Lcom/github/mikephil/charting/data/PieDataSet;->getSliceSpace()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 368
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_1

    .line 337
    .end local v2    # "highlighted":Landroid/graphics/RectF;
    .end local v9    # "circleBox":Landroid/graphics/RectF;
    .end local v13    # "set":Lcom/github/mikephil/charting/data/PieDataSet;
    .end local v14    # "shift":F
    .end local v15    # "sliceDegrees":F
    :cond_3
    add-int/lit8 v1, v16, -0x1

    aget v1, v7, v1

    add-float v8, v12, v1

    goto :goto_2
.end method

.method protected drawHole(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v10, 0x42c80000    # 100.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 244
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawHoleEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 246
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/PieChart;->getTransparentCircleRadius()F

    move-result v4

    .line 247
    .local v4, "transparentCircleRadius":F
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v2

    .line 248
    .local v2, "holeRadius":F
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v3

    .line 250
    .local v3, "radius":F
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Landroid/graphics/PointF;

    move-result-object v0

    .line 252
    .local v0, "center":Landroid/graphics/PointF;
    cmpl-float v5, v4, v2

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v5

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_0

    .line 253
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v5

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_0

    .line 255
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    .line 258
    .local v1, "color":I
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    const v6, 0x60ffffff

    and-int/2addr v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 261
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    iget v7, v0, Landroid/graphics/PointF;->y:F

    .line 262
    div-float v8, v3, v10

    mul-float/2addr v8, v4

    iget-object v9, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    .line 261
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 264
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 268
    .end local v1    # "color":I
    :cond_0
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    iget v7, v0, Landroid/graphics/PointF;->y:F

    .line 269
    div-float v8, v3, v10

    mul-float/2addr v8, v2

    iget-object v9, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHolePaint:Landroid/graphics/Paint;

    .line 268
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 271
    .end local v0    # "center":Landroid/graphics/PointF;
    .end local v2    # "holeRadius":F
    .end local v3    # "radius":F
    .end local v4    # "transparentCircleRadius":F
    :cond_1
    return-void
.end method

.method protected drawRoundedSlices(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 381
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v14}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawRoundedSlicesEnabled()Z

    move-result v14

    if-nez v14, :cond_1

    .line 421
    :cond_0
    return-void

    .line 384
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v14}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v14

    check-cast v14, Lcom/github/mikephil/charting/data/PieData;

    invoke-virtual {v14}, Lcom/github/mikephil/charting/data/PieData;->getDataSet()Lcom/github/mikephil/charting/data/PieDataSet;

    move-result-object v5

    .line 386
    .local v5, "dataSet":Lcom/github/mikephil/charting/data/PieDataSet;
    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/PieDataSet;->isVisible()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 389
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v14}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Landroid/graphics/PointF;

    move-result-object v3

    .line 390
    .local v3, "center":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v14}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v11

    .line 393
    .local v11, "r":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v14}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v14

    mul-float/2addr v14, v11

    const/high16 v15, 0x42c80000    # 100.0f

    div-float/2addr v14, v15

    sub-float v14, v11, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float v4, v14, v15

    .line 395
    .local v4, "circleRadius":F
    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/PieDataSet;->getYVals()Ljava/util/List;

    move-result-object v8

    .line 396
    .local v8, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v14}, Lcom/github/mikephil/charting/charts/PieChart;->getDrawAngles()[F

    move-result-object v6

    .line 397
    .local v6, "drawAngles":[F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v14}, Lcom/github/mikephil/charting/charts/PieChart;->getRotationAngle()F

    move-result v2

    .line 399
    .local v2, "angle":F
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    if-ge v9, v14, :cond_0

    .line 401
    aget v10, v6, v9

    .line 403
    .local v10, "newangle":F
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/github/mikephil/charting/data/Entry;

    .line 406
    .local v7, "e":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v14

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    float-to-double v14, v14

    const-wide v16, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpl-double v14, v14, v16

    if-lez v14, :cond_2

    .line 408
    sub-float v14, v11, v4

    float-to-double v14, v14

    .line 409
    add-float v16, v2, v10

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v17

    .line 409
    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    .line 408
    mul-double v14, v14, v16

    .line 410
    iget v0, v3, Landroid/graphics/PointF;->x:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    .line 408
    add-double v14, v14, v16

    double-to-float v12, v14

    .line 411
    .local v12, "x":F
    sub-float v14, v11, v4

    float-to-double v14, v14

    .line 412
    add-float v16, v2, v10

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v17

    .line 412
    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    .line 411
    mul-double v14, v14, v16

    .line 413
    iget v0, v3, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    .line 411
    add-double v14, v14, v16

    double-to-float v13, v14

    .line 415
    .local v13, "y":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v9}, Lcom/github/mikephil/charting/data/PieDataSet;->getColor(I)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 416
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v14, v12, v13, v4, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 419
    .end local v12    # "x":F
    .end local v13    # "y":F
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v14}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v14

    mul-float/2addr v14, v10

    add-float/2addr v2, v14

    .line 399
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0
.end method

.method public drawValues(Landroid/graphics/Canvas;)V
    .locals 32
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Landroid/graphics/PointF;

    move-result-object v7

    .line 154
    .local v7, "center":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v22

    .line 155
    .local v22, "r":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/github/mikephil/charting/charts/PieChart;->getRotationAngle()F

    move-result v23

    .line 156
    .local v23, "rotationAngle":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/github/mikephil/charting/charts/PieChart;->getDrawAngles()[F

    move-result-object v12

    .line 157
    .local v12, "drawAngles":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/github/mikephil/charting/charts/PieChart;->getAbsoluteAngles()[F

    move-result-object v6

    .line 159
    .local v6, "absoluteAngles":[F
    const/high16 v28, 0x41200000    # 10.0f

    div-float v28, v22, v28

    const v29, 0x40666666    # 3.6f

    mul-float v20, v28, v29

    .line 161
    .local v20, "off":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawHoleEnabled()Z

    move-result v28

    if-eqz v28, :cond_0

    .line 162
    const/high16 v28, 0x42c80000    # 100.0f

    div-float v28, v22, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v29

    mul-float v28, v28, v29

    sub-float v28, v22, v28

    const/high16 v29, 0x40000000    # 2.0f

    div-float v20, v28, v29

    .line 165
    :cond_0
    sub-float v22, v22, v20

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v9

    check-cast v9, Lcom/github/mikephil/charting/data/PieData;

    .line 168
    .local v9, "data":Lcom/github/mikephil/charting/data/PieData;
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/PieData;->getDataSets()Ljava/util/List;

    move-result-object v11

    .line 169
    .local v11, "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/PieDataSet;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawSliceTextEnabled()Z

    move-result v13

    .line 171
    .local v13, "drawXVals":Z
    const/4 v8, 0x0

    .line 173
    .local v8, "cnt":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v28

    move/from16 v0, v16

    move/from16 v1, v28

    if-lt v0, v1, :cond_1

    .line 228
    return-void

    .line 175
    :cond_1
    move/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/github/mikephil/charting/data/PieDataSet;

    .line 177
    .local v10, "dataSet":Lcom/github/mikephil/charting/data/PieDataSet;
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/PieDataSet;->isDrawValuesEnabled()Z

    move-result v28

    if-nez v28, :cond_3

    if-nez v13, :cond_3

    .line 173
    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 181
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->applyValueTextStyle(Lcom/github/mikephil/charting/data/DataSet;)V

    .line 183
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/PieDataSet;->getYVals()Ljava/util/List;

    move-result-object v15

    .line 185
    .local v15, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    const/16 v17, 0x0

    .line 186
    .local v17, "j":I
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v29

    mul-float v28, v28, v29

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v28, v0

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v29

    .line 185
    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->min(II)I

    move-result v19

    .local v19, "maxEntry":I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 189
    aget v28, v12, v8

    const/high16 v29, 0x40000000    # 2.0f

    div-float v21, v28, v29

    .line 192
    .local v21, "offset":F
    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v28, v0

    .line 193
    aget v30, v6, v8

    add-float v30, v30, v23

    sub-float v30, v30, v21

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v31

    .line 193
    mul-float v30, v30, v31

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->cos(D)D

    move-result-wide v30

    .line 192
    mul-double v28, v28, v30

    .line 194
    iget v0, v7, Landroid/graphics/PointF;->x:F

    move/from16 v30, v0

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    .line 192
    add-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v26, v0

    .line 195
    .local v26, "x":F
    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v28, v0

    .line 196
    aget v30, v6, v8

    add-float v30, v30, v23

    sub-float v30, v30, v21

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v31

    .line 196
    mul-float v30, v30, v31

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->sin(D)D

    move-result-wide v30

    .line 195
    mul-double v28, v28, v30

    .line 197
    iget v0, v7, Landroid/graphics/PointF;->y:F

    move/from16 v30, v0

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    .line 195
    add-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v27, v0

    .line 199
    .local v27, "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/github/mikephil/charting/charts/PieChart;->isUsePercentValuesEnabled()Z

    move-result v28

    if-eqz v28, :cond_5

    move/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual/range {v28 .. v28}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v28

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/github/mikephil/charting/charts/PieChart;->getYValueSum()F

    move-result v29

    div-float v28, v28, v29

    const/high16 v29, 0x42c80000    # 100.0f

    mul-float v25, v28, v29

    .line 202
    .local v25, "value":F
    :goto_2
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/PieDataSet;->getValueFormatter()Lcom/github/mikephil/charting/utils/ValueFormatter;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/utils/ValueFormatter;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v24

    .line 204
    .local v24, "val":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    .line 205
    const/high16 v29, 0x40800000    # 4.0f

    invoke-static/range {v29 .. v29}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v29

    .line 204
    add-float v18, v28, v29

    .line 207
    .local v18, "lineHeight":F
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/PieDataSet;->isDrawValuesEnabled()Z

    move-result v14

    .line 210
    .local v14, "drawYVals":Z
    if-eqz v13, :cond_6

    if-eqz v14, :cond_6

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 213
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/PieData;->getXValCount()I

    move-result v28

    move/from16 v0, v17

    move/from16 v1, v28

    if-ge v0, v1, :cond_4

    .line 214
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/PieData;->getXVals()Ljava/util/List;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    add-float v29, v27, v18

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    move-object/from16 v30, v0

    .line 214
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move/from16 v2, v26

    move/from16 v3, v29

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 225
    :cond_4
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 186
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 200
    .end local v14    # "drawYVals":Z
    .end local v18    # "lineHeight":F
    .end local v24    # "val":Ljava/lang/String;
    .end local v25    # "value":F
    :cond_5
    move/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual/range {v28 .. v28}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v25

    goto/16 :goto_2

    .line 217
    .restart local v14    # "drawYVals":Z
    .restart local v18    # "lineHeight":F
    .restart local v24    # "val":Ljava/lang/String;
    .restart local v25    # "value":F
    :cond_6
    if-eqz v13, :cond_7

    if-nez v14, :cond_7

    .line 218
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/PieData;->getXValCount()I

    move-result v28

    move/from16 v0, v17

    move/from16 v1, v28

    if-ge v0, v1, :cond_4

    .line 219
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/PieData;->getXVals()Ljava/util/List;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    const/high16 v29, 0x40000000    # 2.0f

    div-float v29, v18, v29

    add-float v29, v29, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move/from16 v2, v26

    move/from16 v3, v29

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 220
    :cond_7
    if-nez v13, :cond_4

    if-eqz v14, :cond_4

    .line 222
    const/high16 v28, 0x40000000    # 2.0f

    div-float v28, v18, v28

    add-float v28, v28, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v28

    move-object/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_3
.end method

.method public getPaintCenterText()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getPaintHole()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHolePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getPaintTransparentCircle()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public initBuffers()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method
