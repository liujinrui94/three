.class public Lcom/shishicai/app/domain/Pictures;
.super Ljava/lang/Object;
.source "Pictures.java"


# instance fields
.field private img_id:Ljava/lang/String;

.field private img_url:Ljava/lang/String;

.field private thumb_url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "img_id"    # Ljava/lang/String;
    .param p2, "img_url"    # Ljava/lang/String;
    .param p3, "thumb_url"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/shishicai/app/domain/Pictures;->img_id:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/shishicai/app/domain/Pictures;->img_url:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/shishicai/app/domain/Pictures;->thumb_url:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getImg_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/shishicai/app/domain/Pictures;->img_id:Ljava/lang/String;

    return-object v0
.end method

.method public getImg_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/shishicai/app/domain/Pictures;->img_url:Ljava/lang/String;

    return-object v0
.end method

.method public getThumb_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/shishicai/app/domain/Pictures;->thumb_url:Ljava/lang/String;

    return-object v0
.end method

.method public setImg_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "img_id"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/shishicai/app/domain/Pictures;->img_id:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setImg_url(Ljava/lang/String;)V
    .locals 0
    .param p1, "img_url"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/shishicai/app/domain/Pictures;->img_url:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setThumb_url(Ljava/lang/String;)V
    .locals 0
    .param p1, "thumb_url"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/shishicai/app/domain/Pictures;->thumb_url:Ljava/lang/String;

    .line 40
    return-void
.end method
