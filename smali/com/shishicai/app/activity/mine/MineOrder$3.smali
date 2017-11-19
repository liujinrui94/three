.class Lcom/shishicai/app/activity/mine/MineOrder$3;
.super Ljava/lang/Object;
.source "MineOrder.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


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
    .line 131
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineOrder$3;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 6
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0xe0

    const/16 v4, 0xd0

    const/16 v3, 0x40

    const v2, 0x7f090030

    .line 136
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder$3;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineOrder;->access$400(Lcom/shishicai/app/activity/mine/MineOrder;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, -0x1

    .line 137
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder$3;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineOrder;->access$400(Lcom/shishicai/app/activity/mine/MineOrder;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 153
    :goto_0
    return-void

    .line 140
    :pswitch_0
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder$3;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineOrder;->access$500(Lcom/shishicai/app/activity/mine/MineOrder;)Landroid/widget/TabWidget;

    move-result-object v0

    const v1, 0x7f0200e9

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setBackgroundResource(I)V

    .line 141
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder$3;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineOrder;->access$500(Lcom/shishicai/app/activity/mine/MineOrder;)Landroid/widget/TabWidget;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 142
    invoke-static {v3, v5, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 145
    :pswitch_1
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder$3;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineOrder;->access$500(Lcom/shishicai/app/activity/mine/MineOrder;)Landroid/widget/TabWidget;

    move-result-object v0

    const v1, 0x7f0200e8

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setBackgroundResource(I)V

    .line 146
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder$3;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineOrder;->access$500(Lcom/shishicai/app/activity/mine/MineOrder;)Landroid/widget/TabWidget;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 147
    invoke-static {v3, v5, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
