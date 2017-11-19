.class Lcom/shishicai/app/activity/mine/MineBonus$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "MineBonus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/activity/mine/MineBonus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shishicai/app/activity/mine/MineBonus$MyAdapter$Holder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/mine/MineBonus;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/mine/MineBonus;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/mine/MineBonus;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineBonus$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineBonus;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineBonus$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineBonus;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineBonus;->access$200(Lcom/shishicai/app/activity/mine/MineBonus;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 108
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "holder":Lcom/shishicai/app/activity/mine/MineBonus$MyAdapter$Holder;
    if-nez p2, :cond_1

    .line 120
    new-instance v0, Lcom/shishicai/app/activity/mine/MineBonus$MyAdapter$Holder;

    .end local v0    # "holder":Lcom/shishicai/app/activity/mine/MineBonus$MyAdapter$Holder;
    invoke-direct {v0, p0, v4}, Lcom/shishicai/app/activity/mine/MineBonus$MyAdapter$Holder;-><init>(Lcom/shishicai/app/activity/mine/MineBonus$MyAdapter;Lcom/shishicai/app/activity/mine/MineBonus$1;)V

    .line 121
    .restart local v0    # "holder":Lcom/shishicai/app/activity/mine/MineBonus$MyAdapter$Holder;
    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineBonus$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineBonus;

    const v3, 0x7f03001c

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 123
    const v2, 0x7f090071

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/shishicai/app/activity/mine/MineBonus$MyAdapter$Holder;->type_name:Landroid/widget/TextView;

    .line 124
    const v2, 0x7f090074

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/shishicai/app/activity/mine/MineBonus$MyAdapter$Holder;->startdate:Landroid/widget/TextView;

    .line 125
    const v2, 0x7f090075

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/shishicai/app/activity/mine/MineBonus$MyAdapter$Holder;->enddate:Landroid/widget/TextView;

    .line 126
    const v2, 0x7f090072

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/shishicai/app/activity/mine/MineBonus$MyAdapter$Holder;->ivStatus:Landroid/widget/ImageView;

    .line 127
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 131
    :goto_0
    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineBonus$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineBonus;

    invoke-static {v2}, Lcom/shishicai/app/activity/mine/MineBonus;->access$200(Lcom/shishicai/app/activity/mine/MineBonus;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shishicai/app/domain/Bonus;

    invoke-virtual {v2}, Lcom/shishicai/app/domain/Bonus;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "status":Ljava/lang/String;
    const-string v2, "\u5df2\u8fc7\u671f"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 133
    iget-object v2, v0, Lcom/shishicai/app/activity/mine/MineBonus$MyAdapter$Holder;->ivStatus:Landroid/widget/ImageView;

    const v3, 0x7f02002f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 137
    :cond_0
    :goto_1
    iget-object v3, v0, Lcom/shishicai/app/activity/mine/MineBonus$MyAdapter$Holder;->type_name:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineBonus$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineBonus;

    invoke-static {v2}, Lcom/shishicai/app/activity/mine/MineBonus;->access$200(Lcom/shishicai/app/activity/mine/MineBonus;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shishicai/app/domain/Bonus;

    invoke-virtual {v2}, Lcom/shishicai/app/domain/Bonus;->getType_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v3, v0, Lcom/shishicai/app/activity/mine/MineBonus$MyAdapter$Holder;->startdate:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineBonus$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineBonus;

    invoke-static {v2}, Lcom/shishicai/app/activity/mine/MineBonus;->access$200(Lcom/shishicai/app/activity/mine/MineBonus;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shishicai/app/domain/Bonus;

    invoke-virtual {v2}, Lcom/shishicai/app/domain/Bonus;->getUse_startdate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v3, v0, Lcom/shishicai/app/activity/mine/MineBonus$MyAdapter$Holder;->enddate:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineBonus$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineBonus;

    invoke-static {v2}, Lcom/shishicai/app/activity/mine/MineBonus;->access$200(Lcom/shishicai/app/activity/mine/MineBonus;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shishicai/app/domain/Bonus;

    invoke-virtual {v2}, Lcom/shishicai/app/domain/Bonus;->getUse_enddate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    return-object p2

    .line 129
    .end local v1    # "status":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/shishicai/app/activity/mine/MineBonus$MyAdapter$Holder;
    check-cast v0, Lcom/shishicai/app/activity/mine/MineBonus$MyAdapter$Holder;

    .restart local v0    # "holder":Lcom/shishicai/app/activity/mine/MineBonus$MyAdapter$Holder;
    goto :goto_0

    .line 134
    .restart local v1    # "status":Ljava/lang/String;
    :cond_2
    const-string v2, "\u5df2\u4f7f\u7528"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    iget-object v2, v0, Lcom/shishicai/app/activity/mine/MineBonus$MyAdapter$Holder;->ivStatus:Landroid/widget/ImageView;

    const v3, 0x7f020030

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1
.end method
