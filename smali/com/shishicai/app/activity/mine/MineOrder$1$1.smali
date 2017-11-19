.class Lcom/shishicai/app/activity/mine/MineOrder$1$1;
.super Ljava/lang/Object;
.source "MineOrder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/mine/MineOrder$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shishicai/app/activity/mine/MineOrder$1;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/mine/MineOrder$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/shishicai/app/activity/mine/MineOrder$1;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineOrder$1$1;->this$1:Lcom/shishicai/app/activity/mine/MineOrder$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder$1$1;->this$1:Lcom/shishicai/app/activity/mine/MineOrder$1;

    iget-object v0, v0, Lcom/shishicai/app/activity/mine/MineOrder$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-virtual {v0}, Lcom/shishicai/app/activity/mine/MineOrder;->finish()V

    .line 87
    return-void
.end method
