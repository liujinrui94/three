.class public Lcom/shishicai/app/activity/adapter/ReferListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ReferListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shishicai/app/activity/adapter/ReferListAdapter$Holder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX;",
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
            "Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/shishicai/app/activity/adapter/ReferListAdapter;->context:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/shishicai/app/activity/adapter/ReferListAdapter;->list:Ljava/util/List;

    .line 26
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/shishicai/app/activity/adapter/ReferListAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 41
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 51
    if-nez p2, :cond_4

    .line 52
    new-instance v1, Lcom/shishicai/app/activity/adapter/ReferListAdapter$Holder;

    const/4 v6, 0x0

    invoke-direct {v1, p0, v6}, Lcom/shishicai/app/activity/adapter/ReferListAdapter$Holder;-><init>(Lcom/shishicai/app/activity/adapter/ReferListAdapter;Lcom/shishicai/app/activity/adapter/ReferListAdapter$1;)V

    .line 53
    .local v1, "holder":Lcom/shishicai/app/activity/adapter/ReferListAdapter$Holder;
    iget-object v6, p0, Lcom/shishicai/app/activity/adapter/ReferListAdapter;->context:Landroid/content/Context;

    const v7, 0x7f030065

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 55
    const v6, 0x7f0900ed

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v1, Lcom/shishicai/app/activity/adapter/ReferListAdapter$Holder;->nameTv:Landroid/widget/TextView;

    .line 56
    const v6, 0x7f09018c

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v1, Lcom/shishicai/app/activity/adapter/ReferListAdapter$Holder;->codeTv:Landroid/widget/TextView;

    .line 57
    const v6, 0x7f09018d

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v1, Lcom/shishicai/app/activity/adapter/ReferListAdapter$Holder;->singleDoubleTv:Landroid/widget/TextView;

    .line 58
    const v6, 0x7f09018e

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v1, Lcom/shishicai/app/activity/adapter/ReferListAdapter$Holder;->bigSmallTv:Landroid/widget/TextView;

    .line 59
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 63
    :goto_0
    iget-object v6, p0, Lcom/shishicai/app/activity/adapter/ReferListAdapter;->list:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX;

    .line 64
    .local v2, "info":Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX;
    invoke-virtual {v2}, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX;->getName()Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "name":Ljava/lang/String;
    iget-object v6, v1, Lcom/shishicai/app/activity/adapter/ReferListAdapter$Holder;->nameTv:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {v2}, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX;->getData()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v2}, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX;->getData()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 70
    invoke-virtual {v2}, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX;->getData()Ljava/util/List;

    move-result-object v0

    .line 71
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX$DataBean;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX$DataBean;

    invoke-virtual {v6}, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX$DataBean;->getResult()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 73
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX$DataBean;

    invoke-virtual {v6}, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX$DataBean;->getState()I

    move-result v5

    .line 74
    .local v5, "state":I
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX$DataBean;

    invoke-virtual {v6}, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX$DataBean;->getResult()Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, "result":Ljava/lang/String;
    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    .line 77
    iget-object v6, v1, Lcom/shishicai/app/activity/adapter/ReferListAdapter$Holder;->codeTv:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<font color=\"red\"> \uff08\u8d62\uff09 </font>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    .end local v4    # "result":Ljava/lang/String;
    .end local v5    # "state":I
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_1

    const/4 v6, 0x1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX$DataBean;

    invoke-virtual {v6}, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX$DataBean;->getResult()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 84
    const/4 v6, 0x1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX$DataBean;

    invoke-virtual {v6}, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX$DataBean;->getState()I

    move-result v5

    .line 85
    .restart local v5    # "state":I
    const/4 v6, 0x1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX$DataBean;

    invoke-virtual {v6}, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX$DataBean;->getResult()Ljava/lang/String;

    move-result-object v4

    .line 86
    .restart local v4    # "result":Ljava/lang/String;
    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    .line 88
    iget-object v6, v1, Lcom/shishicai/app/activity/adapter/ReferListAdapter$Holder;->singleDoubleTv:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<font color=\"red\"> \uff08\u8d62\uff09 </font>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    .end local v4    # "result":Ljava/lang/String;
    .end local v5    # "state":I
    :cond_1
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_2

    const/4 v6, 0x2

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX$DataBean;

    invoke-virtual {v6}, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX$DataBean;->getResult()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 96
    const/4 v6, 0x2

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX$DataBean;

    invoke-virtual {v6}, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX$DataBean;->getState()I

    move-result v5

    .line 97
    .restart local v5    # "state":I
    const/4 v6, 0x2

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX$DataBean;

    invoke-virtual {v6}, Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX$DataBean;->getResult()Ljava/lang/String;

    move-result-object v4

    .line 98
    .restart local v4    # "result":Ljava/lang/String;
    const/4 v6, 0x1

    if-ne v5, v6, :cond_7

    .line 100
    iget-object v6, v1, Lcom/shishicai/app/activity/adapter/ReferListAdapter$Holder;->bigSmallTv:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<font color=\"red\"> \uff08\u8d62\uff09 </font>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    .end local v4    # "result":Ljava/lang/String;
    .end local v5    # "state":I
    :cond_2
    :goto_3
    iget-object v6, p0, Lcom/shishicai/app/activity/adapter/ReferListAdapter;->list:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne p1, v6, :cond_3

    .line 107
    iget-object v6, v1, Lcom/shishicai/app/activity/adapter/ReferListAdapter$Holder;->singleDoubleTv:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object v6, v1, Lcom/shishicai/app/activity/adapter/ReferListAdapter$Holder;->bigSmallTv:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    .end local v0    # "data":Ljava/util/List;, "Ljava/util/List<Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX$DataBean;>;"
    :cond_3
    return-object p2

    .line 61
    .end local v1    # "holder":Lcom/shishicai/app/activity/adapter/ReferListAdapter$Holder;
    .end local v2    # "info":Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX;
    .end local v3    # "name":Ljava/lang/String;
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shishicai/app/activity/adapter/ReferListAdapter$Holder;

    .restart local v1    # "holder":Lcom/shishicai/app/activity/adapter/ReferListAdapter$Holder;
    goto/16 :goto_0

    .line 79
    .restart local v0    # "data":Ljava/util/List;, "Ljava/util/List<Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX$DataBean;>;"
    .restart local v2    # "info":Lcom/shishicai/app/domain/AwardReferInfo$ItemsBean$DataBeanX;
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    .restart local v5    # "state":I
    :cond_5
    iget-object v6, v1, Lcom/shishicai/app/activity/adapter/ReferListAdapter$Holder;->codeTv:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 90
    :cond_6
    iget-object v6, v1, Lcom/shishicai/app/activity/adapter/ReferListAdapter$Holder;->singleDoubleTv:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 102
    :cond_7
    iget-object v6, v1, Lcom/shishicai/app/activity/adapter/ReferListAdapter$Holder;->bigSmallTv:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method
