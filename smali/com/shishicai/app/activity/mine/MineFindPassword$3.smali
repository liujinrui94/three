.class Lcom/shishicai/app/activity/mine/MineFindPassword$3;
.super Ljava/lang/Object;
.source "MineFindPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/mine/MineFindPassword;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/mine/MineFindPassword;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/mine/MineFindPassword;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/mine/MineFindPassword;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineFindPassword$3;->this$0:Lcom/shishicai/app/activity/mine/MineFindPassword;

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

    .line 77
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineFindPassword$3;->this$0:Lcom/shishicai/app/activity/mine/MineFindPassword;

    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineFindPassword$3;->this$0:Lcom/shishicai/app/activity/mine/MineFindPassword;

    invoke-static {v2}, Lcom/shishicai/app/activity/mine/MineFindPassword;->access$000(Lcom/shishicai/app/activity/mine/MineFindPassword;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shishicai/app/activity/mine/MineFindPassword;->access$202(Lcom/shishicai/app/activity/mine/MineFindPassword;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineFindPassword$3;->this$0:Lcom/shishicai/app/activity/mine/MineFindPassword;

    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineFindPassword$3;->this$0:Lcom/shishicai/app/activity/mine/MineFindPassword;

    invoke-static {v2}, Lcom/shishicai/app/activity/mine/MineFindPassword;->access$100(Lcom/shishicai/app/activity/mine/MineFindPassword;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shishicai/app/activity/mine/MineFindPassword;->access$302(Lcom/shishicai/app/activity/mine/MineFindPassword;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineFindPassword$3;->this$0:Lcom/shishicai/app/activity/mine/MineFindPassword;

    invoke-static {v1}, Lcom/shishicai/app/activity/mine/MineFindPassword;->access$200(Lcom/shishicai/app/activity/mine/MineFindPassword;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineFindPassword$3;->this$0:Lcom/shishicai/app/activity/mine/MineFindPassword;

    invoke-static {v2}, Lcom/shishicai/app/activity/mine/MineFindPassword;->access$300(Lcom/shishicai/app/activity/mine/MineFindPassword;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineFindPassword$3;->this$0:Lcom/shishicai/app/activity/mine/MineFindPassword;

    const-string v2, "\u7528\u6237\u540d\u6216\u90ae\u7bb1\u4e0d\u80fd\u4e3a\u7a7a\u3002"

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 119
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineFindPassword$3;->this$0:Lcom/shishicai/app/activity/mine/MineFindPassword;

    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineFindPassword$3;->this$0:Lcom/shishicai/app/activity/mine/MineFindPassword;

    const-string v3, ""

    const-string v4, "\u6b63\u5728\u63d0\u4ea4\uff0c\u8bf7\u7a0d\u7b49 \u2026"

    invoke-static {v2, v3, v4, v6, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shishicai/app/activity/mine/MineFindPassword;->access$402(Lcom/shishicai/app/activity/mine/MineFindPassword;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 84
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineFindPassword$3;->this$0:Lcom/shishicai/app/activity/mine/MineFindPassword;

    invoke-static {v1}, Lcom/shishicai/app/activity/mine/MineFindPassword;->access$400(Lcom/shishicai/app/activity/mine/MineFindPassword;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 85
    new-instance v0, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v0}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 86
    .local v0, "params":Lcom/loopj/android/http/RequestParams;
    const-string v1, "act"

    const-string v2, "send_pwd_email"

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v1, "user_name"

    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineFindPassword$3;->this$0:Lcom/shishicai/app/activity/mine/MineFindPassword;

    invoke-static {v2}, Lcom/shishicai/app/activity/mine/MineFindPassword;->access$200(Lcom/shishicai/app/activity/mine/MineFindPassword;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v1, "email"

    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineFindPassword$3;->this$0:Lcom/shishicai/app/activity/mine/MineFindPassword;

    invoke-static {v2}, Lcom/shishicai/app/activity/mine/MineFindPassword;->access$300(Lcom/shishicai/app/activity/mine/MineFindPassword;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    sget-object v1, Lcom/shishicai/app/Constant;->URLUser:Ljava/lang/String;

    new-instance v2, Lcom/shishicai/app/activity/mine/MineFindPassword$3$1;

    invoke-direct {v2, p0}, Lcom/shishicai/app/activity/mine/MineFindPassword$3$1;-><init>(Lcom/shishicai/app/activity/mine/MineFindPassword$3;)V

    invoke-static {v1, v0, v2}, Lcom/shishicai/app/service/HttpUser;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/JsonHttpResponseHandler;)V

    goto :goto_0
.end method
