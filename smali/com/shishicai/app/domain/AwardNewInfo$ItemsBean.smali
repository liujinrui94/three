.class public Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean;
.super Ljava/lang/Object;
.source "AwardNewInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/domain/AwardNewInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemsBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean$NextBean;,
        Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean$CurrentBean;
    }
.end annotation


# instance fields
.field private current:Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean$CurrentBean;

.field private next:Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean$NextBean;

.field private state:Z

.field private time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrent()Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean$CurrentBean;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean;->current:Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean$CurrentBean;

    return-object v0
.end method

.method public getNext()Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean$NextBean;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean;->next:Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean$NextBean;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean;->time:J

    return-wide v0
.end method

.method public isState()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean;->state:Z

    return v0
.end method

.method public setCurrent(Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean$CurrentBean;)V
    .locals 0
    .param p1, "current"    # Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean$CurrentBean;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean;->current:Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean$CurrentBean;

    .line 70
    return-void
.end method

.method public setNext(Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean$NextBean;)V
    .locals 0
    .param p1, "next"    # Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean$NextBean;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean;->next:Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean$NextBean;

    .line 78
    return-void
.end method

.method public setState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean;->state:Z

    .line 86
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean;->time:J

    .line 62
    return-void
.end method
