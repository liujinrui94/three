.class Lcom/shishicai/app/activity/mine/MinePasswod$3;
.super Ljava/lang/Object;
.source "MinePasswod.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/mine/MinePasswod;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/mine/MinePasswod;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/mine/MinePasswod;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/mine/MinePasswod;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MinePasswod$3;->this$0:Lcom/shishicai/app/activity/mine/MinePasswod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 84
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MinePasswod$3;->this$0:Lcom/shishicai/app/activity/mine/MinePasswod;

    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MinePasswod$3;->this$0:Lcom/shishicai/app/activity/mine/MinePasswod;

    invoke-static {v2}, Lcom/shishicai/app/activity/mine/MinePasswod;->access$000(Lcom/shishicai/app/activity/mine/MinePasswod;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shishicai/app/activity/mine/MinePasswod;->access$302(Lcom/shishicai/app/activity/mine/MinePasswod;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MinePasswod$3;->this$0:Lcom/shishicai/app/activity/mine/MinePasswod;

    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MinePasswod$3;->this$0:Lcom/shishicai/app/activity/mine/MinePasswod;

    invoke-static {v2}, Lcom/shishicai/app/activity/mine/MinePasswod;->access$100(Lcom/shishicai/app/activity/mine/MinePasswod;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shishicai/app/activity/mine/MinePasswod;->access$402(Lcom/shishicai/app/activity/mine/MinePasswod;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MinePasswod$3;->this$0:Lcom/shishicai/app/activity/mine/MinePasswod;

    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MinePasswod$3;->this$0:Lcom/shishicai/app/activity/mine/MinePasswod;

    invoke-static {v2}, Lcom/shishicai/app/activity/mine/MinePasswod;->access$200(Lcom/shishicai/app/activity/mine/MinePasswod;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shishicai/app/activity/mine/MinePasswod;->access$502(Lcom/shishicai/app/activity/mine/MinePasswod;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MinePasswod$3;->this$0:Lcom/shishicai/app/activity/mine/MinePasswod;

    invoke-static {v1}, Lcom/shishicai/app/activity/mine/MinePasswod;->access$300(Lcom/shishicai/app/activity/mine/MinePasswod;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MinePasswod$3;->this$0:Lcom/shishicai/app/activity/mine/MinePasswod;

    const-string v2, "\u539f\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 127
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MinePasswod$3;->this$0:Lcom/shishicai/app/activity/mine/MinePasswod;

    invoke-static {v1}, Lcom/shishicai/app/activity/mine/MinePasswod;->access$400(Lcom/shishicai/app/activity/mine/MinePasswod;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MinePasswod$3;->this$0:Lcom/shishicai/app/activity/mine/MinePasswod;

    const-string v2, "\u65b0\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MinePasswod$3;->this$0:Lcom/shishicai/app/activity/mine/MinePasswod;

    invoke-static {v1}, Lcom/shishicai/app/activity/mine/MinePasswod;->access$400(Lcom/shishicai/app/activity/mine/MinePasswod;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MinePasswod$3;->this$0:Lcom/shishicai/app/activity/mine/MinePasswod;

    invoke-static {v2}, Lcom/shishicai/app/activity/mine/MinePasswod;->access$500(Lcom/shishicai/app/activity/mine/MinePasswod;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 93
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MinePasswod$3;->this$0:Lcom/shishicai/app/activity/mine/MinePasswod;

    const-string v2, "\u4e24\u6b21\u5bc6\u7801\u8f93\u5165\u4e0d\u4e00\u81f4\uff01"

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 95
    :cond_2
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MinePasswod$3;->this$0:Lcom/shishicai/app/activity/mine/MinePasswod;

    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MinePasswod$3;->this$0:Lcom/shishicai/app/activity/mine/MinePasswod;

    const-string v3, ""

    const-string v4, "\u6b63\u5728\u63d0\u4ea4\uff0c\u8bf7\u7a0d\u7b49 \u2026"

    invoke-static {v2, v3, v4, v6, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shishicai/app/activity/mine/MinePasswod;->access$602(Lcom/shishicai/app/activity/mine/MinePasswod;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 97
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MinePasswod$3;->this$0:Lcom/shishicai/app/activity/mine/MinePasswod;

    invoke-static {v1}, Lcom/shishicai/app/activity/mine/MinePasswod;->access$600(Lcom/shishicai/app/activity/mine/MinePasswod;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 98
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MinePasswod$3;->this$0:Lcom/shishicai/app/activity/mine/MinePasswod;

    invoke-static {v1}, Lcom/shishicai/app/service/HttpMethod;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 99
    new-instance v0, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v0}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 100
    .local v0, "params":Lcom/loopj/android/http/RequestParams;
    const-string v1, "act"

    const-string v2, "act_edit_password"

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v1, "authkey"

    sget-object v2, Lcom/shishicai/app/Constant;->session_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v1, "old_password"

    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MinePasswod$3;->this$0:Lcom/shishicai/app/activity/mine/MinePasswod;

    invoke-static {v2}, Lcom/shishicai/app/activity/mine/MinePasswod;->access$300(Lcom/shishicai/app/activity/mine/MinePasswod;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v1, "new_password"

    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MinePasswod$3;->this$0:Lcom/shishicai/app/activity/mine/MinePasswod;

    invoke-static {v2}, Lcom/shishicai/app/activity/mine/MinePasswod;->access$400(Lcom/shishicai/app/activity/mine/MinePasswod;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    sget-object v1, Lcom/shishicai/app/Constant;->URLUser:Ljava/lang/String;

    new-instance v2, Lcom/shishicai/app/activity/mine/MinePasswod$3$1;

    invoke-direct {v2, p0}, Lcom/shishicai/app/activity/mine/MinePasswod$3$1;-><init>(Lcom/shishicai/app/activity/mine/MinePasswod$3;)V

    invoke-static {v1, v0, v2}, Lcom/shishicai/app/service/HttpUser;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/JsonHttpResponseHandler;)V

    goto/16 :goto_0

    .line 124
    .end local v0    # "params":Lcom/loopj/android/http/RequestParams;
    :cond_3
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MinePasswod$3;->this$0:Lcom/shishicai/app/activity/mine/MinePasswod;

    invoke-static {v1}, Lcom/shishicai/app/service/HttpMethod;->Toast(Landroid/content/Context;)V

    goto/16 :goto_0
.end method
