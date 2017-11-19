.class public Lcom/shishicai/app/domain/LoginEntity;
.super Lcom/shishicai/app/domain/ReturnInfo;
.source "LoginEntity.java"


# instance fields
.field private session_id:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/shishicai/app/domain/ReturnInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getSession_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/shishicai/app/domain/LoginEntity;->session_id:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/shishicai/app/domain/LoginEntity;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setSession_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "session_id"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/shishicai/app/domain/LoginEntity;->session_id:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/shishicai/app/domain/LoginEntity;->userId:Ljava/lang/String;

    .line 15
    return-void
.end method
