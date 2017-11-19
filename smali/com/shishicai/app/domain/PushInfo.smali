.class public Lcom/shishicai/app/domain/PushInfo;
.super Ljava/lang/Object;
.source "PushInfo.java"


# instance fields
.field alert:Ljava/lang/String;

.field articleurl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlert()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/shishicai/app/domain/PushInfo;->alert:Ljava/lang/String;

    return-object v0
.end method

.method public getArticleurl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/shishicai/app/domain/PushInfo;->articleurl:Ljava/lang/String;

    return-object v0
.end method

.method public setAlert(Ljava/lang/String;)V
    .locals 0
    .param p1, "alert"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/shishicai/app/domain/PushInfo;->alert:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setArticleurl(Ljava/lang/String;)V
    .locals 0
    .param p1, "articleurl"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/shishicai/app/domain/PushInfo;->articleurl:Ljava/lang/String;

    .line 25
    return-void
.end method
