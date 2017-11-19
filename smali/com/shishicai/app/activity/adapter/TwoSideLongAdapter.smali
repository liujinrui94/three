.class public Lcom/shishicai/app/activity/adapter/TwoSideLongAdapter;
.super Landroid/widget/BaseAdapter;
.source "TwoSideLongAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shishicai/app/activity/adapter/TwoSideLongAdapter$Holder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/shishicai/app/domain/TwoSideLongInfo$ItemsBean;",
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
            "Lcom/shishicai/app/domain/TwoSideLongInfo$ItemsBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/shishicai/app/domain/TwoSideLongInfo$ItemsBean;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/shishicai/app/activity/adapter/TwoSideLongAdapter;->context:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/shishicai/app/activity/adapter/TwoSideLongAdapter;->list:Ljava/util/List;

    .line 25
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/shishicai/app/activity/adapter/TwoSideLongAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 39
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

    .line 49
    if-nez p2, :cond_0

    .line 50
    new-instance v0, Lcom/shishicai/app/activity/adapter/TwoSideLongAdapter$Holder;

    invoke-direct {v0, p0, v4}, Lcom/shishicai/app/activity/adapter/TwoSideLongAdapter$Holder;-><init>(Lcom/shishicai/app/activity/adapter/TwoSideLongAdapter;Lcom/shishicai/app/activity/adapter/TwoSideLongAdapter$1;)V

    .line 51
    .local v0, "holder":Lcom/shishicai/app/activity/adapter/TwoSideLongAdapter$Holder;
    iget-object v2, p0, Lcom/shishicai/app/activity/adapter/TwoSideLongAdapter;->context:Landroid/content/Context;

    const v3, 0x7f030073

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 53
    const v2, 0x7f0901a2

    .line 54
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/shishicai/app/activity/adapter/TwoSideLongAdapter$Holder;->categoryTv:Landroid/widget/TextView;

    .line 55
    const v2, 0x7f0901a3

    .line 56
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/shishicai/app/activity/adapter/TwoSideLongAdapter$Holder;->twoSideCategoryTv:Landroid/widget/TextView;

    .line 57
    const v2, 0x7f0901a4

    .line 58
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/shishicai/app/activity/adapter/TwoSideLongAdapter$Holder;->openedResultTv:Landroid/widget/TextView;

    .line 59
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 63
    :goto_0
    iget-object v2, p0, Lcom/shishicai/app/activity/adapter/TwoSideLongAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shishicai/app/domain/TwoSideLongInfo$ItemsBean;

    .line 64
    .local v1, "items":Lcom/shishicai/app/domain/TwoSideLongInfo$ItemsBean;
    iget-object v2, v0, Lcom/shishicai/app/activity/adapter/TwoSideLongAdapter$Holder;->categoryTv:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/shishicai/app/domain/TwoSideLongInfo$ItemsBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v2, v0, Lcom/shishicai/app/activity/adapter/TwoSideLongAdapter$Holder;->twoSideCategoryTv:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/shishicai/app/domain/TwoSideLongInfo$ItemsBean;->getResult()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v2, v0, Lcom/shishicai/app/activity/adapter/TwoSideLongAdapter$Holder;->openedResultTv:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/shishicai/app/domain/TwoSideLongInfo$ItemsBean;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    return-object p2

    .line 61
    .end local v0    # "holder":Lcom/shishicai/app/activity/adapter/TwoSideLongAdapter$Holder;
    .end local v1    # "items":Lcom/shishicai/app/domain/TwoSideLongInfo$ItemsBean;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shishicai/app/activity/adapter/TwoSideLongAdapter$Holder;

    .restart local v0    # "holder":Lcom/shishicai/app/activity/adapter/TwoSideLongAdapter$Holder;
    goto :goto_0
.end method
