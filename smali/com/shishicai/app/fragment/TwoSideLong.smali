.class public Lcom/shishicai/app/fragment/TwoSideLong;
.super Landroid/support/v4/app/Fragment;
.source "TwoSideLong.java"

# interfaces
.implements Lcom/shishicai/app/ui/PullToRefreshView$OnHeaderRefreshListener;
.implements Lcom/shishicai/app/ui/PullToRefreshView$OnFooterRefreshListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private context:Landroid/app/Activity;

.field private isRequesting:Z

.field private linear:Landroid/widget/LinearLayout;

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

.field private listArticle:Landroid/widget/ListView;

.field private mRefreshView:Lcom/shishicai/app/ui/PullToRefreshView;

.field private msgLayout:Landroid/widget/LinearLayout;

.field private twoSideLong:Landroid/view/View;

.field private twoSideLongAdapter:Lcom/shishicai/app/activity/adapter/TwoSideLongAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 52
    const-string v0, "TwoSideLong"

    iput-object v0, p0, Lcom/shishicai/app/fragment/TwoSideLong;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/shishicai/app/fragment/TwoSideLong;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/TwoSideLong;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/shishicai/app/fragment/TwoSideLong;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/shishicai/app/fragment/TwoSideLong;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/fragment/TwoSideLong;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/shishicai/app/fragment/TwoSideLong;->isRequesting:Z

    return p1
.end method

.method static synthetic access$200(Lcom/shishicai/app/fragment/TwoSideLong;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/TwoSideLong;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/shishicai/app/fragment/TwoSideLong;->msgLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/shishicai/app/fragment/TwoSideLong;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/TwoSideLong;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/shishicai/app/fragment/TwoSideLong;->linear:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/shishicai/app/fragment/TwoSideLong;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/TwoSideLong;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/shishicai/app/fragment/TwoSideLong;->context:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/shishicai/app/fragment/TwoSideLong;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/TwoSideLong;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/shishicai/app/fragment/TwoSideLong;->list:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/shishicai/app/fragment/TwoSideLong;)Lcom/shishicai/app/activity/adapter/TwoSideLongAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/TwoSideLong;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/shishicai/app/fragment/TwoSideLong;->twoSideLongAdapter:Lcom/shishicai/app/activity/adapter/TwoSideLongAdapter;

    return-object v0
.end method

