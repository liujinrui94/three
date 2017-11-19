.class Lcom/shishicai/app/activity/mine/MineOrderDetail$3;
.super Ljava/lang/Object;
.source "MineOrderDetail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/mine/MineOrderDetail;->pay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/mine/MineOrderDetail;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/mine/MineOrderDetail;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$3;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 199
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 200
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 202
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$3;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v1}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$2800(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 203
    return-void
.end method
