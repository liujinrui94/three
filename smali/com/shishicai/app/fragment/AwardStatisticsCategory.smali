.class public Lcom/shishicai/app/fragment/AwardStatisticsCategory;
.super Landroid/support/v4/app/Fragment;
.source "AwardStatisticsCategory.java"

# interfaces
.implements Lcom/shishicai/app/ui/PullToRefreshView$OnHeaderRefreshListener;
.implements Lcom/shishicai/app/ui/PullToRefreshView$OnFooterRefreshListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private awardStatisticsCategory:Landroid/view/View;

.field private context:Lcom/shishicai/app/activity/MainActivity;

.field private isRequesting:Z

.field private linear:Landroid/widget/LinearLayout;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/shishicai/app/domain/AwardStatisticInfo$ItemsBean;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter1:Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter;

.field private mListView1:Landroid/widget/ListView;

.field private mPullToRefreshView1:Lcom/shishicai/app/ui/PullToRefreshView;

.field private msgLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 42
    const-string v0, "AwardStatisticsCategory"

    iput-object v0, p0, Lcom/shishicai/app/fragment/AwardStatisticsCategory;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/shishicai/app/fragment/AwardStatisticsCategory;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/AwardStatisticsCategory;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardStatisticsCategory;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/shishicai/app/fragment/AwardStatisticsCategory;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/AwardStatisticsCategory;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardStatisticsCategory;->msgLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/shishicai/app/fragment/AwardStatisticsCategory;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/AwardStatisticsCategory;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardStatisticsCategory;->linear:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$302(Lcom/shishicai/app/fragment/AwardStatisticsCategory;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/fragment/AwardStatisticsCategory;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/shishicai/app/fragment/AwardStatisticsCategory;->isRequesting:Z

    return p1
.end method

.method static synthetic access$400(Lcom/shishicai/app/fragment/AwardStatisticsCategory;)Lcom/shishicai/app/activity/MainActivity;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/AwardStatisticsCategory;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardStatisticsCategory;->context:Lcom/shishicai/app/activity/MainActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/shishicai/app/fragment/AwardStatisticsCategory;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/AwardStatisticsCategory;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardStatisticsCategory;->list:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/shishicai/app/fragment/AwardStatisticsCategory;)Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/AwardStatisticsCategory;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardStatisticsCategory;->mAdapter1:Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter;

    return-object v0
.end method

