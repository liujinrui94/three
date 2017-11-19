.class Lcom/shishicai/app/activity/mine/MineCollection$3;
.super Ljava/lang/Object;
.source "MineCollection.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/mine/MineCollection;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/mine/MineCollection;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/mine/MineCollection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/mine/MineCollection;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineCollection$3;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 165
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineCollection$3;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-static {v2}, Lcom/shishicai/app/service/HttpMethod;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    iget-object v3, p0, Lcom/shishicai/app/activity/mine/MineCollection$3;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineCollection$3;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-static {v2}, Lcom/shishicai/app/activity/mine/MineCollection;->access$800(Lcom/shishicai/app/activity/mine/MineCollection;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shishicai/app/domain/Goods;

    invoke-static {v3, v2}, Lcom/shishicai/app/activity/mine/MineCollection;->access$702(Lcom/shishicai/app/activity/mine/MineCollection;Lcom/shishicai/app/domain/Goods;)Lcom/shishicai/app/domain/Goods;

    .line 167
    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineCollection$3;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-static {v2}, Lcom/shishicai/app/activity/mine/MineCollection;->access$700(Lcom/shishicai/app/activity/mine/MineCollection;)Lcom/shishicai/app/domain/Goods;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shishicai/app/domain/Goods;->getGoods_id()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "goodsId":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 169
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "urlPart"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "goods.php?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string v2, "goodsId"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    .end local v0    # "goodsId":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineCollection$3;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-static {v2}, Lcom/shishicai/app/service/HttpMethod;->Toast(Landroid/content/Context;)V

    goto :goto_0
.end method
