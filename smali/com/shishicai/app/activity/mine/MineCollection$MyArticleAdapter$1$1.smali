.class Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1$1;
.super Ljava/lang/Object;
.source "MineCollection.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1;

    .prologue
    .line 375
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1$1;->this$2:Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 379
    new-instance v1, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v1}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 380
    .local v1, "params":Lcom/loopj/android/http/RequestParams;
    const-string v2, "act"

    const-string v3, "delete_article_collection"

    invoke-virtual {v1, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v2, "authkey"

    sget-object v3, Lcom/shishicai/app/Constant;->session_id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string v2, "collection_id"

    iget-object v3, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1$1;->this$2:Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1;

    iget-object v3, v3, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1;->this$1:Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;

    iget-object v3, v3, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-static {v3}, Lcom/shishicai/app/activity/mine/MineCollection;->access$1000(Lcom/shishicai/app/activity/mine/MineCollection;)Lcom/shishicai/app/domain/News;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shishicai/app/domain/News;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    sget-object v2, Lcom/shishicai/app/Constant;->URLUser:Ljava/lang/String;

    new-instance v3, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1$1$1;

    invoke-direct {v3, p0}, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1$1$1;-><init>(Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1$1;)V

    invoke-static {v2, v1, v3}, Lcom/shishicai/app/service/HttpUser;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/JsonHttpResponseHandler;)V

    .line 408
    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1$1;->this$2:Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1;

    iget-object v2, v2, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1;->this$1:Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;

    iget-object v2, v2, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-static {v2}, Lcom/shishicai/app/activity/mine/MineCollection;->access$900(Lcom/shishicai/app/activity/mine/MineCollection;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1$1;->this$2:Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1;

    iget-object v3, v3, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1;->this$1:Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;

    iget-object v3, v3, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-static {v3}, Lcom/shishicai/app/activity/mine/MineCollection;->access$1000(Lcom/shishicai/app/activity/mine/MineCollection;)Lcom/shishicai/app/domain/News;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 409
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 410
    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0x65

    iput v2, v0, Landroid/os/Message;->what:I

    .line 411
    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1$1;->this$2:Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1;

    iget-object v2, v2, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1;->this$1:Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;

    iget-object v2, v2, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-static {v2}, Lcom/shishicai/app/activity/mine/MineCollection;->access$1100(Lcom/shishicai/app/activity/mine/MineCollection;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 412
    return-void
.end method
