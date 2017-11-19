.class public Lcom/github/mikephil/charting/components/Legend;
.super Lcom/github/mikephil/charting/components/ComponentBase;
.source "Legend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/components/Legend$LegendDirection;,
        Lcom/github/mikephil/charting/components/Legend$LegendForm;,
        Lcom/github/mikephil/charting/components/Legend$LegendPosition;
    }
.end annotation


# instance fields
.field private mColors:[I

.field private mDirection:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

.field private mFormSize:F

.field private mFormToTextSpace:F

.field private mLabels:[Ljava/lang/String;

.field public mNeededHeight:F

.field public mNeededWidth:F

.field private mPosition:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

.field private mShape:Lcom/github/mikephil/charting/components/Legend$LegendForm;

.field private mStackSpace:F

.field public mTextHeightMax:F

.field public mTextWidthMax:F

.field private mXEntrySpace:F

.field private mYEntrySpace:F


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/high16 v5, 0x41000000    # 8.0f

    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v3, 0x40c00000    # 6.0f

    const/4 v2, 0x0

    const/high16 v1, 0x40a00000    # 5.0f

    .line 73
    invoke-direct {p0}, Lcom/github/mikephil/charting/components/ComponentBase;-><init>()V

    .line 41
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mPosition:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 44
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mDirection:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    .line 47
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendForm;->SQUARE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mShape:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 50
    iput v5, p0, Lcom/github/mikephil/charting/components/Legend;->mFormSize:F

    .line 55
    iput v3, p0, Lcom/github/mikephil/charting/components/Legend;->mXEntrySpace:F

    .line 60
    iput v1, p0, Lcom/github/mikephil/charting/components/Legend;->mYEntrySpace:F

    .line 67
    iput v1, p0, Lcom/github/mikephil/charting/components/Legend;->mFormToTextSpace:F

    .line 70
    iput v4, p0, Lcom/github/mikephil/charting/components/Legend;->mStackSpace:F

    .line 454
    iput v2, p0, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    .line 457
    iput v2, p0, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    .line 459
    iput v2, p0, Lcom/github/mikephil/charting/components/Legend;->mTextHeightMax:F

    .line 461
    iput v2, p0, Lcom/github/mikephil/charting/components/Legend;->mTextWidthMax:F

    .line 75
    invoke-static {v5}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mFormSize:F

    .line 76
    invoke-static {v3}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mXEntrySpace:F

    .line 77
    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mYEntrySpace:F

    .line 78
    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mFormToTextSpace:F

    .line 79
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mTextSize:F

    .line 80
    invoke-static {v4}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mStackSpace:F

    .line 81
    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mXOffset:F

    .line 82
    invoke-static {v3}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mYOffset:F

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/github/mikephil/charting/components/Legend;-><init>()V

    .line 116
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "colors array or labels array is NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 122
    const-string v1, "colors array and labels array need to be of same size"

    .line 121
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_2
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertIntegers(Ljava/util/List;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mColors:[I

    .line 126
    invoke-static {p2}, Lcom/github/mikephil/charting/utils/Utils;->convertStrings(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    .line 127
    return-void
.end method

.method public constructor <init>([I[Ljava/lang/String;)V
    .locals 2
    .param p1, "colors"    # [I
    .param p2, "labels"    # [Ljava/lang/String;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/github/mikephil/charting/components/Legend;-><init>()V

    .line 94
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "colors array or labels array is NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_1
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_2

    .line 99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 100
    const-string v1, "colors array and labels array need to be of same size"

    .line 99
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_2
    iput-object p1, p0, Lcom/github/mikephil/charting/components/Legend;->mColors:[I

    .line 104
    iput-object p2, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    .line 105
    return-void
.end method


# virtual methods
.method public calculateDimensions(Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "labelpaint"    # Landroid/graphics/Paint;

    .prologue
    .line 472
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mPosition:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->RIGHT_OF_CHART:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    if-eq v0, v1, :cond_0

    .line 473
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mPosition:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->RIGHT_OF_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    if-eq v0, v1, :cond_0

    .line 474
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mPosition:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->LEFT_OF_CHART:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    if-eq v0, v1, :cond_0

    .line 475
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mPosition:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->LEFT_OF_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    if-eq v0, v1, :cond_0

    .line 476
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mPosition:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->PIECHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    if-ne v0, v1, :cond_1

    .line 477
    :cond_0
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/components/Legend;->getMaximumEntryWidth(Landroid/graphics/Paint;)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    .line 478
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/components/Legend;->getFullHeight(Landroid/graphics/Paint;)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    .line 479
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mTextWidthMax:F

    .line 480
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/components/Legend;->getMaximumEntryHeight(Landroid/graphics/Paint;)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mTextHeightMax:F

    .line 489
    :goto_0
    return-void

    .line 484
    :cond_1
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/components/Legend;->getFullWidth(Landroid/graphics/Paint;)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    .line 485
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/components/Legend;->getMaximumEntryHeight(Landroid/graphics/Paint;)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    .line 486
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/components/Legend;->getMaximumEntryWidth(Landroid/graphics/Paint;)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mTextWidthMax:F

    .line 487
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mTextHeightMax:F

    goto :goto_0
.end method

.method public getColors()[I
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mColors:[I

    return-object v0
.end method

.method public getDirection()Lcom/github/mikephil/charting/components/Legend$LegendDirection;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mDirection:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    return-object v0
.end method

.method public getForm()Lcom/github/mikephil/charting/components/Legend$LegendForm;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mShape:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    return-object v0
.end method

.method public getFormSize()F
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->mFormSize:F

    return v0
.end method

.method public getFormToTextSpace()F
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->mFormToTextSpace:F

    return v0
.end method

.method public getFullHeight(Landroid/graphics/Paint;)F
    .locals 3
    .param p1, "labelpaint"    # Landroid/graphics/Paint;

    .prologue
    .line 436
    const/4 v0, 0x0

    .line 438
    .local v0, "height":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 450
    return v0

    .line 441
    :cond_0
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 443
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    .line 445
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 446
    iget v2, p0, Lcom/github/mikephil/charting/components/Legend;->mYEntrySpace:F

    add-float/2addr v0, v2

    .line 438
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getFullWidth(Landroid/graphics/Paint;)F
    .locals 4
    .param p1, "labelpaint"    # Landroid/graphics/Paint;

    .prologue
    .line 403
    const/4 v1, 0x0

    .line 405
    .local v1, "width":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 425
    return v1

    .line 408
    :cond_0
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    .line 411
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mColors:[I

    aget v2, v2, v0

    const/4 v3, -0x2

    if-eq v2, v3, :cond_1

    .line 412
    iget v2, p0, Lcom/github/mikephil/charting/components/Legend;->mFormSize:F

    iget v3, p0, Lcom/github/mikephil/charting/components/Legend;->mFormToTextSpace:F

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 414
    :cond_1
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {p1, v2}, Lcom/github/mikephil/charting/utils/Utils;->calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 416
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    .line 417
    iget v2, p0, Lcom/github/mikephil/charting/components/Legend;->mXEntrySpace:F

    add-float/2addr v1, v2

    .line 405
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 419
    :cond_3
    iget v2, p0, Lcom/github/mikephil/charting/components/Legend;->mFormSize:F

    add-float/2addr v1, v2

    .line 420
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    .line 421
    iget v2, p0, Lcom/github/mikephil/charting/components/Legend;->mStackSpace:F

    add-float/2addr v1, v2

    goto :goto_1
.end method

.method public getLabel(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 221
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLegendLabels()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaximumEntryHeight(Landroid/graphics/Paint;)F
    .locals 4
    .param p1, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 170
    const/4 v2, 0x0

    .line 172
    .local v2, "max":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    array-length v3, v3

    if-lt v0, v3, :cond_0

    .line 183
    return v2

    .line 174
    :cond_0
    iget-object v3, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_1

    .line 176
    iget-object v3, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {p1, v3}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v3

    int-to-float v1, v3

    .line 178
    .local v1, "length":F
    cmpl-float v3, v1, v2

    if-lez v3, :cond_1

    .line 179
    move v2, v1

    .line 172
    .end local v1    # "length":F
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getMaximumEntryWidth(Landroid/graphics/Paint;)F
    .locals 5
    .param p1, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 146
    const/4 v2, 0x0

    .line 148
    .local v2, "max":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    array-length v3, v3

    if-lt v0, v3, :cond_0

    .line 159
    iget v3, p0, Lcom/github/mikephil/charting/components/Legend;->mFormSize:F

    add-float/2addr v3, v2

    iget v4, p0, Lcom/github/mikephil/charting/components/Legend;->mFormToTextSpace:F

    add-float/2addr v3, v4

    return v3

    .line 150
    :cond_0
    iget-object v3, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_1

    .line 152
    iget-object v3, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {p1, v3}, Lcom/github/mikephil/charting/utils/Utils;->calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v3

    int-to-float v1, v3

    .line 154
    .local v1, "length":F
    cmpl-float v3, v1, v2

    if-lez v3, :cond_1

    .line 155
    move v2, v1

    .line 148
    .end local v1    # "length":F
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getPosition()Lcom/github/mikephil/charting/components/Legend$LegendPosition;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mPosition:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    return-object v0
.end method

.method public getStackSpace()F
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->mStackSpace:F

    return v0
.end method

.method public getXEntrySpace()F
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->mXEntrySpace:F

    return v0
.end method

.method public getYEntrySpace()F
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->mYEntrySpace:F

    return v0
.end method

.method public setColors(Ljava/util/List;)V
    .locals 1
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
    .line 130
    .local p1, "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertIntegers(Ljava/util/List;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mColors:[I

    .line 131
    return-void
.end method

.method public setDirection(Lcom/github/mikephil/charting/components/Legend$LegendDirection;)V
    .locals 0
    .param p1, "pos"    # Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/github/mikephil/charting/components/Legend;->mDirection:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    .line 258
    return-void
.end method

.method public setForm(Lcom/github/mikephil/charting/components/Legend$LegendForm;)V
    .locals 0
    .param p1, "shape"    # Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/github/mikephil/charting/components/Legend;->mShape:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 276
    return-void
.end method

.method public setFormSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 285
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mFormSize:F

    .line 286
    return-void
.end method

.method public setFormToTextSpace(F)V
    .locals 1
    .param p1, "space"    # F

    .prologue
    .line 352
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mFormToTextSpace:F

    .line 353
    return-void
.end method

.method public setLabels(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertStrings(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setLabels([Ljava/lang/String;)V
    .locals 0
    .param p1, "labels"    # [Ljava/lang/String;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    .line 212
    return-void
.end method

.method public setPosition(Lcom/github/mikephil/charting/components/Legend$LegendPosition;)V
    .locals 0
    .param p1, "pos"    # Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/github/mikephil/charting/components/Legend;->mPosition:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 240
    return-void
.end method

.method public setStackSpace(F)V
    .locals 0
    .param p1, "space"    # F

    .prologue
    .line 393
    iput p1, p0, Lcom/github/mikephil/charting/components/Legend;->mStackSpace:F

    .line 394
    return-void
.end method

.method public setXEntrySpace(F)V
    .locals 1
    .param p1, "space"    # F

    .prologue
    .line 314
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mXEntrySpace:F

    .line 315
    return-void
.end method

.method public setYEntrySpace(F)V
    .locals 1
    .param p1, "space"    # F

    .prologue
    .line 333
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mYEntrySpace:F

    .line 334
    return-void
.end method
