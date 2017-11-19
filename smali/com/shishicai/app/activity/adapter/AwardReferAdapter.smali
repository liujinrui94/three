.class public Lcom/shishicai/app/activity/adapter/AwardReferAdapter;
.super Landroid/widget/BaseAdapter;
.source "AwardReferAdapter.java"


# instance fields
.field private adapter:Lcom/shishicai/app/activity/adapter/ReferListAdapter;

.field private context:Landroid/content/Context;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean;",
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
            "Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/shishicai/app/activity/adapter/AwardReferAdapter;->context:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/shishicai/app/activity/adapter/AwardReferAdapter;->list:Ljava/util/List;

    .line 24
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/shishicai/app/activity/adapter/AwardReferAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 38
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 44
    iget-object v5, p0, Lcom/shishicai/app/activity/adapter/AwardReferAdapter;->context:Landroid/content/Context;

    const v6, 0x7f030066

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 46
    const v5, 0x7f09018f

    .line 47
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 48
    .local v4, "timeTv":Landroid/widget/TextView;
    const v5, 0x7f090190

    .line 49
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 50
    .local v1, "expertTv":Landroid/widget/TextView;
    const v5, 0x7f0900ee

    .line 51
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 52
    .local v3, "resultTv":Landroid/widget/TextView;
    const v5, 0x7f090191

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/shishicai/app/ui/NoScrollListView;

    .line 53
    .local v2, "referLv":Lcom/shishicai/app/ui/NoScrollListView;
    iget-object v5, p0, Lcom/shishicai/app/activity/adapter/AwardReferAdapter;->list:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean;

    .line 54
    .local v0, "bean":Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean;
    invoke-virtual {v0}, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean;->getDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean;->getPeriod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u671f"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {v0}, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean;->getResult()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\u7b49\u5f85\u5f00\u5956"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 58
    const-string v5, "\u6295\u6ce8\u53c2\u8003"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    :goto_0
    new-instance v5, Lcom/shishicai/app/activity/adapter/ReferListAdapter;

    iget-object v6, p0, Lcom/shishicai/app/activity/adapter/AwardReferAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean;->getData()Ljava/util/List;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/shishicai/app/activity/adapter/ReferListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v5, p0, Lcom/shishicai/app/activity/adapter/AwardReferAdapter;->adapter:Lcom/shishicai/app/activity/adapter/ReferListAdapter;

    .line 64
    iget-object v5, p0, Lcom/shishicai/app/activity/adapter/AwardReferAdapter;->adapter:Lcom/shishicai/app/activity/adapter/ReferListAdapter;

    invoke-virtual {v2, v5}, Lcom/shishicai/app/ui/NoScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    return-object p2

    .line 61
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5f00\u5956\u7ed3\u679c:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean;->getResult()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
