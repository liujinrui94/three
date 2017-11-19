.class public Lcom/shishicai/app/domain/NewsDetail;
.super Ljava/lang/Object;
.source "NewsDetail.java"


# instance fields
.field private author:Ljava/lang/String;

.field private content:Ljava/lang/String;

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
    .line 49
    iget-object v0, p0, Lcom/shishicai/app/domain/NewsDetail;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/shishicai/app/domain/NewsDetail;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/shishicai/app/domain/NewsDetail;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/shishicai/app/domain/NewsDetail;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/shishicai/app/domain/NewsDetail;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/shishicai/app/domain/NewsDetail;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0
    .param p1, "author"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/shishicai/app/domain/NewsDetail;->author:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/shishicai/app/domain/NewsDetail;->content:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/shishicai/app/domain/NewsDetail;->id:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/shishicai/app/domain/NewsDetail;->time:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/shishicai/app/domain/NewsDetail;->title:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/shishicai/app/domain/NewsDetail;->type:Ljava/lang/String;

    .line 75
    return-void
.end method
