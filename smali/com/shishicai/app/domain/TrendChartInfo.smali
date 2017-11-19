.class public Lcom/shishicai/app/domain/TrendChartInfo;
.super Ljava/lang/Object;
.source "TrendChartInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shishicai/app/domain/TrendChartInfo$ItemsBean;
    }
.end annotation


# instance fields
.field private error:Ljava/lang/String;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/shishicai/app/domain/TrendChartInfo$ItemsBean;",
            ">;"
        }
    .end annotation
.end field

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/shishicai/app/domain/TrendChartInfo;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/shishicai/app/domain/TrendChartInfo$ItemsBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/shishicai/app/domain/TrendChartInfo;->items:Ljava/util/List;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/shishicai/app/domain/TrendChartInfo;->state:I

    return v0
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/shishicai/app/domain/TrendChartInfo;->error:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/shishicai/app/domain/TrendChartInfo$ItemsBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/shishicai/app/domain/TrendChartInfo$ItemsBean;>;"
    iput-object p1, p0, Lcom/shishicai/app/domain/TrendChartInfo;->items:Ljava/util/List;

    .line 43
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/shishicai/app/domain/TrendChartInfo;->state:I

    .line 27
    return-void
.end method
