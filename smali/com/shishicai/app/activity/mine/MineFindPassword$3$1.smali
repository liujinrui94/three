.class Lcom/shishicai/app/activity/mine/MineFindPassword$3$1;
.super Lcom/loopj/android/http/JsonHttpResponseHandler;
.source "MineFindPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/mine/MineFindPassword$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shishicai/app/activity/mine/MineFindPassword$3;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/mine/MineFindPassword$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/shishicai/app/activity/mine/MineFindPassword$3;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineFindPassword$3$1;->this$1:Lcom/shishicai/app/activity/mine/MineFindPassword$3;

    invoke-direct {p0}, Lcom/loopj/android/http/JsonHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Throwable;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineFindPassword$3$1;->this$1:Lcom/shishicai/app/activity/mine/MineFindPassword$3;

    iget-object v0, v0, Lcom/shishicai/app/activity/mine/MineFindPassword$3;->this$0:Lcom/shishicai/app/activity/mine/MineFindPassword;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineFindPassword;->access$400(Lcom/shishicai/app/activity/mine/MineFindPassword;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 116
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "arg0"    # Lorg/json/JSONObject;

    .prologue
    .line 91
    iget-object v4, p0, Lcom/shishicai/app/activity/mine/MineFindPassword$3$1;->this$1:Lcom/shishicai/app/activity/mine/MineFindPassword$3;

    iget-object v4, v4, Lcom/shishicai/app/activity/mine/MineFindPassword$3;->this$0:Lcom/shishicai/app/activity/mine/MineFindPassword;

    invoke-static {v4}, Lcom/shishicai/app/activity/mine/MineFindPassword;->access$400(Lcom/shishicai/app/activity/mine/MineFindPassword;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 92
    const-string v4, "success"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, "success":Ljava/lang/String;
    const-string v4, "error"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "error":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 96
    :try_start_0
    iget-object v4, p0, Lcom/shishicai/app/activity/mine/MineFindPassword$3$1;->this$1:Lcom/shishicai/app/activity/mine/MineFindPassword$3;

    iget-object v4, v4, Lcom/shishicai/app/activity/mine/MineFindPassword$3;->this$0:Lcom/shishicai/app/activity/mine/MineFindPassword;

    const-string v5, "UTF-8"

    invoke-static {v3, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 102
    .local v2, "msg":Landroid/os/Message;
    const/16 v4, 0x38

    iput v4, v2, Landroid/os/Message;->what:I

    .line 103
    iget-object v4, p0, Lcom/shishicai/app/activity/mine/MineFindPassword$3$1;->this$1:Lcom/shishicai/app/activity/mine/MineFindPassword$3;

    iget-object v4, v4, Lcom/shishicai/app/activity/mine/MineFindPassword$3;->this$0:Lcom/shishicai/app/activity/mine/MineFindPassword;

    invoke-static {v4}, Lcom/shishicai/app/activity/mine/MineFindPassword;->access$500(Lcom/shishicai/app/activity/mine/MineFindPassword;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 112
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    :goto_1
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v4, "findpsw"

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 104
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 106
    :try_start_1
    iget-object v4, p0, Lcom/shishicai/app/activity/mine/MineFindPassword$3$1;->this$1:Lcom/shishicai/app/activity/mine/MineFindPassword$3;

    iget-object v4, v4, Lcom/shishicai/app/activity/mine/MineFindPassword$3;->this$0:Lcom/shishicai/app/activity/mine/MineFindPassword;

    const-string v5, "UTF-8"

    invoke-static {v1, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 107
    :catch_1
    move-exception v0

    .line 109
    .restart local v0    # "e":Ljava/io/UnsupportedEncodingException;
    const-string v4, "findpsw"

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
