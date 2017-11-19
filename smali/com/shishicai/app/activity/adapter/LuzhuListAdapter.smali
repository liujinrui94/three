.class public Lcom/shishicai/app/activity/adapter/LuzhuListAdapter;
.super Landroid/widget/BaseAdapter;
.source "LuzhuListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shishicai/app/activity/adapter/LuzhuListAdapter$Holder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean$DataBeanX;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean$DataBeanX;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean$DataBeanX;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/shishicai/app/activity/adapter/LuzhuListAdapter;->context:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/shishicai/app/activity/adapter/LuzhuListAdapter;->list:Ljava/util/List;

    .line 22
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/shishicai/app/activity/adapter/LuzhuListAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 37
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 48
    if-nez p2, :cond_0

    .line 49
    new-instance v2, Lcom/shishicai/app/activity/adapter/LuzhuListAdapter$Holder;

    invoke-direct {v2, p0, v9}, Lcom/shishicai/app/activity/adapter/LuzhuListAdapter$Holder;-><init>(Lcom/shishicai/app/activity/adapter/LuzhuListAdapter;Lcom/shishicai/app/activity/adapter/LuzhuListAdapter$1;)V

    .line 50
    .local v2, "holder":Lcom/shishicai/app/activity/adapter/LuzhuListAdapter$Holder;
    iget-object v5, p0, Lcom/shishicai/app/activity/adapter/LuzhuListAdapter;->context:Landroid/content/Context;

    const v6, 0x7f030071

    invoke-static {v5, v6, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 52
    const v5, 0x7f09019f

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, v2, Lcom/shishicai/app/activity/adapter/LuzhuListAdapter$Holder;->nameOddLl:Landroid/widget/LinearLayout;

    .line 53
    const v5, 0x7f0901a1

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, v2, Lcom/shishicai/app/activity/adapter/LuzhuListAdapter$Holder;->nameLl:Landroid/widget/LinearLayout;

    .line 54
    const v5, 0x7f0901a0

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/shishicai/app/activity/adapter/LuzhuListAdapter$Holder;->nameOddTv:Landroid/widget/TextView;

    .line 55
    const v5, 0x7f0900ed

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/shishicai/app/activity/adapter/LuzhuListAdapter$Holder;->nameTv:Landroid/widget/TextView;

    .line 56
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 60
    :goto_0
    iget-object v5, p0, Lcom/shishicai/app/activity/adapter/LuzhuListAdapter;->list:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean$DataBeanX;

    .line 61
    .local v3, "info":Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean$DataBeanX;
    invoke-virtual {v3}, Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean$DataBeanX;->getData()Ljava/util/List;

    move-result-object v1

    .line 62
    .local v1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean$DataBeanX$DataBean;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean$DataBeanX$DataBean;

    .line 65
    .local v0, "bean":Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean$DataBeanX$DataBean;
    invoke-virtual {v0}, Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean$DataBeanX$DataBean;->getResult()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 58
    .end local v0    # "bean":Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean$DataBeanX$DataBean;
    .end local v1    # "data":Ljava/util/List;, "Ljava/util/List<Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean$DataBeanX$DataBean;>;"
    .end local v2    # "holder":Lcom/shishicai/app/activity/adapter/LuzhuListAdapter$Holder;
    .end local v3    # "info":Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean$DataBeanX;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shishicai/app/activity/adapter/LuzhuListAdapter$Holder;

    .restart local v2    # "holder":Lcom/shishicai/app/activity/adapter/LuzhuListAdapter$Holder;
    goto :goto_0

    .line 67
    .restart local v1    # "data":Ljava/util/List;, "Ljava/util/List<Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean$DataBeanX$DataBean;>;"
    .restart local v3    # "info":Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean$DataBeanX;
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    iget-object v5, v2, Lcom/shishicai/app/activity/adapter/LuzhuListAdapter$Holder;->nameTv:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v5, v2, Lcom/shishicai/app/activity/adapter/LuzhuListAdapter$Holder;->nameOddTv:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    rem-int/lit8 v5, p1, 0x2

    if-eqz v5, :cond_2

    .line 71
    iget-object v5, v2, Lcom/shishicai/app/activity/adapter/LuzhuListAdapter$Holder;->nameOddLl:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 72
    iget-object v5, v2, Lcom/shishicai/app/activity/adapter/LuzhuListAdapter$Holder;->nameLl:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 77
    :goto_2
    return-object p2

    .line 74
    :cond_2
    iget-object v5, v2, Lcom/shishicai/app/activity/adapter/LuzhuListAdapter$Holder;->nameOddLl:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 75
    iget-object v5, v2, Lcom/shishicai/app/activity/adapter/LuzhuListAdapter$Holder;->nameLl:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method
