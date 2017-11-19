.class Lcom/shishicai/app/utils/UpdateManager$1;
.super Landroid/os/Handler;
.source "UpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/utils/UpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/utils/UpdateManager;


# direct methods
.method constructor <init>(Lcom/shishicai/app/utils/UpdateManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/utils/UpdateManager;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/shishicai/app/utils/UpdateManager$1;->this$0:Lcom/shishicai/app/utils/UpdateManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 48
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 56
    :goto_0
    return-void

    .line 50
    :pswitch_0
    iget-object v0, p0, Lcom/shishicai/app/utils/UpdateManager$1;->this$0:Lcom/shishicai/app/utils/UpdateManager;

    invoke-static {v0}, Lcom/shishicai/app/utils/UpdateManager;->access$000(Lcom/shishicai/app/utils/UpdateManager;)V

    goto :goto_0

    .line 53
    :pswitch_1
    iget-object v0, p0, Lcom/shishicai/app/utils/UpdateManager$1;->this$0:Lcom/shishicai/app/utils/UpdateManager;

    invoke-static {v0}, Lcom/shishicai/app/utils/UpdateManager;->access$100(Lcom/shishicai/app/utils/UpdateManager;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u5e94\u7528\u5df2\u7ecf\u662f\u6700\u65b0\u7248"

    invoke-static {v0, v1}, Lcom/shishicai/app/service/HttpMethod;->Toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
