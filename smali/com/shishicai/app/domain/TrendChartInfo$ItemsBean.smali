.class public Lcom/shishicai/app/domain/TrendChartInfo$ItemsBean;
.super Ljava/lang/Object;
.source "TrendChartInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/domain/TrendChartInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemsBean"
.end annotation


# instance fields
.field private ball:I

.field private period:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBall()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/shishicai/app/domain/TrendChartInfo$ItemsBean;->ball:I

    return v0
.end method

.method public getPeriod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/shishicai/app/domain/TrendChartInfo$ItemsBean;->period:Ljava/lang/String;

    return-object v0
.end method

.method public setBall(I)V
    .locals 0
    .param p1, "ball"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/shishicai/app/domain/TrendChartInfo$ItemsBean;->ball:I

    .line 68
    return-void
.end method

.method public setPeriod(Ljava/lang/String;)V
    .locals 0
    .param p1, "period"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/shishicai/app/domain/TrendChartInfo$ItemsBean;->period:Ljava/lang/String;

    .line 60
    return-void
.end method
