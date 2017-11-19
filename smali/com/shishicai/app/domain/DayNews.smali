.class public Lcom/shishicai/app/domain/DayNews;
.super Ljava/lang/Object;
.source "DayNews.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private id:Ljava/lang/String;

.field private logofile:Ljava/lang/String;

.field private publishdate:Ljava/lang/String;

.field private summary:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/shishicai/app/domain/DayNews;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLogofile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/shishicai/app/domain/DayNews;->logofile:Ljava/lang/String;

    return-object v0
.end method

.method public getPublishdate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/shishicai/app/domain/DayNews;->publishdate:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/shishicai/app/domain/DayNews;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/shishicai/app/domain/DayNews;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/shishicai/app/domain/DayNews;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/shishicai/app/domain/DayNews;->id:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setLogofile(Ljava/lang/String;)V
    .locals 0
    .param p1, "logofile"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/shishicai/app/domain/DayNews;->logofile:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setPublishdate(Ljava/lang/String;)V
    .locals 0
    .param p1, "publishdate"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/shishicai/app/domain/DayNews;->publishdate:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/shishicai/app/domain/DayNews;->summary:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/shishicai/app/domain/DayNews;->title:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/shishicai/app/domain/DayNews;->url:Ljava/lang/String;

    .line 66
    return-void
.end method
