.class public Lcom/shishicai/app/activity/adapter/AwardAdapter;
.super Landroid/widget/BaseAdapter;
.source "AwardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shishicai/app/activity/adapter/AwardAdapter$Holder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/shishicai/app/domain/DataBean;",
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
            "Lcom/shishicai/app/domain/DataBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/shishicai/app/domain/DataBean;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/shishicai/app/activity/adapter/AwardAdapter;->context:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/shishicai/app/activity/adapter/AwardAdapter;->list:Ljava/util/List;

    .line 24
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/shishicai/app/activity/adapter/AwardAdapter;->list:Ljava/util/List;

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
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 48
    if-nez p2, :cond_0

    .line 49
    new-instance v1, Lcom/shishicai/app/activity/adapter/AwardAdapter$Holder;

    invoke-direct {v1, p0, v5}, Lcom/shishicai/app/activity/adapter/AwardAdapter$Holder;-><init>(Lcom/shishicai/app/activity/adapter/AwardAdapter;Lcom/shishicai/app/activity/adapter/AwardAdapter$1;)V

    .line 50
    .local v1, "holder":Lcom/shishicai/app/activity/adapter/AwardAdapter$Holder;
    iget-object v3, p0, Lcom/shishicai/app/activity/adapter/AwardAdapter;->context:Landroid/content/Context;

    const v4, 0x7f030017

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 52
    const v3, 0x7f090059

    .line 53
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/shishicai/app/activity/adapter/AwardAdapter$Holder;->msgTitle:Landroid/widget/TextView;

    .line 54
    const v3, 0x7f09005b

    .line 55
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/shishicai/app/activity/adapter/AwardAdapter$Holder;->content:Landroid/widget/TextView;

    .line 56
    const v3, 0x7f09005a

    .line 57
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/shishicai/app/activity/adapter/AwardAdapter$Holder;->time:Landroid/widget/TextView;

    .line 58
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 62
    :goto_0
    iget-object v3, p0, Lcom/shishicai/app/activity/adapter/AwardAdapter;->list:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shishicai/app/domain/DataBean;

    .line 63
    .local v2, "info":Lcom/shishicai/app/domain/DataBean;
    iget-object v3, v1, Lcom/shishicai/app/activity/adapter/AwardAdapter$Holder;->msgTitle:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u7b2c"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/shishicai/app/domain/DataBean;->getExpect()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u671f"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {v2}, Lcom/shishicai/app/domain/DataBean;->getOpencode()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "code":Ljava/lang/String;
    iget-object v3, v1, Lcom/shishicai/app/activity/adapter/AwardAdapter$Holder;->content:Landroid/widget/TextView;

    const-string v4, ","

    const-string v5, " "

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v3, v1, Lcom/shishicai/app/activity/adapter/AwardAdapter$Holder;->time:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/shishicai/app/domain/DataBean;->getOpentime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    return-object p2

    .line 60
    .end local v0    # "code":Ljava/lang/String;
    .end local v1    # "holder":Lcom/shishicai/app/activity/adapter/AwardAdapter$Holder;
    .end local v2    # "info":Lcom/shishicai/app/domain/DataBean;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shishicai/app/activity/adapter/AwardAdapter$Holder;

    .restart local v1    # "holder":Lcom/shishicai/app/activity/adapter/AwardAdapter$Holder;
    goto :goto_0
.end method
