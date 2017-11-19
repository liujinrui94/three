.class Lcom/shishicai/app/activity/mine/MineBonus$1;
.super Landroid/os/Handler;
.source "MineBonus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/activity/mine/MineBonus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/mine/MineBonus;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/mine/MineBonus;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/mine/MineBonus;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineBonus$1;->this$0:Lcom/shishicai/app/activity/mine/MineBonus;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x4

    .line 46
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 56
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 57
    return-void

    .line 48
    :sswitch_0
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineBonus$1;->this$0:Lcom/shishicai/app/activity/mine/MineBonus;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineBonus;->access$000(Lcom/shishicai/app/activity/mine/MineBonus;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 49
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineBonus$1;->this$0:Lcom/shishicai/app/activity/mine/MineBonus;

    invoke-static {v0}, Lcom/shishicai/app/service/HttpMethod;->ToastTimeOut(Landroid/content/Context;)V

    goto :goto_0

    .line 52
    :sswitch_1
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineBonus$1;->this$0:Lcom/shishicai/app/activity/mine/MineBonus;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineBonus;->access$000(Lcom/shishicai/app/activity/mine/MineBonus;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineBonus$1;->this$0:Lcom/shishicai/app/activity/mine/MineBonus;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineBonus;->access$100(Lcom/shishicai/app/activity/mine/MineBonus;)Lcom/shishicai/app/activity/mine/MineBonus$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shishicai/app/activity/mine/MineBonus$MyAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 46
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x6d -> :sswitch_1
    .end sparse-switch
.end method
