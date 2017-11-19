.class public Lcom/shishicai/app/domain/ReturnInfo;
.super Ljava/lang/Object;
.source "ReturnInfo.java"


# instance fields
.field private flag:I

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFlag()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/shishicai/app/domain/ReturnInfo;->flag:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/shishicai/app/domain/ReturnInfo;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setFlag(I)V
    .locals 0
    .param p1, "flag"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/shishicai/app/domain/ReturnInfo;->flag:I

    .line 23
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/shishicai/app/domain/ReturnInfo;->message:Ljava/lang/String;

    .line 13
    return-void
.end method
