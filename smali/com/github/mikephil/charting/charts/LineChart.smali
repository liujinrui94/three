.class public Lcom/github/mikephil/charting/charts/LineChart;
.super Lcom/github/mikephil/charting/charts/BarLineChartBase;
.source "LineChart.java"

# interfaces
.implements Lcom/github/mikephil/charting/interfaces/LineDataProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/charts/BarLineChartBase",
        "<",
        "Lcom/github/mikephil/charting/data/LineData;",
        ">;",
        "Lcom/github/mikephil/charting/interfaces/LineDataProvider;"
    }
.end annotation


# instance fields
.field private mFillFormatter:Lcom/github/mikephil/charting/utils/FillFormatter;

.field protected mHighlightWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;)V

    .line 20
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/LineChart;->mHighlightWidth:F

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/LineChart;->mHighlightWidth:F

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/LineChart;->mHighlightWidth:F

    .line 34
    return-void
.end method


# virtual methods
.method protected calcMinMax()V
    .locals 2

    .prologue
    .line 47
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->calcMinMax()V

    .line 55
    iget v0, p0, Lcom/github/mikephil/charting/charts/LineChart;->mDeltaX:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/LineChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v0, Lcom/github/mikephil/charting/data/LineData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/LineData;->getYValCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 56
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/LineChart;->mDeltaX:F

    .line 57
    :cond_0
    return-void
.end method

.method public getFillFormatter()Lcom/github/mikephil/charting/utils/FillFormatter;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/LineChart;->mFillFormatter:Lcom/github/mikephil/charting/utils/FillFormatter;

    return-object v0
.end method

.method public getHighlightLineWidth()F
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/github/mikephil/charting/charts/LineChart;->mHighlightWidth:F

    return v0
.end method

.method public getLineData()Lcom/github/mikephil/charting/data/LineData;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/LineChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v0, Lcom/github/mikephil/charting/data/LineData;

    return-object v0
.end method

.method protected init()V
    .locals 3

    .prologue
    .line 38
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->init()V

    .line 40
    new-instance v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/LineChart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/LineChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-direct {v0, p0, v1, v2}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;-><init>(Lcom/github/mikephil/charting/interfaces/LineDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/LineChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    .line 42
    new-instance v0, Lcom/github/mikephil/charting/charts/BarLineChartBase$DefaultFillFormatter;

    invoke-direct {v0, p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase$DefaultFillFormatter;-><init>(Lcom/github/mikephil/charting/charts/BarLineChartBase;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/LineChart;->mFillFormatter:Lcom/github/mikephil/charting/utils/FillFormatter;

    .line 43
    return-void
.end method

.method public setFillFormatter(Lcom/github/mikephil/charting/utils/FillFormatter;)V
    .locals 0
    .param p1, "formatter"    # Lcom/github/mikephil/charting/utils/FillFormatter;

    .prologue
    .line 80
    if-nez p1, :cond_0

    .line 81
    new-instance p1, Lcom/github/mikephil/charting/charts/BarLineChartBase$DefaultFillFormatter;

    .end local p1    # "formatter":Lcom/github/mikephil/charting/utils/FillFormatter;
    invoke-direct {p1, p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase$DefaultFillFormatter;-><init>(Lcom/github/mikephil/charting/charts/BarLineChartBase;)V

    .line 84
    .restart local p1    # "formatter":Lcom/github/mikephil/charting/utils/FillFormatter;
    :goto_0
    return-void

    .line 83
    :cond_0
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/LineChart;->mFillFormatter:Lcom/github/mikephil/charting/utils/FillFormatter;

    goto :goto_0
.end method

.method public setHighlightLineWidth(F)V
    .locals 0
    .param p1, "width"    # F

    .prologue
    .line 65
    iput p1, p0, Lcom/github/mikephil/charting/charts/LineChart;->mHighlightWidth:F

    .line 66
    return-void
.end method
