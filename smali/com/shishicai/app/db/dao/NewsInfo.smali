.class public Lcom/shishicai/app/db/dao/NewsInfo;
.super Lorg/litepal/crud/DataSupport;
.source "NewsInfo.java"


# instance fields
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
    invoke-direct {p0}, Lorg/litepal/crud/DataSupport;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogofile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/shishicai/app/db/dao/NewsInfo;->logofile:Ljava/lang/String;

    return-object v0
.end method

.method public getPublishdate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/shishicai/app/db/dao/NewsInfo;->publishdate:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/shishicai/app/db/dao/NewsInfo;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/shishicai/app/db/dao/NewsInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/shishicai/app/db/dao/NewsInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setLogofile(Ljava/lang/String;)V
    .locals 0
    .param p1, "logofile"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/shishicai/app/db/dao/NewsInfo;->logofile:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setPublishdate(Ljava/lang/String;)V
    .locals 0
    .param p1, "publishdate"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/shishicai/app/db/dao/NewsInfo;->publishdate:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/shishicai/app/db/dao/NewsInfo;->summary:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/shishicai/app/db/dao/NewsInfo;->title:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/shishicai/app/db/dao/NewsInfo;->url:Ljava/lang/String;

    .line 48
    return-void
.end method
