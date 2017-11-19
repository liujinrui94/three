.class public Lcom/github/mikephil/charting/data/BubbleDataSet;
.super Lcom/github/mikephil/charting/data/BarLineScatterCandleDataSet;
.source "BubbleDataSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/data/BarLineScatterCandleDataSet",
        "<",
        "Lcom/github/mikephil/charting/data/BubbleEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private mHighlightCircleWidth:F

.field protected mMaxSize:F

.field protected mXMax:F

.field protected mXMin:F


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p2, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/data/BubbleEntry;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "yVals":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BubbleEntry;>;"
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/BarLineScatterCandleDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 19
    const/high16 v0, 0x40200000    # 2.5f

    iput v0, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mHighlightCircleWidth:F

    .line 23
    return-void
.end method

.method private largestSize(Lcom/github/mikephil/charting/data/BubbleEntry;)F
    .locals 1
    .param p1, "entry"    # Lcom/github/mikephil/charting/data/BubbleEntry;

    .prologue
    .line 137
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BubbleEntry;->getSize()F

    move-result v0

    return v0
.end method

.method private xMax(Lcom/github/mikephil/charting/data/BubbleEntry;)F
    .locals 1
    .param p1, "entry"    # Lcom/github/mikephil/charting/data/BubbleEntry;

    .prologue
    .line 133
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BubbleEntry;->getXIndex()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private xMin(Lcom/github/mikephil/charting/data/BubbleEntry;)F
    .locals 1
    .param p1, "entry"    # Lcom/github/mikephil/charting/data/BubbleEntry;

    .prologue
    .line 129
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BubbleEntry;->getXIndex()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private yMax(Lcom/github/mikephil/charting/data/BubbleEntry;)F
    .locals 1
    .param p1, "entry"    # Lcom/github/mikephil/charting/data/BubbleEntry;

    .prologue
    .line 125
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BubbleEntry;->getVal()F

    move-result v0

    return v0
.end method

.method private yMin(Lcom/github/mikephil/charting/data/BubbleEntry;)F
    .locals 1
    .param p1, "entry"    # Lcom/github/mikephil/charting/data/BubbleEntry;

    .prologue
    .line 121
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BubbleEntry;->getVal()F

    move-result v0

    return v0
.end method


# virtual methods
.method protected calcMinMax()V
    .locals 9

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getYVals()Ljava/util/List;

    move-result-object v0

    .line 55
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BubbleEntry;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 90
    return-void

    .line 55
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/BubbleEntry;

    .line 57
    .local v1, "entry":Lcom/github/mikephil/charting/data/BubbleEntry;
    invoke-direct {p0, v1}, Lcom/github/mikephil/charting/data/BubbleDataSet;->yMin(Lcom/github/mikephil/charting/data/BubbleEntry;)F

    move-result v6

    .line 58
    .local v6, "ymin":F
    invoke-direct {p0, v1}, Lcom/github/mikephil/charting/data/BubbleDataSet;->yMax(Lcom/github/mikephil/charting/data/BubbleEntry;)F

    move-result v5

    .line 60
    .local v5, "ymax":F
    iget v8, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mYMin:F

    cmpg-float v8, v6, v8

    if-gez v8, :cond_2

    .line 62
    iput v6, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mYMin:F

    .line 65
    :cond_2
    iget v8, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mYMax:F

    cmpl-float v8, v5, v8

    if-lez v8, :cond_3

    .line 67
    iput v5, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mYMax:F

    .line 70
    :cond_3
    invoke-direct {p0, v1}, Lcom/github/mikephil/charting/data/BubbleDataSet;->xMin(Lcom/github/mikephil/charting/data/BubbleEntry;)F

    move-result v4

    .line 71
    .local v4, "xmin":F
    invoke-direct {p0, v1}, Lcom/github/mikephil/charting/data/BubbleDataSet;->xMax(Lcom/github/mikephil/charting/data/BubbleEntry;)F

    move-result v3

    .line 73
    .local v3, "xmax":F
    iget v8, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mXMin:F

    cmpg-float v8, v4, v8

    if-gez v8, :cond_4

    .line 75
    iput v4, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mXMin:F

    .line 78
    :cond_4
    iget v8, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mXMax:F

    cmpl-float v8, v3, v8

    if-lez v8, :cond_5

    .line 80
    iput v3, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mXMax:F

    .line 83
    :cond_5
    invoke-direct {p0, v1}, Lcom/github/mikephil/charting/data/BubbleDataSet;->largestSize(Lcom/github/mikephil/charting/data/BubbleEntry;)F

    move-result v2

    .line 85
    .local v2, "size":F
    iget v8, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mMaxSize:F

    cmpl-float v8, v2, v8

    if-lez v8, :cond_0

    .line 87
    iput v2, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mMaxSize:F

    goto :goto_0
.end method

.method public copy()Lcom/github/mikephil/charting/data/DataSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/mikephil/charting/data/DataSet",
            "<",
            "Lcom/github/mikephil/charting/data/BubbleEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v2, "yVals":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BubbleEntry;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mYVals:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 101
    new-instance v0, Lcom/github/mikephil/charting/data/BubbleDataSet;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/github/mikephil/charting/data/BubbleDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 102
    .local v0, "copied":Lcom/github/mikephil/charting/data/BubbleDataSet;
    iget-object v3, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mColors:Ljava/util/List;

    iput-object v3, v0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mColors:Ljava/util/List;

    .line 103
    iget v3, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mHighLightColor:I

    iput v3, v0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mHighLightColor:I

    .line 105
    return-object v0

    .line 98
    .end local v0    # "copied":Lcom/github/mikephil/charting/data/BubbleDataSet;
    :cond_0
    iget-object v3, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mYVals:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/BubbleEntry;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BubbleEntry;->copy()Lcom/github/mikephil/charting/data/BubbleEntry;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getHighlightCircleWidth()F
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mHighlightCircleWidth:F

    return v0
.end method

.method public getMaxSize()F
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mMaxSize:F

    return v0
.end method

.method public getXMax()F
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mXMax:F

    return v0
.end method

.method public getXMin()F
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mXMin:F

    return v0
.end method

.method public setColor(II)V
    .locals 3
    .param p1, "color"    # I
    .param p2, "alpha"    # I

    .prologue
    .line 45
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {p2, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-super {p0, v0}, Lcom/github/mikephil/charting/data/BarLineScatterCandleDataSet;->setColor(I)V

    .line 46
    return-void
.end method

.method public setHighlightCircleWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 32
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mHighlightCircleWidth:F

    .line 33
    return-void
.end method
