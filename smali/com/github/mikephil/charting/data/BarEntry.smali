.class public Lcom/github/mikephil/charting/data/BarEntry;
.super Lcom/github/mikephil/charting/data/Entry;
.source "BarEntry.java"


# instance fields
.field private mVals:[F


# direct methods
.method public constructor <init>(FI)V
    .locals 0
    .param p1, "val"    # F
    .param p2, "xIndex"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    .line 34
    return-void
.end method

.method public constructor <init>(FILjava/lang/Object;)V
    .locals 0
    .param p1, "val"    # F
    .param p2, "xIndex"    # I
    .param p3, "data"    # Ljava/lang/Object;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FILjava/lang/Object;)V

    .line 58
    return-void
.end method

.method public constructor <init>([FI)V
    .locals 1
    .param p1, "vals"    # [F
    .param p2, "xIndex"    # I

    .prologue
    .line 21
    invoke-static {p1}, Lcom/github/mikephil/charting/data/BarEntry;->calcSum([F)F

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    .line 23
    iput-object p1, p0, Lcom/github/mikephil/charting/data/BarEntry;->mVals:[F

    .line 24
    return-void
.end method

.method public constructor <init>([FILjava/lang/String;)V
    .locals 1
    .param p1, "vals"    # [F
    .param p2, "xIndex"    # I
    .param p3, "label"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-static {p1}, Lcom/github/mikephil/charting/data/BarEntry;->calcSum([F)F

    move-result v0

    invoke-direct {p0, v0, p2, p3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FILjava/lang/Object;)V

    .line 46
    iput-object p1, p0, Lcom/github/mikephil/charting/data/BarEntry;->mVals:[F

    .line 47
    return-void
.end method

.method private static calcSum([F)F
    .locals 4
    .param p0, "vals"    # [F

    .prologue
    .line 137
    const/4 v1, 0x0

    .line 139
    .local v1, "sum":F
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 142
    return v1

    .line 139
    :cond_0
    aget v0, p0, v2

    .line 140
    .local v0, "f":F
    add-float/2addr v1, v0

    .line 139
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public copy()Lcom/github/mikephil/charting/data/BarEntry;
    .locals 4

    .prologue
    .line 65
    new-instance v0, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BarEntry;->getVal()F

    move-result v1

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BarEntry;->getXIndex()I

    move-result v2

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BarEntry;->getData()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FILjava/lang/Object;)V

    .line 66
    .local v0, "copied":Lcom/github/mikephil/charting/data/BarEntry;
    iget-object v1, p0, Lcom/github/mikephil/charting/data/BarEntry;->mVals:[F

    iput-object v1, v0, Lcom/github/mikephil/charting/data/BarEntry;->mVals:[F

    .line 67
    return-object v0
.end method

.method public bridge synthetic copy()Lcom/github/mikephil/charting/data/Entry;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BarEntry;->copy()Lcom/github/mikephil/charting/data/BarEntry;

    move-result-object v0

    return-object v0
.end method

.method public getBelowSum(I)F
    .locals 3
    .param p1, "stackIndex"    # I

    .prologue
    .line 115
    iget-object v2, p0, Lcom/github/mikephil/charting/data/BarEntry;->mVals:[F

    if-nez v2, :cond_1

    .line 116
    const/4 v1, 0x0

    .line 126
    :cond_0
    return v1

    .line 118
    :cond_1
    const/4 v1, 0x0

    .line 119
    .local v1, "remainder":F
    iget-object v2, p0, Lcom/github/mikephil/charting/data/BarEntry;->mVals:[F

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .line 121
    .local v0, "index":I
    :goto_0
    if-le v0, p1, :cond_0

    if-ltz v0, :cond_0

    .line 122
    iget-object v2, p0, Lcom/github/mikephil/charting/data/BarEntry;->mVals:[F

    aget v2, v2, v0

    add-float/2addr v1, v2

    .line 123
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getClosestIndexAbove(F)I
    .locals 3
    .param p1, "val"    # F

    .prologue
    .line 99
    iget-object v2, p0, Lcom/github/mikephil/charting/data/BarEntry;->mVals:[F

    if-nez v2, :cond_1

    .line 100
    const/4 v0, 0x0

    .line 110
    :cond_0
    return v0

    .line 102
    :cond_1
    iget-object v2, p0, Lcom/github/mikephil/charting/data/BarEntry;->mVals:[F

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .line 103
    .local v0, "index":I
    const/4 v1, 0x0

    .line 105
    .local v1, "remainder":F
    :goto_0
    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/github/mikephil/charting/data/BarEntry;->mVals:[F

    aget v2, v2, v0

    add-float/2addr v2, v1

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    .line 106
    iget-object v2, p0, Lcom/github/mikephil/charting/data/BarEntry;->mVals:[F

    aget v2, v2, v0

    add-float/2addr v1, v2

    .line 107
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getVals()[F
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BarEntry;->mVals:[F

    return-object v0
.end method

.method public setVals([F)V
    .locals 0
    .param p1, "vals"    # [F

    .prologue
    .line 86
    iput-object p1, p0, Lcom/github/mikephil/charting/data/BarEntry;->mVals:[F

    .line 87
    return-void
.end method
