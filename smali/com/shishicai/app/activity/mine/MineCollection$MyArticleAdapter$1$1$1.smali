.class Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1$1$1;
.super Lcom/loopj/android/http/JsonHttpResponseHandler;
.source "MineCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1$1;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1$1;)V
    .locals 0
    .param p1, "this$3"    # Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1$1;

    .prologue
    .line 383
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1$1$1;->this$3:Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1$1;

    invoke-direct {p0}, Lcom/loopj/android/http/JsonHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "arg0"    # I
    .param p2, "arg1"    # [Lorg/apache/http/Header;
    .param p3, "arg2"    # Ljava/lang/Throwable;
    .param p4, "arg3"    # Lorg/json/JSONObject;

    .prologue
    .line 387
    const-string v1, "com.soshow.hiyoga.MineCollection"

    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 389
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    .line 390
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1$1$1;->this$3:Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1$1;

    iget-object v1, v1, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1$1;->this$2:Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1;

    iget-object v1, v1, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1;->this$1:Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;

    iget-object v1, v1, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-static {v1}, Lcom/shishicai/app/activity/mine/MineCollection;->access$1100(Lcom/shishicai/app/activity/mine/MineCollection;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 391
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "arg0"    # I
    .param p2, "arg1"    # [Lorg/apache/http/Header;
    .param p3, "arg2"    # Lorg/json/JSONObject;

    .prologue
    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.soshow.hiyoga.MineCollection"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/shishicai/app/Constant;->URLUser:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?act=delete_article_collection&id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1$1$1;->this$3:Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1$1;

    iget-object v2, v2, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1$1;->this$2:Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1;

    iget-object v2, v2, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1;->this$1:Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;

    iget-object v2, v2, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-static {v2}, Lcom/shishicai/app/activity/mine/MineCollection;->access$1000(Lcom/shishicai/app/activity/mine/MineCollection;)Lcom/shishicai/app/domain/News;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shishicai/app/domain/News;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :try_start_0
    const-string v1, "success"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 398
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1$1$1;->this$3:Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1$1;

    iget-object v1, v1, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1$1;->this$2:Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1;

    iget-object v1, v1, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1;->this$1:Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;

    iget-object v1, v1, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    const-string v2, "\u5220\u9664\u6536\u85cf\u6210\u529f"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 406
    :goto_0
    return-void

    .line 400
    :cond_0
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1$1$1;->this$3:Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1$1;

    iget-object v1, v1, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1$1;->this$2:Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1;

    iget-object v1, v1, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1;->this$1:Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;

    iget-object v1, v1, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    const-string v2, "\u5220\u9664\u6536\u85cf\u5931\u8d25"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "com.soshow.hiyoga.MineCollection"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
