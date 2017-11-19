.class public Lcom/shishicai/app/domain/News;
.super Ljava/lang/Object;
.source "News.java"


# instance fields
.field private author:Ljava/lang/String;

.field private bTop:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private time:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/shishicai/app/domain/News;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/shishicai/app/domain/News;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/shishicai/app/domain/News;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/shishicai/app/domain/News;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/shishicai/app/domain/News;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getbTop()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/shishicai/app/domain/News;->bTop:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0
    .param p1, "author"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/shishicai/app/domain/News;->author:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/shishicai/app/domain/News;->id:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/shishicai/app/domain/News;->time:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/shishicai/app/domain/News;->title:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/shishicai/app/domain/News;->type:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setbTop(Ljava/lang/String;)V
    .locals 0
    .param p1, "bTop"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/shishicai/app/domain/News;->bTop:Ljava/lang/String;

    .line 69
    return-void
.end method
