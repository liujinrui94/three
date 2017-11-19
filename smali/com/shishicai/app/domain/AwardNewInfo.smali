.class public Lcom/shishicai/app/domain/AwardNewInfo;
.super Ljava/lang/Object;
.source "AwardNewInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean;
    }
.end annotation


# instance fields
.field private error:Ljava/lang/Object;

.field private items:Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean;

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/shishicai/app/domain/AwardNewInfo;->error:Ljava/lang/Object;

    return-object v0
.end method

.method public getItems()Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/shishicai/app/domain/AwardNewInfo;->items:Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/shishicai/app/domain/AwardNewInfo;->state:I

    return v0
.end method

.method public setError(Ljava/lang/Object;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/Object;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/shishicai/app/domain/AwardNewInfo;->error:Ljava/lang/Object;

    .line 41
    return-void
.end method

.method public setItems(Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean;)V
    .locals 0
    .param p1, "items"    # Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/shishicai/app/domain/AwardNewInfo;->items:Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean;

    .line 33
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/shishicai/app/domain/AwardNewInfo;->state:I

    .line 25
    return-void
.end method
