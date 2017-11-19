.class public Lcom/github/mikephil/charting/data/CandleDataSet;
.super Lcom/github/mikephil/charting/data/BarLineScatterCandleDataSet;
.source "CandleDataSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/data/BarLineScatterCandleDataSet",
        "<",
        "Lcom/github/mikephil/charting/data/CandleEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private mBodySpace:F

.field protected mDecreasingColor:I

.field protected mDecreasingPaintStyle:Landroid/graphics/Paint$Style;

.field protected mIncreasingColor:I

.field protected mIncreasingPaintStyle:Landroid/graphics/Paint$Style;

.field protected mShadowColor:I

.field private mShadowWidth:F


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .param p2, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/data/CandleEntry;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "yVals":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/CandleEntry;>;"
    const/4 v1, -0x1

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/BarLineScatterCandleDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 20
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mShadowWidth:F

    .line 23
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mBodySpace:F

    .line 26
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    iput-object v0, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mIncreasingPaintStyle:Landroid/graphics/Paint$Style;

    .line 29
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    iput-object v0, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mDecreasingPaintStyle:Landroid/graphics/Paint$Style;

    .line 32
    iput v1, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mIncreasingColor:I

    .line 35
    iput v1, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mDecreasingColor:I

    .line 41
    iput v1, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mShadowColor:I

    .line 45
    return-void
.end method


# virtual methods
.method protected calcMinMax()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 72
    iget-object v3, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mYVals:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 91
    :cond_0
    return-void

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mYVals:Ljava/util/List;

    .line 78
    .local v1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/CandleEntry;>;"
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/CandleEntry;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/CandleEntry;->getLow()F

    move-result v3

    iput v3, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mYMin:F

    .line 79
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/CandleEntry;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/CandleEntry;->getHigh()F

    move-result v3

    iput v3, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mYMax:F

    .line 81
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 83
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/CandleEntry;

    .line 85
    .local v0, "e":Lcom/github/mikephil/charting/data/CandleEntry;
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleEntry;->getLow()F

    move-result v3

    iget v4, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mYMin:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 86
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleEntry;->getLow()F

    move-result v3

    iput v3, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mYMin:F

    .line 88
    :cond_2
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleEntry;->getHigh()F

    move-result v3

    iget v4, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mYMax:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 89
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleEntry;->getHigh()F

    move-result v3

    iput v3, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mYMax:F

    .line 81
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public copy()Lcom/github/mikephil/charting/data/DataSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/mikephil/charting/data/DataSet",
            "<",
            "Lcom/github/mikephil/charting/data/CandleEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v2, "yVals":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/CandleEntry;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mYVals:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 56
    new-instance v0, Lcom/github/mikephil/charting/data/CandleDataSet;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/CandleDataSet;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/github/mikephil/charting/data/CandleDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 57
    .local v0, "copied":Lcom/github/mikephil/charting/data/CandleDataSet;
    iget-object v3, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mColors:Ljava/util/List;

    iput-object v3, v0, Lcom/github/mikephil/charting/data/CandleDataSet;->mColors:Ljava/util/List;

    .line 58
    iget v3, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mShadowWidth:F

    iput v3, v0, Lcom/github/mikephil/charting/data/CandleDataSet;->mShadowWidth:F

    .line 59
    iget v3, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mBodySpace:F

    iput v3, v0, Lcom/github/mikephil/charting/data/CandleDataSet;->mBodySpace:F

    .line 60
    iget v3, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mHighLightColor:I

    iput v3, v0, Lcom/github/mikephil/charting/data/CandleDataSet;->mHighLightColor:I

    .line 61
    iget-object v3, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mIncreasingPaintStyle:Landroid/graphics/Paint$Style;

    iput-object v3, v0, Lcom/github/mikephil/charting/data/CandleDataSet;->mIncreasingPaintStyle:Landroid/graphics/Paint$Style;

    .line 62
    iget-object v3, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mDecreasingPaintStyle:Landroid/graphics/Paint$Style;

    iput-object v3, v0, Lcom/github/mikephil/charting/data/CandleDataSet;->mDecreasingPaintStyle:Landroid/graphics/Paint$Style;

    .line 63
    iget v3, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mShadowColor:I

    iput v3, v0, Lcom/github/mikephil/charting/data/CandleDataSet;->mShadowColor:I

    .line 65
    return-object v0

    .line 53
    .end local v0    # "copied":Lcom/github/mikephil/charting/data/CandleDataSet;
    :cond_0
    iget-object v3, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mYVals:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/CandleEntry;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/CandleEntry;->copy()Lcom/github/mikephil/charting/data/CandleEntry;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getBodySpace()F
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mBodySpace:F

    return v0
.end method

.method public getDecreasingColor()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mDecreasingColor:I

    return v0
.end method

.method public getDecreasingPaintStyle()Landroid/graphics/Paint$Style;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mDecreasingPaintStyle:Landroid/graphics/Paint$Style;

    return-object v0
.end method

.method public getIncreasingColor()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mIncreasingColor:I

    return v0
.end method

.method public getIncreasingPaintStyle()Landroid/graphics/Paint$Style;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mIncreasingPaintStyle:Landroid/graphics/Paint$Style;

    return-object v0
.end method

.method public getShadowColor()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mShadowColor:I

    return v0
.end method

.method public getShadowWidth()F
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mShadowWidth:F

    return v0
.end method

.method public setBodySpace(F)V
    .locals 1
    .param p1, "space"    # F

    .prologue
    .line 101
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 102
    const/4 p1, 0x0

    .line 103
    :cond_0
    const v0, 0x3ee66666    # 0.45f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 104
    const p1, 0x3ee66666    # 0.45f

    .line 106
    :cond_1
    iput p1, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mBodySpace:F

    .line 107
    return-void
.end method

.method public setDecreasingColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 156
    iput p1, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mDecreasingColor:I

    .line 157
    return-void
.end method

.method public setDecreasingPaintStyle(Landroid/graphics/Paint$Style;)V
    .locals 0
    .param p1, "decreasingPaintStyle"    # Landroid/graphics/Paint$Style;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mDecreasingPaintStyle:Landroid/graphics/Paint$Style;

    .line 203
    return-void
.end method

.method public setIncreasingColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 175
    iput p1, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mIncreasingColor:I

    .line 176
    return-void
.end method

.method public setIncreasingPaintStyle(Landroid/graphics/Paint$Style;)V
    .locals 0
    .param p1, "paintStyle"    # Landroid/graphics/Paint$Style;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mIncreasingPaintStyle:Landroid/graphics/Paint$Style;

    .line 221
    return-void
.end method

.method public setShadowColor(I)V
    .locals 0
    .param p1, "shadowColor"    # I

    .prologue
    .line 238
    iput p1, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mShadowColor:I

    .line 239
    return-void
.end method

.method public setShadowWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 125
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mShadowWidth:F

    .line 126
    return-void
.end method
