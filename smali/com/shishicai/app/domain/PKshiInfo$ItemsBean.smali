.class public Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;
.super Ljava/lang/Object;
.source "PKshiInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/domain/PKshiInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemsBean"
.end annotation


# instance fields
.field private date:Ljava/lang/String;

.field private period:Ljava/lang/String;

.field private result:Ljava/lang/String;

.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getPeriod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;->period:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;->time:Ljava/lang/String;

    return-object v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;->date:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setPeriod(Ljava/lang/String;)V
    .locals 0
    .param p1, "period"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;->period:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;->result:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;->time:Ljava/lang/String;

    .line 72
    return-void
.end method
