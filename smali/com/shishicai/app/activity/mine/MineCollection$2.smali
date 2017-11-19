.class Lcom/shishicai/app/activity/mine/MineCollection$2;
.super Ljava/lang/Object;
.source "MineCollection.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


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
    .line 123
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineCollection$2;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 9
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, -0x1000000

    const v4, 0x7f090086

    .line 128
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection$2;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineCollection;->access$400(Lcom/shishicai/app/activity/mine/MineCollection;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x40

    const/16 v2, 0xe0

    const/16 v3, 0xd0

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection$2;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineCollection;->access$400(Lcom/shishicai/app/activity/mine/MineCollection;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 145
    :goto_0
    return-void

    .line 131
    :pswitch_0
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection$2;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineCollection;->access$500(Lcom/shishicai/app/activity/mine/MineCollection;)Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection$2;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineCollection;->access$500(Lcom/shishicai/app/activity/mine/MineCollection;)Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 135
    :pswitch_1
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection$2;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineCollection;->access$500(Lcom/shishicai/app/activity/mine/MineCollection;)Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection$2;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineCollection;->access$500(Lcom/shishicai/app/activity/mine/MineCollection;)Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 139
    :pswitch_2
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection$2;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineCollection;->access$500(Lcom/shishicai/app/activity/mine/MineCollection;)Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection$2;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineCollection;->access$500(Lcom/shishicai/app/activity/mine/MineCollection;)Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
