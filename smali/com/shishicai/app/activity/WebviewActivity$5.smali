.class Lcom/shishicai/app/activity/WebviewActivity$5;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "WebviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/WebviewActivity;->getShare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/WebviewActivity;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/WebviewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/WebviewActivity;

    .prologue
    .line 746
    iput-object p1, p0, Lcom/shishicai/app/activity/WebviewActivity$5;->this$0:Lcom/shishicai/app/activity/WebviewActivity;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 3
    .param p1, "arg0"    # I
    .param p2, "arg1"    # [Lorg/apache/http/Header;
    .param p3, "arg2"    # [B
    .param p4, "arg3"    # Ljava/lang/Throwable;

    .prologue
    .line 750
    iget-object v0, p0, Lcom/shishicai/app/activity/WebviewActivity$5;->this$0:Lcom/shishicai/app/activity/WebviewActivity;

    invoke-static {v0}, Lcom/shishicai/app/activity/WebviewActivity;->access$2100(Lcom/shishicai/app/activity/WebviewActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "err="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    iget-object v0, p0, Lcom/shishicai/app/activity/WebviewActivity$5;->this$0:Lcom/shishicai/app/activity/WebviewActivity;

    const-string v1, "\u7f51\u7edc\u5f02\u5e38!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 752
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 8
    .param p1, "arg0"    # I
    .param p2, "arg1"    # [Lorg/apache/http/Header;
    .param p3, "arg2"    # [B

    .prologue
    .line 757
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p3}, Ljava/lang/String;-><init>([B)V

    .line 758
    .local v3, "str":Ljava/lang/String;
    iget-object v5, p0, Lcom/shishicai/app/activity/WebviewActivity$5;->this$0:Lcom/shishicai/app/activity/WebviewActivity;

    invoke-static {v5}, Lcom/shishicai/app/activity/WebviewActivity;->access$2200(Lcom/shishicai/app/activity/WebviewActivity;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "result="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 760
    new-instance v5, Lcom/shishicai/app/activity/WebviewActivity$5$1;

    invoke-direct {v5, p0}, Lcom/shishicai/app/activity/WebviewActivity$5$1;-><init>(Lcom/shishicai/app/activity/WebviewActivity$5;)V

    .line 761
    invoke-virtual {v5}, Lcom/shishicai/app/activity/WebviewActivity$5$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 760
    invoke-static {v3, v5}, Lcom/shishicai/app/utils/GsonUtils;->parseJSON(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shishicai/app/domain/BaseModel;

    .line 762
    .local v1, "info":Lcom/shishicai/app/domain/BaseModel;, "Lcom/shishicai/app/domain/BaseModel<Lcom/shishicai/app/domain/JudgeInfo;>;"
    invoke-virtual {v1}, Lcom/shishicai/app/domain/BaseModel;->isSuccess()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 765
    invoke-virtual {v1}, Lcom/shishicai/app/domain/BaseModel;->getMsg()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shishicai/app/domain/JudgeInfo;

    invoke-virtual {v5}, Lcom/shishicai/app/domain/JudgeInfo;->getName()Ljava/lang/String;

    move-result-object v4

    .line 772
    .local v4, "title":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/shishicai/app/domain/BaseModel;->getMsg()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shishicai/app/domain/JudgeInfo;

    invoke-virtual {v5}, Lcom/shishicai/app/domain/JudgeInfo;->getLinks()Ljava/lang/String;

    move-result-object v0

    .line 773
    .local v0, "content":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 774
    const-string v0, "\u70ed\u95e8\u5f69\u79cd\uff0c\u4e13\u4e1a\u6743\u5a01\u6570\u636e\u5206\u6790\uff0c\u8db3\u4e0d\u51fa\u6237\uff0c\u638c\u63e1\u6700\u65b0\u52a8\u6001www.90068.com"

    .line 776
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 777
    .local v2, "share_intent":Landroid/content/Intent;
    const-string v5, "android.intent.action.SEND"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 778
    const-string v5, "text/plain"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 779
    const-string v5, "android.intent.extra.SUBJECT"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 780
    const-string v5, "android.intent.extra.TEXT"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 782
    const-string v5, "\u5206\u4eab\u5230..."

    invoke-static {v2, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    .line 783
    iget-object v5, p0, Lcom/shishicai/app/activity/WebviewActivity$5;->this$0:Lcom/shishicai/app/activity/WebviewActivity;

    invoke-virtual {v5, v2}, Lcom/shishicai/app/activity/WebviewActivity;->startActivity(Landroid/content/Intent;)V

    .line 786
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "info":Lcom/shishicai/app/domain/BaseModel;, "Lcom/shishicai/app/domain/BaseModel<Lcom/shishicai/app/domain/JudgeInfo;>;"
    .end local v2    # "share_intent":Landroid/content/Intent;
    .end local v4    # "title":Ljava/lang/String;
    :cond_1
    return-void
.end method
