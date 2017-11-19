.class Lcom/shishicai/app/activity/mine/MineInformation$3;
.super Ljava/lang/Object;
.source "MineInformation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/mine/MineInformation;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/mine/MineInformation;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/mine/MineInformation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/mine/MineInformation;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineInformation$3;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 117
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 118
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x65

    iput v2, v1, Landroid/os/Message;->what:I

    .line 119
    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineInformation$3;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-static {v2}, Lcom/shishicai/app/activity/mine/MineInformation;->access$1200(Lcom/shishicai/app/activity/mine/MineInformation;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 120
    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineInformation$3;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-virtual {v2}, Lcom/shishicai/app/activity/mine/MineInformation;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/shishicai/app/MyApplication;

    .line 122
    .local v0, "app":Lcom/shishicai/app/MyApplication;
    return-void
.end method
