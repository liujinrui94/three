.class public Lcom/shishicai/app/domain/AwardStatisticInfo$ItemsBean;
.super Ljava/lang/Object;
.source "AwardStatisticInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/domain/AwardStatisticInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemsBean"
.end annotation


# instance fields
.field private data:Ljava/lang/String;

.field private date:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/shishicai/app/domain/AwardStatisticInfo$ItemsBean;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/shishicai/app/domain/AwardStatisticInfo$ItemsBean;->date:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/shishicai/app/domain/AwardStatisticInfo$ItemsBean;->data:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/shishicai/app/domain/AwardStatisticInfo$ItemsBean;->date:Ljava/lang/String;

    .line 60
    return-void
.end method
