.class public Lcom/github/mikephil/charting/components/YAxis;
.super Lcom/github/mikephil/charting/components/AxisBase;
.source "YAxis.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/components/YAxis$AxisDependency;,
        Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;
    }
.end annotation


# instance fields
.field private mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

.field public mAxisMaximum:F

.field public mAxisMinimum:F

.field public mAxisRange:F

.field protected mCustomAxisMax:F

.field protected mCustomAxisMin:F

.field public mDecimals:I

.field private mDrawTopYLabelEntry:Z

.field public mEntries:[F

.field public mEntryCount:I

.field protected mInverted:Z

.field private mLabelCount:I

.field private mPosition:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

.field protected mShowOnlyMinMax:Z

.field protected mSpacePercentBottom:F

.field protected mSpacePercentTop:F

.field protected mStartAtZero:Z

.field protected mValueFormatter:Lcom/github/mikephil/charting/utils/ValueFormatter;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x7fc00000    # NaNf

    const/high16 v3, 0x41200000    # 10.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Lcom/github/mikephil/charting/components/AxisBase;-><init>()V

    .line 25
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mEntries:[F

    .line 34
    const/4 v0, 0x6

    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mLabelCount:I

    .line 37
    iput-boolean v5, p0, Lcom/github/mikephil/charting/components/YAxis;->mDrawTopYLabelEntry:Z

    .line 40
    iput-boolean v2, p0, Lcom/github/mikephil/charting/components/YAxis;->mShowOnlyMinMax:Z

    .line 43
    iput-boolean v2, p0, Lcom/github/mikephil/charting/components/YAxis;->mInverted:Z

    .line 46
    iput-boolean v5, p0, Lcom/github/mikephil/charting/components/YAxis;->mStartAtZero:Z

    .line 49
    iput v4, p0, Lcom/github/mikephil/charting/components/YAxis;->mCustomAxisMin:F

    .line 52
    iput v4, p0, Lcom/github/mikephil/charting/components/YAxis;->mCustomAxisMax:F

    .line 58
    iput v3, p0, Lcom/github/mikephil/charting/components/YAxis;->mSpacePercentTop:F

    .line 64
    iput v3, p0, Lcom/github/mikephil/charting/components/YAxis;->mSpacePercentBottom:F

    .line 66
    iput v1, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisMaximum:F

    .line 67
    iput v1, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisMinimum:F

    .line 70
    iput v1, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisRange:F

    .line 73
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->OUTSIDE_CHART:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mPosition:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    .line 95
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 96
    return-void
.end method

.method public constructor <init>(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V
    .locals 6
    .param p1, "position"    # Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x7fc00000    # NaNf

    const/high16 v3, 0x41200000    # 10.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Lcom/github/mikephil/charting/components/AxisBase;-><init>()V

    .line 25
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mEntries:[F

    .line 34
    const/4 v0, 0x6

    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mLabelCount:I

    .line 37
    iput-boolean v5, p0, Lcom/github/mikephil/charting/components/YAxis;->mDrawTopYLabelEntry:Z

    .line 40
    iput-boolean v2, p0, Lcom/github/mikephil/charting/components/YAxis;->mShowOnlyMinMax:Z

    .line 43
    iput-boolean v2, p0, Lcom/github/mikephil/charting/components/YAxis;->mInverted:Z

    .line 46
    iput-boolean v5, p0, Lcom/github/mikephil/charting/components/YAxis;->mStartAtZero:Z

    .line 49
    iput v4, p0, Lcom/github/mikephil/charting/components/YAxis;->mCustomAxisMin:F

    .line 52
    iput v4, p0, Lcom/github/mikephil/charting/components/YAxis;->mCustomAxisMax:F

    .line 58
    iput v3, p0, Lcom/github/mikephil/charting/components/YAxis;->mSpacePercentTop:F

    .line 64
    iput v3, p0, Lcom/github/mikephil/charting/components/YAxis;->mSpacePercentBottom:F

    .line 66
    iput v1, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisMaximum:F

    .line 67
    iput v1, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisMinimum:F

    .line 70
    iput v1, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisRange:F

    .line 73
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->OUTSIDE_CHART:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mPosition:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    .line 100
    iput-object p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 101
    return-void
.end method


# virtual methods
.method public getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    return-object v0
.end method

.method public getAxisMaxValue()F
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mCustomAxisMax:F

    return v0
.end method

.method public getAxisMinValue()F
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mCustomAxisMin:F

    return v0
.end method

.method public getFormattedLabel(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 349
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mEntries:[F

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 350
    :cond_0
    const-string v0, ""

    .line 352
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->getValueFormatter()Lcom/github/mikephil/charting/utils/ValueFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/components/YAxis;->mEntries:[F

    aget v1, v1, p1

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/utils/ValueFormatter;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLabelCount()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mLabelCount:I

    return v0
.end method

.method public getLabelPosition()Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mPosition:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    return-object v0
.end method

.method public getLongestLabel()Ljava/lang/String;
    .locals 5

    .prologue
    .line 328
    const-string v1, ""

    .line 330
    .local v1, "longest":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/github/mikephil/charting/components/YAxis;->mEntries:[F

    array-length v3, v3

    if-lt v0, v3, :cond_0

    .line 337
    return-object v1

    .line 331
    :cond_0
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/components/YAxis;->getFormattedLabel(I)Ljava/lang/String;

    move-result-object v2

    .line 333
    .local v2, "text":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 334
    move-object v1, v2

    .line 330
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getRequiredHeightSpace(Landroid/graphics/Paint;)F
    .locals 4
    .param p1, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 319
    iget v1, p0, Lcom/github/mikephil/charting/components/YAxis;->mTextSize:F

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 321
    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->getLongestLabel()Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "label":Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->getYOffset()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    return v1
.end method

.method public getRequiredWidthSpace(Landroid/graphics/Paint;)F
    .locals 4
    .param p1, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 311
    iget v1, p0, Lcom/github/mikephil/charting/components/YAxis;->mTextSize:F

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 313
    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->getLongestLabel()Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "label":Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/github/mikephil/charting/utils/Utils;->calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->getXOffset()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    return v1
.end method

.method public getSpaceBottom()F
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mSpacePercentBottom:F

    return v0
.end method

.method public getSpaceTop()F
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mSpacePercentTop:F

    return v0
.end method

.method public getValueFormatter()Lcom/github/mikephil/charting/utils/ValueFormatter;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mValueFormatter:Lcom/github/mikephil/charting/utils/ValueFormatter;

    return-object v0
.end method

.method public isDrawTopYLabelEntryEnabled()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mDrawTopYLabelEntry:Z

    return v0
.end method

.method public isInverted()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mInverted:Z

    return v0
.end method

.method public isShowOnlyMinMaxEnabled()Z
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mShowOnlyMinMax:Z

    return v0
.end method

.method public isStartAtZeroEnabled()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mStartAtZero:Z

    return v0
.end method

.method public needsDefaultFormatter()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 388
    iget-object v1, p0, Lcom/github/mikephil/charting/components/YAxis;->mValueFormatter:Lcom/github/mikephil/charting/utils/ValueFormatter;

    if-nez v1, :cond_1

    .line 393
    :cond_0
    :goto_0
    return v0

    .line 390
    :cond_1
    iget-object v1, p0, Lcom/github/mikephil/charting/components/YAxis;->mValueFormatter:Lcom/github/mikephil/charting/utils/ValueFormatter;

    instance-of v1, v1, Lcom/github/mikephil/charting/utils/DefaultValueFormatter;

    if-nez v1, :cond_0

    .line 393
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needsOffset()Z
    .locals 2

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->isDrawLabelsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->getLabelPosition()Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->OUTSIDE_CHART:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    if-ne v0, v1, :cond_0

    .line 405
    const/4 v0, 0x1

    .line 407
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetAxisMaxValue()V
    .locals 1

    .prologue
    .line 270
    const/high16 v0, 0x7fc00000    # NaNf

    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mCustomAxisMax:F

    .line 271
    return-void
.end method

.method public resetAxisMinValue()V
    .locals 1

    .prologue
    .line 247
    const/high16 v0, 0x7fc00000    # NaNf

    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mCustomAxisMin:F

    .line 248
    return-void
.end method

.method public setAxisMaxValue(F)V
    .locals 0
    .param p1, "max"    # F

    .prologue
    .line 262
    iput p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mCustomAxisMax:F

    .line 263
    return-void
.end method

.method public setAxisMinValue(F)V
    .locals 0
    .param p1, "min"    # F

    .prologue
    .line 239
    iput p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mCustomAxisMin:F

    .line 240
    return-void
.end method

.method public setDrawTopYLabelEntry(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mDrawTopYLabelEntry:Z

    .line 141
    return-void
.end method

.method public setInverted(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 195
    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mInverted:Z

    .line 196
    return-void
.end method

.method public setLabelCount(I)V
    .locals 1
    .param p1, "yCount"    # I

    .prologue
    .line 152
    const/16 v0, 0x19

    if-le p1, v0, :cond_0

    .line 153
    const/16 p1, 0x19

    .line 154
    :cond_0
    const/4 v0, 0x2

    if-ge p1, v0, :cond_1

    .line 155
    const/4 p1, 0x2

    .line 157
    :cond_1
    iput p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mLabelCount:I

    .line 158
    return-void
.end method

.method public setPosition(Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;)V
    .locals 0
    .param p1, "pos"    # Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mPosition:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    .line 121
    return-void
.end method

.method public setShowOnlyMinMax(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mShowOnlyMinMax:Z

    .line 177
    return-void
.end method

.method public setSpaceBottom(F)V
    .locals 0
    .param p1, "percent"    # F

    .prologue
    .line 297
    iput p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mSpacePercentBottom:F

    .line 298
    return-void
.end method

.method public setSpaceTop(F)V
    .locals 0
    .param p1, "percent"    # F

    .prologue
    .line 279
    iput p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mSpacePercentTop:F

    .line 280
    return-void
.end method

.method public setStartAtZero(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 213
    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mStartAtZero:Z

    .line 214
    return-void
.end method

.method public setValueFormatter(Lcom/github/mikephil/charting/utils/ValueFormatter;)V
    .locals 0
    .param p1, "f"    # Lcom/github/mikephil/charting/utils/ValueFormatter;

    .prologue
    .line 366
    if-nez p1, :cond_0

    .line 370
    :goto_0
    return-void

    .line 369
    :cond_0
    iput-object p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mValueFormatter:Lcom/github/mikephil/charting/utils/ValueFormatter;

    goto :goto_0
.end method
