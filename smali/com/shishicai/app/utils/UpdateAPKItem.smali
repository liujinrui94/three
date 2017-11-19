.class public Lcom/shishicai/app/utils/UpdateAPKItem;
.super Ljava/lang/Object;
.source "UpdateAPKItem.java"


# static fields
.field public static final UPDATE_IS_FORCE:I = 0x1

.field public static final UPDATE_IS_NOT_FORCE:I


# instance fields
.field private download_url:Ljava/lang/String;

.field private is_force:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private stamp:Ljava/lang/String;

.field private update_log:Ljava/lang/String;

.field private version_code:Ljava/lang/String;

.field private version_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/shishicai/app/utils/UpdateAPKItem;->update_log:Ljava/lang/String;

    .line 16
    const-string v0, "0"

    iput-object v0, p0, Lcom/shishicai/app/utils/UpdateAPKItem;->is_force:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDownload_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/shishicai/app/utils/UpdateAPKItem;->download_url:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_force()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/shishicai/app/utils/UpdateAPKItem;->is_force:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/shishicai/app/utils/UpdateAPKItem;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getStamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/shishicai/app/utils/UpdateAPKItem;->stamp:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdate_log()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/shishicai/app/utils/UpdateAPKItem;->update_log:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion_code()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/shishicai/app/utils/UpdateAPKItem;->version_code:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/shishicai/app/utils/UpdateAPKItem;->version_name:Ljava/lang/String;

    return-object v0
.end method

.method public setDownload_url(Ljava/lang/String;)V
    .locals 0
    .param p1, "download_url"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/shishicai/app/utils/UpdateAPKItem;->download_url:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setIs_force(Ljava/lang/String;)V
    .locals 0
    .param p1, "is_force"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/shishicai/app/utils/UpdateAPKItem;->is_force:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/shishicai/app/utils/UpdateAPKItem;->key:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setStamp(Ljava/lang/String;)V
    .locals 0
    .param p1, "stamp"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/shishicai/app/utils/UpdateAPKItem;->stamp:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setUpdate_log(Ljava/lang/String;)V
    .locals 0
    .param p1, "update_log"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/shishicai/app/utils/UpdateAPKItem;->update_log:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setVersion_code(Ljava/lang/String;)V
    .locals 0
    .param p1, "version_code"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/shishicai/app/utils/UpdateAPKItem;->version_code:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setVersion_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "version_name"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/shishicai/app/utils/UpdateAPKItem;->version_name:Ljava/lang/String;

    .line 36
    return-void
.end method