.method private gainData()V
    .locals 4

    .prologue
    .line 96
    iget-boolean v1, p0, Lcom/shishicai/app/fragment/AwardStatisticsCategory;->isRequesting:Z

    if-nez v1, :cond_1

    .line 98
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/shishicai/app/fragment/AwardStatisticsCategory;->isRequesting:Z

    .line 99
    iget-object v1, p0, Lcom/shishicai/app/fragment/AwardStatisticsCategory;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/shishicai/app/fragment/AwardStatisticsCategory;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 102
    :cond_0
    sget-object v0, Lcom/shishicai/app/Constant;->AWARD_STATISTICS_URL:Ljava/lang/String;

    .line 103
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/shishicai/app/fragment/AwardStatisticsCategory;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance v1, Lcom/shishicai/app/fragment/AwardStatisticsCategory$1;

    invoke-direct {v1, p0}, Lcom/shishicai/app/fragment/AwardStatisticsCategory$1;-><init>(Lcom/shishicai/app/fragment/AwardStatisticsCategory;)V

    invoke-static {v0, v1}, Lcom/shishicai/app/service/HttpUser;->get(Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 151
    .end local v0    # "url":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 77
    check-cast p1, Lcom/shishicai/app/activity/MainActivity;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/shishicai/app/fragment/AwardStatisticsCategory;->context:Lcom/shishicai/app/activity/MainActivity;

    .line 78
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 49
    iget-object v1, p0, Lcom/shishicai/app/fragment/AwardStatisticsCategory;->awardStatisticsCategory:Landroid/view/View;

    if-nez v1, :cond_0

    .line 50
    const v1, 0x7f030022

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/shishicai/app/fragment/AwardStatisticsCategory;->awardStatisticsCategory:Landroid/view/View;

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/shishicai/app/fragment/AwardStatisticsCategory;->awardStatisticsCategory:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 54
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    .line 56
    iget-object v1, p0, Lcom/shishicai/app/fragment/AwardStatisticsCategory;->awardStatisticsCategory:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/shishicai/app/fragment/AwardStatisticsCategory;->awardStatisticsCategory:Landroid/view/View;

    const v2, 0x7f090029

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/shishicai/app/fragment/AwardStatisticsCategory;->mListView1:Landroid/widget/ListView;

    .line 59
    iget-object v1, p0, Lcom/shishicai/app/fragment/AwardStatisticsCategory;->awardStatisticsCategory:Landroid/view/View;

    const v2, 0x7f09002f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/shishicai/app/ui/PullToRefreshView;

    iput-object v1, p0, Lcom/shishicai/app/fragment/AwardStatisticsCategory;->mPullToRefreshView1:Lcom/shishicai/app/ui/PullToRefreshView;

    .line 60
    iget-object v1, p0, Lcom/shishicai/app/fragment/AwardStatisticsCategory;->awardStatisticsCategory:Landroid/view/View;

    const v2, 0x7f090021

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/shishicai/app/fragment/AwardStatisticsCategory;->msgLayout:Landroid/widget/LinearLayout;

    .line 61
    iget-object v1, p0, Lcom/shishicai/app/fragment/AwardStatisticsCategory;->awardStatisticsCategory:Landroid/view/View;

    const v2, 0x7f090025

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/shishicai/app/fragment/AwardStatisticsCategory;->linear:Landroid/widget/LinearLayout;

    .line 62
    iget-object v1, p0, Lcom/shishicai/app/fragment/AwardStatisticsCategory;->mPullToRefreshView1:Lcom/shishicai/app/ui/PullToRefreshView;

    invoke-virtual {v1, p0}, Lcom/shishicai/app/ui/PullToRefreshView;->setOnHeaderRefreshListener(Lcom/shishicai/app/ui/PullToRefreshView$OnHeaderRefreshListener;)V

    .line 63
    iget-object v1, p0, Lcom/shishicai/app/fragment/AwardStatisticsCategory;->mPullToRefreshView1:Lcom/shishicai/app/ui/PullToRefreshView;

    invoke-virtual {v1, p0}, Lcom/shishicai/app/ui/PullToRefreshView;->setOnFooterRefreshListener(Lcom/shishicai/app/ui/PullToRefreshView$OnFooterRefreshListener;)V

    .line 64
    iget-object v1, p0, Lcom/shishicai/app/fragment/AwardStatisticsCategory;->msgLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 65
    iget-object v1, p0, Lcom/shishicai/app/fragment/AwardStatisticsCategory;->linear:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/shishicai/app/fragment/AwardStatisticsCategory;->list:Ljava/util/List;

    .line 67
    new-instance v1, Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter;

    iget-object v2, p0, Lcom/shishicai/app/fragment/AwardStatisticsCategory;->context:Lcom/shishicai/app/activity/MainActivity;

    iget-object v3, p0, Lcom/shishicai/app/fragment/AwardStatisticsCategory;->list:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/shishicai/app/fragment/AwardStatisticsCategory;->mAdapter1:Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter;

    .line 68
    iget-object v1, p0, Lcom/shishicai/app/fragment/AwardStatisticsCategory;->mListView1:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/shishicai/app/fragment/AwardStatisticsCategory;->mAdapter1:Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 69
    invoke-direct {p0}, Lcom/shishicai/app/fragment/AwardStatisticsCategory;->gainData()V

    .line 70
    iget-object v1, p0, Lcom/shishicai/app/fragment/AwardStatisticsCategory;->awardStatisticsCategory:Landroid/view/View;

    return-object v1
.end method

.method public onFooterRefresh(Lcom/shishicai/app/ui/PullToRefreshView;)V
    .locals 1
    .param p1, "view"    # Lcom/shishicai/app/ui/PullToRefreshView;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardStatisticsCategory;->mPullToRefreshView1:Lcom/shishicai/app/ui/PullToRefreshView;

    invoke-virtual {v0}, Lcom/shishicai/app/ui/PullToRefreshView;->onFooterRefreshComplete()V

    .line 92
    return-void
.end method

.method public onHeaderRefresh(Lcom/shishicai/app/ui/PullToRefreshView;)V
    .locals 2
    .param p1, "view"    # Lcom/shishicai/app/ui/PullToRefreshView;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardStatisticsCategory;->msgLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardStatisticsCategory;->linear:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 85
    invoke-direct {p0}, Lcom/shishicai/app/fragment/AwardStatisticsCategory;->gainData()V

    .line 86
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardStatisticsCategory;->mPullToRefreshView1:Lcom/shishicai/app/ui/PullToRefreshView;

    invoke-virtual {v0}, Lcom/shishicai/app/ui/PullToRefreshView;->onHeaderRefreshComplete()V

    .line 87
    return-void
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardStatisticsCategory;->list:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardStatisticsCategory;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardStatisticsCategory;->msgLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardStatisticsCategory;->linear:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 158
    invoke-direct {p0}, Lcom/shishicai/app/fragment/AwardStatisticsCategory;->gainData()V

    .line 160
    :cond_0
    return-void
.end method
