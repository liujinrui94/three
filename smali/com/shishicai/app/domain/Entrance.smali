.class public Lcom/shishicai/app/domain/Entrance;
.super Lcn/bmob/v3/BmobObject;
.source "Entrance.java"


# instance fields
.field private market:Ljava/lang/String;

.field private url:Ljava/lang/String;


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
    .line 19
    iget-object v0, p0, Lcom/shishicai/app/domain/Entrance;->market:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/shishicai/app/domain/Entrance;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setMarket(Ljava/lang/String;)V
    .locals 0
    .param p1, "market"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/shishicai/app/domain/Entrance;->market:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/shishicai/app/domain/Entrance;->url:Ljava/lang/String;

    .line 16
    return-void
.end method
