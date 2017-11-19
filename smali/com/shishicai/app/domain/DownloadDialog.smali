.class public Lcom/shishicai/app/domain/DownloadDialog;
.super Lcn/bmob/v3/BmobObject;
.source "DownloadDialog.java"


# instance fields
.field private ignore_able:Ljava/lang/Boolean;

.field private market:Ljava/lang/String;

.field private update_content:Ljava/lang/String;

.field private update_url:Ljava/lang/String;

.field private update_ver_code:Ljava/lang/String;

.field private update_ver_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcn/bmob/v3/BmobObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getIgnore_able()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/shishicai/app/domain/DownloadDialog;->ignore_able:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getMarket()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/shishicai/app/domain/DownloadDialog;->market:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdate_content()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/shishicai/app/domain/DownloadDialog;->update_content:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdate_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/shishicai/app/domain/DownloadDialog;->update_url:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdate_ver_code()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/shishicai/app/domain/DownloadDialog;->update_ver_code:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdate_ver_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/shishicai/app/domain/DownloadDialog;->update_ver_name:Ljava/lang/String;

    return-object v0
.end method

.method public setIgnore_able(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "ignore_able"    # Ljava/lang/Boolean;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/shishicai/app/domain/DownloadDialog;->ignore_able:Ljava/lang/Boolean;

    .line 52
    return-void
.end method

.method public setMarket(Ljava/lang/String;)V
    .locals 0
    .param p1, "market"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/shishicai/app/domain/DownloadDialog;->market:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setUpdate_content(Ljava/lang/String;)V
    .locals 0
    .param p1, "update_content"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/shishicai/app/domain/DownloadDialog;->update_content:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setUpdate_url(Ljava/lang/String;)V
    .locals 0
    .param p1, "update_url"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/shishicai/app/domain/DownloadDialog;->update_url:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setUpdate_ver_code(Ljava/lang/String;)V
    .locals 0
    .param p1, "update_ver_code"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/shishicai/app/domain/DownloadDialog;->update_ver_code:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setUpdate_ver_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "update_ver_name"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/shishicai/app/domain/DownloadDialog;->update_ver_name:Ljava/lang/String;

    .line 44
    return-void
.end method
