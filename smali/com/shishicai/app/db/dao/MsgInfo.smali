.class public Lcom/shishicai/app/db/dao/MsgInfo;
.super Lorg/litepal/crud/DataSupport;
.source "MsgInfo.java"


# instance fields
.field private content:Ljava/lang/String;

.field private msgId:Ljava/lang/String;

.field private time:Ljava/util/Date;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lorg/litepal/crud/DataSupport;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/shishicai/app/db/dao/MsgInfo;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/shishicai/app/db/dao/MsgInfo;->msgId:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/shishicai/app/db/dao/MsgInfo;->time:Ljava/util/Date;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/shishicai/app/db/dao/MsgInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/shishicai/app/db/dao/MsgInfo;->content:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setMsgId(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/shishicai/app/db/dao/MsgInfo;->msgId:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "time"    # Ljava/util/Date;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/shishicai/app/db/dao/MsgInfo;->time:Ljava/util/Date;

    .line 50
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/shishicai/app/db/dao/MsgInfo;->title:Ljava/lang/String;

    .line 34
    return-void
.end method
