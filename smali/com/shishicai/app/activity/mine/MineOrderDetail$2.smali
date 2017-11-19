.class Lcom/shishicai/app/activity/mine/MineOrderDetail$2;
.super Ljava/lang/Object;
.source "MineOrderDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/mine/MineOrderDetail;->onCreate(Landroid/os/Bundle;)V
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
    .line 153
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$2;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$2;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$1800(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\uffe50.00\u5143"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$2;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    const-string v1, "\u8ba2\u5355\u5df2\u53d6\u6d88\uff0c\u4e0d\u80fd\u4ed8\u6b3e\uff01"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 162
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$2;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$2700(Lcom/shishicai/app/activity/mine/MineOrderDetail;)V

    goto :goto_0
.end method
