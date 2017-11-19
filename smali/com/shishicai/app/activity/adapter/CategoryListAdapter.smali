.class public Lcom/shishicai/app/activity/adapter/CategoryListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CategoryListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shishicai/app/activity/adapter/CategoryListAdapter$Holder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/shishicai/app/domain/CategoryInfo;",
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
            "Lcom/shishicai/app/domain/CategoryInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/shishicai/app/domain/CategoryInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/shishicai/app/activity/adapter/CategoryListAdapter;->context:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/shishicai/app/activity/adapter/CategoryListAdapter;->list:Ljava/util/List;

    .line 22
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/shishicai/app/activity/adapter/CategoryListAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 36
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 47
    if-nez p2, :cond_0

    .line 48
    new-instance v0, Lcom/shishicai/app/activity/adapter/CategoryListAdapter$Holder;

    invoke-direct {v0, p0, v4}, Lcom/shishicai/app/activity/adapter/CategoryListAdapter$Holder;-><init>(Lcom/shishicai/app/activity/adapter/CategoryListAdapter;Lcom/shishicai/app/activity/adapter/CategoryListAdapter$1;)V

    .line 49
    .local v0, "holder":Lcom/shishicai/app/activity/adapter/CategoryListAdapter$Holder;
    iget-object v2, p0, Lcom/shishicai/app/activity/adapter/CategoryListAdapter;->context:Landroid/content/Context;

    const v3, 0x7f030045

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 51
    const v2, 0x7f0900ae

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/shishicai/app/activity/adapter/CategoryListAdapter$Holder;->tv:Landroid/widget/TextView;

    .line 52
    const v2, 0x7f0900ac

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/shishicai/app/activity/adapter/CategoryListAdapter$Holder;->iv:Landroid/widget/ImageView;

    .line 53
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 57
    :goto_0
    iget-object v2, p0, Lcom/shishicai/app/activity/adapter/CategoryListAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shishicai/app/domain/CategoryInfo;

    .line 58
    .local v1, "info":Lcom/shishicai/app/domain/CategoryInfo;
    iget-object v2, v0, Lcom/shishicai/app/activity/adapter/CategoryListAdapter$Holder;->iv:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/shishicai/app/domain/CategoryInfo;->getImgID()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 59
    iget-object v2, v0, Lcom/shishicai/app/activity/adapter/CategoryListAdapter$Holder;->tv:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/shishicai/app/domain/CategoryInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    return-object p2

    .line 55
    .end local v0    # "holder":Lcom/shishicai/app/activity/adapter/CategoryListAdapter$Holder;
    .end local v1    # "info":Lcom/shishicai/app/domain/CategoryInfo;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shishicai/app/activity/adapter/CategoryListAdapter$Holder;

    .restart local v0    # "holder":Lcom/shishicai/app/activity/adapter/CategoryListAdapter$Holder;
    goto :goto_0
.end method
