.class Lcom/shishicai/app/activity/mine/MineOrder$4;
.super Ljava/lang/Object;
.source "MineOrder.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/mine/MineOrder;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/mine/MineOrder;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/mine/MineOrder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/mine/MineOrder;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineOrder$4;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineOrder$4;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-static {v1}, Lcom/shishicai/app/service/HttpMethod;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineOrder$4;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineOrder$4;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-static {v1}, Lcom/shishicai/app/activity/mine/MineOrder;->access$800(Lcom/shishicai/app/activity/mine/MineOrder;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shishicai/app/domain/MyOrder;

    invoke-static {v2, v1}, Lcom/shishicai/app/activity/mine/MineOrder;->access$702(Lcom/shishicai/app/activity/mine/MineOrder;Lcom/shishicai/app/domain/MyOrder;)Lcom/shishicai/app/domain/MyOrder;

    .line 168
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineOrder$4;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    const-class v2, Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "orderId"

    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineOrder$4;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-static {v2}, Lcom/shishicai/app/activity/mine/MineOrder;->access$700(Lcom/shishicai/app/activity/mine/MineOrder;)Lcom/shishicai/app/domain/MyOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shishicai/app/domain/MyOrder;->getOrder_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineOrder$4;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-virtual {v1, v0}, Lcom/shishicai/app/activity/mine/MineOrder;->startActivity(Landroid/content/Intent;)V

    .line 174
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineOrder$4;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-static {v1}, Lcom/shishicai/app/service/HttpMethod;->Toast(Landroid/content/Context;)V

    goto :goto_0
.end method
