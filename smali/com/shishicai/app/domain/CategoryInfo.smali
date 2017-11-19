.class public Lcom/shishicai/app/domain/CategoryInfo;
.super Ljava/lang/Object;
.source "CategoryInfo.java"


# instance fields
.field private imgID:I

.field private name:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImgID()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/shishicai/app/domain/CategoryInfo;->imgID:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/shishicai/app/domain/CategoryInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/shishicai/app/domain/CategoryInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setImgID(I)V
    .locals 0
    .param p1, "imgID"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/shishicai/app/domain/CategoryInfo;->imgID:I

    .line 34
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/shishicai/app/domain/CategoryInfo;->name:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/shishicai/app/domain/CategoryInfo;->url:Ljava/lang/String;

    .line 26
    return-void
.end method
