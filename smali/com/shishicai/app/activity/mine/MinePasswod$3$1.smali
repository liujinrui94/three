.class Lcom/shishicai/app/activity/mine/MinePasswod$3$1;
.super Lcom/loopj/android/http/JsonHttpResponseHandler;
.source "MinePasswod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/mine/MinePasswod$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shishicai/app/activity/mine/MinePasswod$3;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/mine/MinePasswod$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/shishicai/app/activity/mine/MinePasswod$3;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MinePasswod$3$1;->this$1:Lcom/shishicai/app/activity/mine/MinePasswod$3;

    invoke-direct {p0}, Lcom/loopj/android/http/JsonHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Throwable;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MinePasswod$3$1;->this$1:Lcom/shishicai/app/activity/mine/MinePasswod$3;

    iget-object v0, v0, Lcom/shishicai/app/activity/mine/MinePasswod$3;->this$0:Lcom/shishicai/app/activity/mine/MinePasswod;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MinePasswod;->access$600(Lcom/shishicai/app/activity/mine/MinePasswod;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 121
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "arg0"    # Lorg/json/JSONObject;

    .prologue
    const/4 v4, 0x0

    .line 106
    iget-object v3, p0, Lcom/shishicai/app/activity/mine/MinePasswod$3$1;->this$1:Lcom/shishicai/app/activity/mine/MinePasswod$3;

    iget-object v3, v3, Lcom/shishicai/app/activity/mine/MinePasswod$3;->this$0:Lcom/shishicai/app/activity/mine/MinePasswod;

    invoke-static {v3}, Lcom/shishicai/app/activity/mine/MinePasswod;->access$600(Lcom/shishicai/app/activity/mine/MinePasswod;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 107
    const-string v3, "success"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, "suc":Ljava/lang/String;
    const-string v3, "error"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "error":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 110
    iget-object v3, p0, Lcom/shishicai/app/activity/mine/MinePasswod$3$1;->this$1:Lcom/shishicai/app/activity/mine/MinePasswod$3;

    iget-object v3, v3, Lcom/shishicai/app/activity/mine/MinePasswod$3;->this$0:Lcom/shishicai/app/activity/mine/MinePasswod;

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 111
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 112
    .local v1, "msg":Landroid/os/Message;
    const/16 v3, 0x3a

    iput v3, v1, Landroid/os/Message;->what:I

    .line 113
    iget-object v3, p0, Lcom/shishicai/app/activity/mine/MinePasswod$3$1;->this$1:Lcom/shishicai/app/activity/mine/MinePasswod$3;

    iget-object v3, v3, Lcom/shishicai/app/activity/mine/MinePasswod$3;->this$0:Lcom/shishicai/app/activity/mine/MinePasswod;

    invoke-static {v3}, Lcom/shishicai/app/activity/mine/MinePasswod;->access$700(Lcom/shishicai/app/activity/mine/MinePasswod;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 117
    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v3, p0, Lcom/shishicai/app/activity/mine/MinePasswod$3$1;->this$1:Lcom/shishicai/app/activity/mine/MinePasswod$3;

    iget-object v3, v3, Lcom/shishicai/app/activity/mine/MinePasswod$3;->this$0:Lcom/shishicai/app/activity/mine/MinePasswod;

    invoke-static {v3, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