.method private gainData()V
    .locals 4

    .prologue
    .line 84
    iget-boolean v1, p0, Lcom/shishicai/app/fragment/TwoSideLong;->isRequesting:Z

    if-nez v1, :cond_0

    .line 86
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/shishicai/app/fragment/TwoSideLong;->isRequesting:Z

    .line 87
    sget-object v0, Lcom/shishicai/app/Constant;->TWO_SIDE_LONG_URL:Ljava/lang/String;

    .line 88
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/shishicai/app/fragment/TwoSideLong;->TAG:Ljava/lang/String;

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

    .line 89
    new-instance v1, Lcom/shishicai/app/fragment/TwoSideLong$1;

    invoke-direct {v1, p0}, Lcom/shishicai/app/fragment/TwoSideLong$1;-><init>(Lcom/shishicai/app/fragment/TwoSideLong;)V

    invoke-static {v0, v1}, Lcom/shishicai/app/service/HttpUser;->get(Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 139
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 146
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 147
    iput-object p1, p0, Lcom/shishicai/app/fragment/TwoSideLong;->context:Landroid/app/Activity;

    .line 148
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 58
    iget-object v1, p0, Lcom/shishicai/app/fragment/TwoSideLong;->twoSideLong:Landroid/view/View;

    if-nez v1, :cond_0

    .line 59
    const v1, 0x7f030072

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/shishicai/app/fragment/TwoSideLong;->twoSideLong:Landroid/view/View;

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/shishicai/app/fragment/TwoSideLong;->twoSideLong:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 63
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    .line 65
    iget-object v1, p0, Lcom/shishicai/app/fragment/TwoSideLong;->twoSideLong:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/shishicai/app/fragment/TwoSideLong;->twoSideLong:Landroid/view/View;

    const v2, 0x7f090021

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/shishicai/app/fragment/TwoSideLong;->msgLayout:Landroid/widget/LinearLayout;

    .line 68
    iget-object v1, p0, Lcom/shishicai/app/fragment/TwoSideLong;->twoSideLong:Landroid/view/View;

    const v2, 0x7f090025

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/shishicai/app/fragment/TwoSideLong;->linear:Landroid/widget/LinearLayout;

    .line 69
    iget-object v1, p0, Lcom/shishicai/app/fragment/TwoSideLong;->twoSideLong:Landroid/view/View;

    const v2, 0x7f09002f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/shishicai/app/ui/PullToRefreshView;

    iput-object v1, p0, Lcom/shishicai/app/fragment/TwoSideLong;->mRefreshView:Lcom/shishicai/app/ui/PullToRefreshView;

    .line 70
    iget-object v1, p0, Lcom/shishicai/app/fragment/TwoSideLong;->twoSideLong:Landroid/view/View;

    const v2, 0x7f090029

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/shishicai/app/fragment/TwoSideLong;->listArticle:Landroid/widget/ListView;

    .line 71
    iget-object v1, p0, Lcom/shishicai/app/fragment/TwoSideLong;->mRefreshView:Lcom/shishicai/app/ui/PullToRefreshView;

    invoke-virtual {v1, p0}, Lcom/shishicai/app/ui/PullToRefreshView;->setOnHeaderRefreshListener(Lcom/shishicai/app/ui/PullToRefreshView$OnHeaderRefreshListener;)V

    .line 72
    iget-object v1, p0, Lcom/shishicai/app/fragment/TwoSideLong;->mRefreshView:Lcom/shishicai/app/ui/PullToRefreshView;

    invoke-virtual {v1, p0}, Lcom/shishicai/app/ui/PullToRefreshView;->setOnFooterRefreshListener(Lcom/shishicai/app/ui/PullToRefreshView$OnFooterRefreshListener;)V

    .line 73
    iget-object v1, p0, Lcom/shishicai/app/fragment/TwoSideLong;->msgLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 74
    iget-object v1, p0, Lcom/shishicai/app/fragment/TwoSideLong;->linear:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/shishicai/app/fragment/TwoSideLong;->list:Ljava/util/List;

    .line 76
    new-instance v1, Lcom/shishicai/app/activity/adapter/TwoSideLongAdapter;

    iget-object v2, p0, Lcom/shishicai/app/fragment/TwoSideLong;->context:Landroid/app/Activity;

    iget-object v3, p0, Lcom/shishicai/app/fragment/TwoSideLong;->list:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/shishicai/app/activity/adapter/TwoSideLongAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/shishicai/app/fragment/TwoSideLong;->twoSideLongAdapter:Lcom/shishicai/app/activity/adapter/TwoSideLongAdapter;

    .line 77
    iget-object v1, p0, Lcom/shishicai/app/fragment/TwoSideLong;->listArticle:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/shishicai/app/fragment/TwoSideLong;->twoSideLongAdapter:Lcom/shishicai/app/activity/adapter/TwoSideLongAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 78
    invoke-direct {p0}, Lcom/shishicai/app/fragment/TwoSideLong;->gainData()V

    .line 79
    iget-object v1, p0, Lcom/shishicai/app/fragment/TwoSideLong;->twoSideLong:Landroid/view/View;

    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 176
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 177
    iget-object v0, p0, Lcom/shishicai/app/fragment/TwoSideLong;->context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/shishicai/app/service/HttpUser;->cancel(Landroid/content/Context;)V

    .line 178
    return-void
.end method

.method public onFooterRefresh(Lcom/shishicai/app/ui/PullToRefreshView;)V
    .locals 1
    .param p1, "view"    # Lcom/shishicai/app/ui/PullToRefreshView;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/shishicai/app/fragment/TwoSideLong;->mRefreshView:Lcom/shishicai/app/ui/PullToRefreshView;

    invoke-virtual {v0}, Lcom/shishicai/app/ui/PullToRefreshView;->onFooterRefreshComplete()V

    .line 153
    return-void
.end method

.method public onHeaderRefresh(Lcom/shishicai/app/ui/PullToRefreshView;)V
    .locals 2
    .param p1, "view"    # Lcom/shishicai/app/ui/PullToRefreshView;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/shishicai/app/fragment/TwoSideLong;->msgLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/shishicai/app/fragment/TwoSideLong;->linear:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/shishicai/app/fragment/TwoSideLong;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 160
    invoke-direct {p0}, Lcom/shishicai/app/fragment/TwoSideLong;->gainData()V

    .line 161
    iget-object v0, p0, Lcom/shishicai/app/fragment/TwoSideLong;->mRefreshView:Lcom/shishicai/app/ui/PullToRefreshView;

    invoke-virtual {v0}, Lcom/shishicai/app/ui/PullToRefreshView;->onHeaderRefreshComplete()V

    .line 162
    return-void
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/shishicai/app/fragment/TwoSideLong;->list:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shishicai/app/fragment/TwoSideLong;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/shishicai/app/fragment/TwoSideLong;->msgLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/shishicai/app/fragment/TwoSideLong;->linear:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/shishicai/app/fragment/TwoSideLong;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 170
    invoke-direct {p0}, Lcom/shishicai/app/fragment/TwoSideLong;->gainData()V

    .line 172
    :cond_0
    return-void
.end method
