.class Lcom/shishicai/app/activity/mine/MineFindPassword$1;
.super Landroid/os/Handler;
.source "MineFindPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/activity/mine/MineFindPassword;
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
    .line 42
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineFindPassword$1;->this$0:Lcom/shishicai/app/activity/mine/MineFindPassword;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 46
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 52
    :goto_0
    return-void

    .line 48
    :pswitch_0
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineFindPassword$1;->this$0:Lcom/shishicai/app/activity/mine/MineFindPassword;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineFindPassword;->access$000(Lcom/shishicai/app/activity/mine/MineFindPassword;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineFindPassword$1;->this$0:Lcom/shishicai/app/activity/mine/MineFindPassword;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineFindPassword;->access$100(Lcom/shishicai/app/activity/mine/MineFindPassword;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x38
        :pswitch_0
    .end packed-switch
.end method
