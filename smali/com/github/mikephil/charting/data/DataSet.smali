.class public abstract Lcom/github/mikephil/charting/data/DataSet;
.super Ljava/lang/Object;
.source "DataSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

.field protected mColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mDrawValues:Z

.field private mLabel:Ljava/lang/String;

.field private mValueColor:I

.field protected mValueFormatter:Lcom/github/mikephil/charting/utils/ValueFormatter;

.field private mValueTextSize:F

.field private mValueTypeface:Landroid/graphics/Typeface;

.field private mVisible:Z

.field protected mYMax:F

.field protected mYMin:F

.field protected mYVals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mYValueSum:F


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .param p2, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    .local p1, "yVals":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mColors:Ljava/util/List;

    .line 31
    iput-object v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    .line 34
    iput v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMax:F

    .line 37
    iput v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMin:F

    .line 40
    iput v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYValueSum:F

    .line 43
    const-string v0, "DataSet"

    iput-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mLabel:Ljava/lang/String;

    .line 46
    iput-boolean v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mVisible:Z

    .line 49
    iput-boolean v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mDrawValues:Z

    .line 52
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mValueColor:I

    .line 55
    const/high16 v0, 0x41880000    # 17.0f

    iput v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mValueTextSize:F

    .line 64
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    iput-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 76
    iput-object p2, p0, Lcom/github/mikephil/charting/data/DataSet;->mLabel:Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    .line 79
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    .line 82
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mColors:Ljava/util/List;

    .line 85
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mColors:Ljava/util/List;

    const/16 v1, 0x8c

    const/16 v2, 0xea

    const/16 v3, 0xff

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/DataSet;->calcMinMax()V

    .line 88
    invoke-direct {p0}, Lcom/github/mikephil/charting/data/DataSet;->calcYValueSum()V

    .line 89
    return-void
.end method

.method private calcYValueSum()V
    .locals 4

    .prologue
    .line 130
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    const/4 v2, 0x0

    iput v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYValueSum:F

    .line 132
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 137
    return-void

    .line 133
    :cond_0
    iget-object v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/Entry;

    .line 134
    .local v0, "e":Lcom/github/mikephil/charting/data/Entry;
    if-eqz v0, :cond_1

    .line 135
    iget v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYValueSum:F

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYValueSum:F

    .line 132
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 549
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mColors:Ljava/util/List;

    if-nez v0, :cond_0

    .line 550
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mColors:Ljava/util/List;

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mColors:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 552
    return-void
.end method

.method public addEntry(Lcom/github/mikephil/charting/data/Entry;)V
    .locals 2
    .param p1, "e"    # Lcom/github/mikephil/charting/data/Entry;

    .prologue
    .line 430
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    if-nez p1, :cond_0

    .line 453
    :goto_0
    return-void

    .line 433
    :cond_0
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v0

    .line 435
    .local v0, "val":F
    iget-object v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    if-nez v1, :cond_1

    .line 436
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    .line 439
    :cond_1
    iget-object v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 440
    iput v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMax:F

    .line 441
    iput v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMin:F

    .line 449
    :cond_2
    :goto_1
    iget v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYValueSum:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYValueSum:F

    .line 452
    iget-object v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 443
    :cond_3
    iget v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMax:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_4

    .line 444
    iput v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMax:F

    .line 445
    :cond_4
    iget v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMin:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_2

    .line 446
    iput v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMin:F

    goto :goto_1
.end method

.method protected calcMinMax()V
    .locals 4

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    const/4 v3, 0x0

    .line 103
    iget-object v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 123
    :cond_0
    return-void

    .line 107
    :cond_1
    iget-object v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    iput v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMin:F

    .line 108
    iget-object v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    iput v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMax:F

    .line 110
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 112
    iget-object v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/Entry;

    .line 114
    .local v0, "e":Lcom/github/mikephil/charting/data/Entry;
    if-eqz v0, :cond_3

    .line 116
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    iget v3, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMin:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 117
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    iput v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMin:F

    .line 119
    :cond_2
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    iget v3, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMax:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 120
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    iput v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMax:F

    .line 110
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 728
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 729
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/DataSet;->notifyDataSetChanged()V

    .line 730
    return-void
