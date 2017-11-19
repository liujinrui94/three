.class public Lcom/shishicai/app/activity/adapter/NewsAdapter;
.super Landroid/widget/BaseAdapter;
.source "NewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shishicai/app/activity/adapter/NewsAdapter$Holder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/shishicai/app/domain/DayNews;",
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
            "Lcom/shishicai/app/domain/DayNews;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/shishicai/app/domain/DayNews;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/shishicai/app/activity/adapter/NewsAdapter;->context:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/shishicai/app/activity/adapter/NewsAdapter;->list:Ljava/util/List;

    .line 26
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/shishicai/app/activity/adapter/NewsAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 40
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 51
    if-nez p2, :cond_2

    .line 52
    new-instance v0, Lcom/shishicai/app/activity/adapter/NewsAdapter$Holder;

    invoke-direct {v0, p0, v6}, Lcom/shishicai/app/activity/adapter/NewsAdapter$Holder;-><init>(Lcom/shishicai/app/activity/adapter/NewsAdapter;Lcom/shishicai/app/activity/adapter/NewsAdapter$1;)V

    .line 53
    .local v0, "holder":Lcom/shishicai/app/activity/adapter/NewsAdapter$Holder;
    iget-object v4, p0, Lcom/shishicai/app/activity/adapter/NewsAdapter;->context:Landroid/content/Context;

    const v5, 0x7f03005b

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 55
    const v4, 0x7f090177

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v0, Lcom/shishicai/app/activity/adapter/NewsAdapter$Holder;->msgPic:Landroid/widget/ImageView;

    .line 56
    const v4, 0x7f090059

    .line 57
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/shishicai/app/activity/adapter/NewsAdapter$Holder;->msgTitle:Landroid/widget/TextView;

    .line 58
    const v4, 0x7f09005b

    .line 59
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/shishicai/app/activity/adapter/NewsAdapter$Holder;->content:Landroid/widget/TextView;

    .line 60
    const v4, 0x7f09005a

    .line 61
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/shishicai/app/activity/adapter/NewsAdapter$Holder;->time:Landroid/widget/TextView;

    .line 62
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 66
    :goto_0
    iget-object v4, p0, Lcom/shishicai/app/activity/adapter/NewsAdapter;->list:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shishicai/app/domain/DayNews;

    .line 67
    .local v2, "news":Lcom/shishicai/app/domain/DayNews;
    invoke-virtual {v2}, Lcom/shishicai/app/domain/DayNews;->getLogofile()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "img":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 69
    invoke-static {}, Lcom/shishicai/app/utils/ImageLoaderUtils;->getInstance()Lcom/shishicai/app/utils/ImageLoaderUtils;

    move-result-object v4

    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/NewsAdapter$Holder;->msgPic:Landroid/widget/ImageView;

    invoke-virtual {v4, v5, v1}, Lcom/shishicai/app/utils/ImageLoaderUtils;->setImageNetResource(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 71
    :cond_0
    iget-object v4, v0, Lcom/shishicai/app/activity/adapter/NewsAdapter$Holder;->msgTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/shishicai/app/domain/DayNews;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v4, v0, Lcom/shishicai/app/activity/adapter/NewsAdapter$Holder;->content:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/shishicai/app/domain/DayNews;->getSummary()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    const-string v3, "2015-04-09 08:10:56"

    .line 74
    .local v3, "time":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/shishicai/app/domain/DayNews;->getPublishdate()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 75
    invoke-virtual {v2}, Lcom/shishicai/app/domain/DayNews;->getPublishdate()Ljava/lang/String;

    move-result-object v3

    .line 77
    :cond_1
    iget-object v4, v0, Lcom/shishicai/app/activity/adapter/NewsAdapter$Holder;->time:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    return-object p2

    .line 64
    .end local v0    # "holder":Lcom/shishicai/app/activity/adapter/NewsAdapter$Holder;
    .end local v1    # "img":Ljava/lang/String;
    .end local v2    # "news":Lcom/shishicai/app/domain/DayNews;
    .end local v3    # "time":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shishicai/app/activity/adapter/NewsAdapter$Holder;

    .restart local v0    # "holder":Lcom/shishicai/app/activity/adapter/NewsAdapter$Holder;
    goto :goto_0
.end method
