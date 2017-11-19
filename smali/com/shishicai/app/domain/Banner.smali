.class public Lcom/shishicai/app/domain/Banner;
.super Lcn/bmob/v3/BmobObject;
.source "Banner.java"


# instance fields
.field private market:Ljava/lang/String;

.field private pic:Ljava/lang/String;

.field private picUrl:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcn/bmob/v3/BmobObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getMarket()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/shishicai/app/domain/Banner;->market:Ljava/lang/String;

    return-object v0
.end method

.method public getPic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/shishicai/app/domain/Banner;->pic:Ljava/lang/String;

    return-object v0
.end method

.method public getPicUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/shishicai/app/domain/Banner;->picUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/shishicai/app/domain/Banner;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/shishicai/app/domain/Banner;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setMarket(Ljava/lang/String;)V
    .locals 0
    .param p1, "market"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/shishicai/app/domain/Banner;->market:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setPic(Ljava/lang/String;)V
    .locals 0
    .param p1, "pic"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/shishicai/app/domain/Banner;->pic:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setPicUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "picUrl"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/shishicai/app/domain/Banner;->picUrl:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/shishicai/app/domain/Banner;->title:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/shishicai/app/domain/Banner;->type:Ljava/lang/String;

    .line 44
    return-void
.end method