.end method

.method public contains(Lcom/github/mikephil/charting/data/Entry;)Z
    .locals 3
    .param p1, "e"    # Lcom/github/mikephil/charting/data/Entry;

    .prologue
    .line 716
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iget-object v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 721
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 716
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/Entry;

    .line 717
    .local v0, "entry":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 718
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public abstract copy()Lcom/github/mikephil/charting/data/DataSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/mikephil/charting/data/DataSet",
            "<TT;>;"
        }
    .end annotation
.end method

.method public getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;
    .locals 1

    .prologue
    .line 388
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    return-object v0
.end method

.method public getColor()I
    .locals 2

    .prologue
    .line 592
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mColors:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColor(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 582
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mColors:Ljava/util/List;

    iget-object v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mColors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 571
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mColors:Ljava/util/List;

    return-object v0
.end method

.method public getEntriesForXIndex(I)Ljava/util/List;
    .locals 7
    .param p1, "x"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v3, 0x0

    .line 217
    .local v3, "low":I
    iget-object v5, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 219
    .local v2, "high":I
    :goto_0
    if-le v3, v2, :cond_0

    .line 248
    return-object v0

    .line 220
    :cond_0
    add-int v5, v2, v3

    div-int/lit8 v4, v5, 0x2

    .line 221
    .local v4, "m":I
    iget-object v5, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/Entry;

    .line 223
    .local v1, "entry":Lcom/github/mikephil/charting/data/Entry;, "TT;"
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v5

    if-ne p1, v5, :cond_2

    .line 224
    :goto_1
    if-lez v4, :cond_1

    iget-object v5, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    add-int/lit8 v6, v4, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v5

    if-eq v5, p1, :cond_3

    .line 227
    :cond_1
    iget-object v5, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 228
    :goto_2
    if-lt v4, v2, :cond_4

    .line 242
    :cond_2
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v5

    if-le p1, v5, :cond_5

    .line 243
    add-int/lit8 v3, v4, 0x1

    goto :goto_0

    .line 225
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 230
    :cond_4
    iget-object v5, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "entry":Lcom/github/mikephil/charting/data/Entry;, "TT;"
    check-cast v1, Lcom/github/mikephil/charting/data/Entry;

    .line 231
    .restart local v1    # "entry":Lcom/github/mikephil/charting/data/Entry;, "TT;"
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v5

    if-ne v5, p1, :cond_2

    .line 233
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 245
    :cond_5
    add-int/lit8 v2, v4, -0x1

    goto :goto_0
.end method

.method public getEntryCount()I
    .locals 1

    .prologue
    .line 145
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;
    .locals 6
    .param p1, "x"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 179
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    const/4 v2, 0x0

    .line 180
    .local v2, "low":I
    iget-object v4, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 181
    .local v1, "high":I
    const/4 v0, 0x0

    .line 183
    .local v0, "closest":Lcom/github/mikephil/charting/data/Entry;, "TT;"
    :goto_0
    if-le v2, v1, :cond_0

    move-object v4, v0

    .line 201
    :goto_1
    return-object v4

    .line 184
    :cond_0
    add-int v4, v1, v2

    div-int/lit8 v3, v4, 0x2

    .line 186
    .local v3, "m":I
    iget-object v4, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v4

    if-ne p1, v4, :cond_3

    .line 187
    :goto_2
    if-lez v3, :cond_1

    iget-object v4, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    add-int/lit8 v5, v3, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v4

    if-eq v4, p1, :cond_2

    .line 190
    :cond_1
    iget-object v4, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/data/Entry;

    goto :goto_1

    .line 188
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 193
    :cond_3
    iget-object v4, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v4

    if-le p1, v4, :cond_4

    .line 194
    add-int/lit8 v2, v3, 0x1

    .line 198
    :goto_3
    iget-object v4, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "closest":Lcom/github/mikephil/charting/data/Entry;, "TT;"
    check-cast v0, Lcom/github/mikephil/charting/data/Entry;

    .restart local v0    # "closest":Lcom/github/mikephil/charting/data/Entry;, "TT;"
    goto :goto_0

    .line 196
    :cond_4
    add-int/lit8 v1, v3, -0x1

    goto :goto_3
.end method

.method public getEntryPosition(Lcom/github/mikephil/charting/data/Entry;)I
    .locals 2
    .param p1, "e"    # Lcom/github/mikephil/charting/data/Entry;

    .prologue
    .line 611
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 616
    const/4 v0, -0x1

    .end local v0    # "i":I
    :cond_0
    return v0

    .line 612
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/data/Entry;->equalTo(Lcom/github/mikephil/charting/data/Entry;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 611
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getIndexInEntries(I)I
    .locals 2
    .param p1, "xIndex"    # I

    .prologue
    .line 307
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 312
    const/4 v0, -0x1

    .end local v0    # "i":I
    :cond_0
    return v0

    .line 308
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 307
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getValueCount()I
    .locals 1

    .prologue
    .line 293
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getValueFormatter()Lcom/github/mikephil/charting/utils/ValueFormatter;
    .locals 2

    .prologue
    .line 642
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mValueFormatter:Lcom/github/mikephil/charting/utils/ValueFormatter;

    if-nez v0, :cond_0

    .line 643
    new-instance v0, Lcom/github/mikephil/charting/utils/DefaultValueFormatter;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/utils/DefaultValueFormatter;-><init>(I)V

    .line 644
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mValueFormatter:Lcom/github/mikephil/charting/utils/ValueFormatter;

    goto :goto_0
.end method

.method public getValueTextColor()I
    .locals 1

    .prologue
    .line 672
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mValueColor:I

    return v0
.end method

.method public getValueTextSize()F
    .locals 1

    .prologue
    .line 703
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mValueTextSize:F

    return v0
.end method

.method public getValueTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 685
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mValueTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getYMax()F
    .locals 1

    .prologue
    .line 284
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMax:F

    return v0
.end method

.method public getYMin()F
    .locals 1

    .prologue
    .line 275
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMin:F

    return v0
.end method

.method public getYValForXIndex(I)F
    .locals 2
    .param p1, "xIndex"    # I

    .prologue
    .line 159
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/data/DataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    .line 161
    .local v0, "e":Lcom/github/mikephil/charting/data/Entry;
    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v1

    .line 164
    :goto_0
    return v1

    :cond_0
    const/high16 v1, 0x7fc00000    # NaNf

    goto :goto_0
.end method

.method public getYVals()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 257
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    return-object v0
.end method

.method public getYValueSum()F
    .locals 1

    .prologue
    .line 266
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYValueSum:F

    return v0
.end method

.method public isDrawValuesEnabled()Z
    .locals 1

    .prologue
    .line 418
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mDrawValues:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 379
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mVisible:Z

    return v0
.end method

.method public needsDefaultFormatter()Z
    .locals 2

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    const/4 v0, 0x1

    .line 654
    iget-object v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mValueFormatter:Lcom/github/mikephil/charting/utils/ValueFormatter;

    if-nez v1, :cond_1

    .line 659
    :cond_0
    :goto_0
    return v0

    .line 656
    :cond_1
    iget-object v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mValueFormatter:Lcom/github/mikephil/charting/utils/ValueFormatter;

    instance-of v1, v1, Lcom/github/mikephil/charting/utils/DefaultValueFormatter;

    if-nez v1, :cond_0

    .line 659
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 95
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/DataSet;->calcMinMax()V

    .line 96
    invoke-direct {p0}, Lcom/github/mikephil/charting/data/DataSet;->calcYValueSum()V

    .line 97
    return-void
.end method

.method public removeEntry(I)Z
    .locals 2
    .param p1, "xIndex"    # I

    .prologue
    .line 490
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/data/DataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    .line 491
    .local v0, "e":Lcom/github/mikephil/charting/data/Entry;, "TT;"
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/DataSet;->removeEntry(Lcom/github/mikephil/charting/data/Entry;)Z

    move-result v1

    return v1
.end method

.method public removeEntry(Lcom/github/mikephil/charting/data/Entry;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 465
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    .local p1, "e":Lcom/github/mikephil/charting/data/Entry;, "TT;"
    if-nez p1, :cond_1

    .line 466
    const/4 v0, 0x0

    .line 479
    :cond_0
    :goto_0
    return v0

    .line 469
    :cond_1
    iget-object v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 471
    .local v0, "removed":Z
    if-eqz v0, :cond_0

    .line 473
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v1

    .line 474
    .local v1, "val":F
    iget v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYValueSum:F

    sub-float/2addr v2, v1

    iput v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYValueSum:F

    .line 476
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/DataSet;->calcMinMax()V

    goto :goto_0
.end method

.method public resetColors()V
    .locals 1

    .prologue
    .line 599
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mColors:Ljava/util/List;

    .line 600
    return-void
.end method

.method public setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V
    .locals 0
    .param p1, "dependency"    # Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .prologue
    .line 398
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/data/DataSet;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 399
    return-void
.end method

.method public setColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 561
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/DataSet;->resetColors()V

    .line 562
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mColors:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    return-void
.end method

.method public setColors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 506
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    .local p1, "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/data/DataSet;->mColors:Ljava/util/List;

    .line 507
    return-void
.end method

.method public setColors([I)V
    .locals 1
    .param p1, "colors"    # [I

    .prologue
    .line 519
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/ColorTemplate;->createColors([I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mColors:Ljava/util/List;

    .line 520
    return-void
.end method

.method public setColors([ILandroid/content/Context;)V
    .locals 5
    .param p1, "colors"    # [I
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    .line 534
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 536
    .local v0, "clrs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 540
    iput-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mColors:Ljava/util/List;

    .line 541
    return-void

    .line 536
    :cond_0
    aget v1, p1, v2

    .line 537
    .local v1, "color":I
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setDrawValues(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 409
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/DataSet;->mDrawValues:Z

    .line 410
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 350
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/data/DataSet;->mLabel:Ljava/lang/String;

    .line 351
    return-void
.end method

.method public setValueFormatter(Lcom/github/mikephil/charting/utils/ValueFormatter;)V
    .locals 0
    .param p1, "f"    # Lcom/github/mikephil/charting/utils/ValueFormatter;

    .prologue
    .line 630
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    if-nez p1, :cond_0

    .line 634
    :goto_0
    return-void

    .line 633
    :cond_0
    iput-object p1, p0, Lcom/github/mikephil/charting/data/DataSet;->mValueFormatter:Lcom/github/mikephil/charting/utils/ValueFormatter;

    goto :goto_0
.end method

.method public setValueTextColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 668
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iput p1, p0, Lcom/github/mikephil/charting/data/DataSet;->mValueColor:I

    .line 669
    return-void
.end method

.method public setValueTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 694
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mValueTextSize:F

    .line 695
    return-void
.end method

.method public setValueTypeface(Landroid/graphics/Typeface;)V
    .locals 0
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 681
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/data/DataSet;->mValueTypeface:Landroid/graphics/Typeface;

    .line 682
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 369
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/DataSet;->mVisible:Z

    .line 370
    return-void
.end method

.method public toSimpleString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 339
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 340
    .local v0, "buffer":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DataSet, label: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", entries: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 341
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 324
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 325
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/DataSet;->toSimpleString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 326
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 329
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 327
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 326
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
