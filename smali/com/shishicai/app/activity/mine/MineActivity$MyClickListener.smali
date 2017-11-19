.class Lcom/shishicai/app/activity/mine/MineActivity$MyClickListener;
.super Ljava/lang/Object;
.source "MineActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/activity/mine/MineActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyClickListener"
.end annotation


# instance fields
.field intent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/shishicai/app/activity/mine/MineActivity;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/mine/MineActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/mine/MineActivity;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineActivity$MyClickListener;->this$0:Lcom/shishicai/app/activity/mine/MineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 81
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineActivity$MyClickListener;->this$0:Lcom/shishicai/app/activity/mine/MineActivity;

    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineActivity$MyClickListener;->this$0:Lcom/shishicai/app/activity/mine/MineActivity;

    invoke-static {v1}, Lcom/shishicai/app/activity/mine/MineActivity;->access$100(Lcom/shishicai/app/activity/mine/MineActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shishicai/app/activity/mine/MineActivity;->access$002(Lcom/shishicai/app/activity/mine/MineActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineActivity$MyClickListener;->this$0:Lcom/shishicai/app/activity/mine/MineActivity;

    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineActivity$MyClickListener;->this$0:Lcom/shishicai/app/activity/mine/MineActivity;

    invoke-static {v1}, Lcom/shishicai/app/activity/mine/MineActivity;->access$300(Lcom/shishicai/app/activity/mine/MineActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shishicai/app/activity/mine/MineActivity;->access$202(Lcom/shishicai/app/activity/mine/MineActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 109
    :goto_0
    :pswitch_0
    return-void

    .line 85
    :pswitch_1
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineActivity$MyClickListener;->this$0:Lcom/shishicai/app/activity/mine/MineActivity;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineActivity;->access$000(Lcom/shishicai/app/activity/mine/MineActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineActivity$MyClickListener;->this$0:Lcom/shishicai/app/activity/mine/MineActivity;

    const-string v1, "\u7528\u6237\u540d\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineActivity$MyClickListener;->this$0:Lcom/shishicai/app/activity/mine/MineActivity;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineActivity;->access$200(Lcom/shishicai/app/activity/mine/MineActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineActivity$MyClickListener;->this$0:Lcom/shishicai/app/activity/mine/MineActivity;

    const-string v1, "\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineActivity$MyClickListener;->this$0:Lcom/shishicai/app/activity/mine/MineActivity;

    invoke-static {v0}, Lcom/shishicai/app/service/HttpMethod;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineActivity$MyClickListener;->this$0:Lcom/shishicai/app/activity/mine/MineActivity;

    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineActivity$MyClickListener;->this$0:Lcom/shishicai/app/activity/mine/MineActivity;

    const-string v2, ""

    const-string v3, "\u6b63\u5728\u767b\u5f55\uff0c\u8bf7\u7a0d\u7b49 \u2026"

    invoke-static {v1, v2, v3, v5, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shishicai/app/activity/mine/MineActivity;->access$402(Lcom/shishicai/app/activity/mine/MineActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 93
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineActivity$MyClickListener;->this$0:Lcom/shishicai/app/activity/mine/MineActivity;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineActivity;->access$400(Lcom/shishicai/app/activity/mine/MineActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 94
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineActivity$MyClickListener;->this$0:Lcom/shishicai/app/activity/mine/MineActivity;

    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineActivity$MyClickListener;->this$0:Lcom/shishicai/app/activity/mine/MineActivity;

    invoke-static {v1}, Lcom/shishicai/app/activity/mine/MineActivity;->access$000(Lcom/shishicai/app/activity/mine/MineActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineActivity$MyClickListener;->this$0:Lcom/shishicai/app/activity/mine/MineActivity;

    invoke-static {v2}, Lcom/shishicai/app/activity/mine/MineActivity;->access$200(Lcom/shishicai/app/activity/mine/MineActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/shishicai/app/activity/mine/MineActivity;->access$500(Lcom/shishicai/app/activity/mine/MineActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineActivity$MyClickListener;->this$0:Lcom/shishicai/app/activity/mine/MineActivity;

    const-string v1, "\u4eb2\uff0c\u7f51\u7edc\u8fde\u63a5\u5931\u8d25"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 101
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineActivity$MyClickListener;->this$0:Lcom/shishicai/app/activity/mine/MineActivity;

    const-class v2, Lcom/shishicai/app/activity/mine/MineRegister;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineActivity$MyClickListener;->intent:Landroid/content/Intent;

    .line 102
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineActivity$MyClickListener;->this$0:Lcom/shishicai/app/activity/mine/MineActivity;

    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineActivity$MyClickListener;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/shishicai/app/activity/mine/MineActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 105
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineActivity$MyClickListener;->this$0:Lcom/shishicai/app/activity/mine/MineActivity;

    const-class v2, Lcom/shishicai/app/activity/mine/MineFindPassword;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineActivity$MyClickListener;->intent:Landroid/content/Intent;

    .line 106
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineActivity$MyClickListener;->this$0:Lcom/shishicai/app/activity/mine/MineActivity;

    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineActivity$MyClickListener;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/shishicai/app/activity/mine/MineActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x7f0900ff
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
