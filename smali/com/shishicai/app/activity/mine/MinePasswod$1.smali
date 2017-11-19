.class Lcom/shishicai/app/activity/mine/MinePasswod$1;
.super Landroid/os/Handler;
.source "MinePasswod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/activity/mine/MinePasswod;
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
    .line 38
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MinePasswod$1;->this$0:Lcom/shishicai/app/activity/mine/MinePasswod;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 43
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 55
    :goto_0
    return-void

    .line 45
    :pswitch_0
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MinePasswod$1;->this$0:Lcom/shishicai/app/activity/mine/MinePasswod;

    invoke-static {v1}, Lcom/shishicai/app/activity/mine/MinePasswod;->access$000(Lcom/shishicai/app/activity/mine/MinePasswod;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MinePasswod$1;->this$0:Lcom/shishicai/app/activity/mine/MinePasswod;

    invoke-static {v1}, Lcom/shishicai/app/activity/mine/MinePasswod;->access$100(Lcom/shishicai/app/activity/mine/MinePasswod;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MinePasswod$1;->this$0:Lcom/shishicai/app/activity/mine/MinePasswod;

    invoke-static {v1}, Lcom/shishicai/app/activity/mine/MinePasswod;->access$200(Lcom/shishicai/app/activity/mine/MinePasswod;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MinePasswod$1;->this$0:Lcom/shishicai/app/activity/mine/MinePasswod;

    const-string v2, "\u7528\u6237\u4fe1\u606f\u8fc7\u671f\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55\uff01"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 49
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 50
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MinePasswod$1;->this$0:Lcom/shishicai/app/activity/mine/MinePasswod;

    const-class v2, Lcom/shishicai/app/activity/mine/MineActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 51
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MinePasswod$1;->this$0:Lcom/shishicai/app/activity/mine/MinePasswod;

    invoke-virtual {v1, v0}, Lcom/shishicai/app/activity/mine/MinePasswod;->startActivity(Landroid/content/Intent;)V

    .line 52
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MinePasswod$1;->this$0:Lcom/shishicai/app/activity/mine/MinePasswod;

    invoke-virtual {v1}, Lcom/shishicai/app/activity/mine/MinePasswod;->finish()V

    goto :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
    .end packed-switch
.end method
