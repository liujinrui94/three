.class public Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean$CurrentBean;
.super Ljava/lang/Object;
.source "AwardNewInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CurrentBean"
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
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean$CurrentBean;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getPeriod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean$CurrentBean;->period:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean$CurrentBean;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean$CurrentBean;->time:Ljava/lang/String;

    return-object v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean$CurrentBean;->date:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setPeriod(Ljava/lang/String;)V
    .locals 0
    .param p1, "period"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean$CurrentBean;->period:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean$CurrentBean;->result:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean$CurrentBean;->time:Ljava/lang/String;

    .line 123
    return-void
.end method
