.class Lcom/shishicai/app/utils/UpdateManager$2;
.super Lcn/bmob/v3/listener/FindListener;
.source "UpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/utils/UpdateManager;->checkUpdate(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/bmob/v3/listener/FindListener",
        "<",
        "Lcom/shishicai/app/domain/DownloadDialog;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/utils/UpdateManager;

.field final synthetic val$isAdpic:Z


# direct methods
.method constructor <init>(Lcom/shishicai/app/utils/UpdateManager;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/utils/UpdateManager;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/shishicai/app/utils/UpdateManager$2;->this$0:Lcom/shishicai/app/utils/UpdateManager;

    iput-boolean p2, p0, Lcom/shishicai/app/utils/UpdateManager$2;->val$isAdpic:Z

    invoke-direct {p0}, Lcn/bmob/v3/listener/FindListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 81
    check-cast p1, Ljava/util/List;

    check-cast p2, Lcn/bmob/v3/exception/BmobException;

    invoke-virtual {p0, p1, p2}, Lcom/shishicai/app/utils/UpdateManager$2;->done(Ljava/util/List;Lcn/bmob/v3/exception/BmobException;)V

    return-void
.end method

.method public done(Ljava/util/List;Lcn/bmob/v3/exception/BmobException;)V
    .locals 7
    .param p2, "var2"    # Lcn/bmob/v3/exception/BmobException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/shishicai/app/domain/DownloadDialog;",
            ">;",
            "Lcn/bmob/v3/exception/BmobException;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/shishicai/app/domain/DownloadDialog;>;"
    const/4 v6, 0x4

    .line 86
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 121
    :cond_0
    return-void

    .line 90
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 91
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shishicai/app/domain/DownloadDialog;

    .line 92
    .local v1, "info":Lcom/shishicai/app/domain/DownloadDialog;
    invoke-virtual {v1}, Lcom/shishicai/app/domain/DownloadDialog;->getMarket()Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "market":Ljava/lang/String;
    iget-object v4, p0, Lcom/shishicai/app/utils/UpdateManager$2;->this$0:Lcom/shishicai/app/utils/UpdateManager;

    invoke-static {v4}, Lcom/shishicai/app/utils/UpdateManager;->access$200(Lcom/shishicai/app/utils/UpdateManager;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 96
    iget-object v4, p0, Lcom/shishicai/app/utils/UpdateManager$2;->this$0:Lcom/shishicai/app/utils/UpdateManager;

    new-instance v5, Lcom/shishicai/app/utils/UpdateAPKItem;

    invoke-direct {v5}, Lcom/shishicai/app/utils/UpdateAPKItem;-><init>()V

    iput-object v5, v4, Lcom/shishicai/app/utils/UpdateManager;->mUpdateAPKItem:Lcom/shishicai/app/utils/UpdateAPKItem;

    .line 97
    iget-object v4, p0, Lcom/shishicai/app/utils/UpdateManager$2;->this$0:Lcom/shishicai/app/utils/UpdateManager;

    iget-object v4, v4, Lcom/shishicai/app/utils/UpdateManager;->mUpdateAPKItem:Lcom/shishicai/app/utils/UpdateAPKItem;

    invoke-virtual {v1}, Lcom/shishicai/app/domain/DownloadDialog;->getUpdate_url()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/shishicai/app/utils/UpdateAPKItem;->setDownload_url(Ljava/lang/String;)V

    .line 98
    iget-object v4, p0, Lcom/shishicai/app/utils/UpdateManager$2;->this$0:Lcom/shishicai/app/utils/UpdateManager;

    iget-object v4, v4, Lcom/shishicai/app/utils/UpdateManager;->mUpdateAPKItem:Lcom/shishicai/app/utils/UpdateAPKItem;

    invoke-virtual {v1}, Lcom/shishicai/app/domain/DownloadDialog;->getUpdate_ver_code()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/shishicai/app/utils/UpdateAPKItem;->setVersion_code(Ljava/lang/String;)V

    .line 99
    iget-object v4, p0, Lcom/shishicai/app/utils/UpdateManager$2;->this$0:Lcom/shishicai/app/utils/UpdateManager;

    iget-object v4, v4, Lcom/shishicai/app/utils/UpdateManager;->mUpdateAPKItem:Lcom/shishicai/app/utils/UpdateAPKItem;

    invoke-virtual {v1}, Lcom/shishicai/app/domain/DownloadDialog;->getUpdate_ver_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/shishicai/app/utils/UpdateAPKItem;->setVersion_name(Ljava/lang/String;)V

    .line 100
    iget-object v4, p0, Lcom/shishicai/app/utils/UpdateManager$2;->this$0:Lcom/shishicai/app/utils/UpdateManager;

    iget-object v4, v4, Lcom/shishicai/app/utils/UpdateManager;->mUpdateAPKItem:Lcom/shishicai/app/utils/UpdateAPKItem;

    invoke-virtual {v1}, Lcom/shishicai/app/domain/DownloadDialog;->getUpdate_content()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/shishicai/app/utils/UpdateAPKItem;->setUpdate_log(Ljava/lang/String;)V

    .line 101
    iget-boolean v4, p0, Lcom/shishicai/app/utils/UpdateManager$2;->val$isAdpic:Z

    if-eqz v4, :cond_3

    .line 103
    iget-object v4, p0, Lcom/shishicai/app/utils/UpdateManager$2;->this$0:Lcom/shishicai/app/utils/UpdateManager;

    invoke-static {v4}, Lcom/shishicai/app/utils/UpdateManager;->access$300(Lcom/shishicai/app/utils/UpdateManager;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 90
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_3
    invoke-virtual {v1}, Lcom/shishicai/app/domain/DownloadDialog;->getIgnore_able()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 106
    .local v3, "show":Z
    if-eqz v3, :cond_4

    .line 108
    iget-object v4, p0, Lcom/shishicai/app/utils/UpdateManager$2;->this$0:Lcom/shishicai/app/utils/UpdateManager;

    iget-object v4, v4, Lcom/shishicai/app/utils/UpdateManager;->mUpdateAPKItem:Lcom/shishicai/app/utils/UpdateAPKItem;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Lcom/shishicai/app/utils/UpdateAPKItem;->setKey(Ljava/lang/String;)V

    .line 113
    :goto_2
    iget-object v4, p0, Lcom/shishicai/app/utils/UpdateManager$2;->this$0:Lcom/shishicai/app/utils/UpdateManager;

    iget-object v4, v4, Lcom/shishicai/app/utils/UpdateManager;->mUpdateAPKItem:Lcom/shishicai/app/utils/UpdateAPKItem;

    invoke-virtual {v4}, Lcom/shishicai/app/utils/UpdateAPKItem;->getKey()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 114
    iget-object v4, p0, Lcom/shishicai/app/utils/UpdateManager$2;->this$0:Lcom/shishicai/app/utils/UpdateManager;

    iget-object v4, v4, Lcom/shishicai/app/utils/UpdateManager;->mUpdateAPKItem:Lcom/shishicai/app/utils/UpdateAPKItem;

    invoke-virtual {v4}, Lcom/shishicai/app/utils/UpdateAPKItem;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 115
    iget-object v4, p0, Lcom/shishicai/app/utils/UpdateManager$2;->this$0:Lcom/shishicai/app/utils/UpdateManager;

    invoke-static {v4}, Lcom/shishicai/app/utils/UpdateManager;->access$300(Lcom/shishicai/app/utils/UpdateManager;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 111
    :cond_4
    iget-object v4, p0, Lcom/shishicai/app/utils/UpdateManager$2;->this$0:Lcom/shishicai/app/utils/UpdateManager;

    iget-object v4, v4, Lcom/shishicai/app/utils/UpdateManager;->mUpdateAPKItem:Lcom/shishicai/app/utils/UpdateAPKItem;

    const-string v5, "1"

    invoke-virtual {v4, v5}, Lcom/shishicai/app/utils/UpdateAPKItem;->setKey(Ljava/lang/String;)V

    goto :goto_2
.end method
