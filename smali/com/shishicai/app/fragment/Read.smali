.class public Lcom/shishicai/app/fragment/Read;
.super Landroid/support/v4/app/Fragment;
.source "Read.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/shishicai/app/ui/PullToRefreshView$OnHeaderRefreshListener;
.implements Lcom/shishicai/app/ui/PullToRefreshView$OnFooterRefreshListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private context:Landroid/app/Activity;

.field private linear:Landroid/widget/LinearLayout;

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

.field private listArticle:Landroid/widget/ListView;

.field private listPage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/shishicai/app/domain/DayNews;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentPage:I

.field private mRefreshView:Lcom/shishicai/app/ui/PullToRefreshView;

.field private mTotalPage:I

.field private msgLayout:Landroid/widget/LinearLayout;

.field private newsAdapter:Lcom/shishicai/app/activity/adapter/NewsAdapter;

.field private read:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 60
    const-string v0, "Read"

    iput-object v0, p0, Lcom/shishicai/app/fragment/Read;->TAG:Ljava/lang/String;

    .line 61
    const/4 v0, 0x1

    iput v0, p0, Lcom/shishicai/app/fragment/Read;->mCurrentPage:I

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/shishicai/app/fragment/Read;->mTotalPage:I

    return-void
.end method

.method static synthetic access$000(Lcom/shishicai/app/fragment/Read;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Read;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/shishicai/app/fragment/Read;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/shishicai/app/fragment/Read;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Read;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/shishicai/app/fragment/Read;->msgLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/shishicai/app/fragment/Read;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Read;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/shishicai/app/fragment/Read;->linear:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/shishicai/app/fragment/Read;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Read;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/shishicai/app/fragment/Read;->list:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/shishicai/app/fragment/Read;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Read;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/shishicai/app/fragment/Read;->list:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/shishicai/app/fragment/Read;)I
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Read;

    .prologue
    .line 50
    iget v0, p0, Lcom/shishicai/app/fragment/Read;->mTotalPage:I

    return v0
.end method

.method static synthetic access$402(Lcom/shishicai/app/fragment/Read;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Read;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/shishicai/app/fragment/Read;->mTotalPage:I

    return p1
.end method

.method static synthetic access$500(Lcom/shishicai/app/fragment/Read;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Read;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/shishicai/app/fragment/Read;->listPage:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/shishicai/app/fragment/Read;)Lcom/shishicai/app/activity/adapter/NewsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Read;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/shishicai/app/fragment/Read;->newsAdapter:Lcom/shishicai/app/activity/adapter/NewsAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/shishicai/app/fragment/Read;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Read;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/shishicai/app/fragment/Read;->context:Landroid/app/Activity;

    return-object v0
.end method

.method private gainData()V
    .locals 4

    .prologue
    .line 96
    sget-object v0, Lcom/shishicai/app/Constant;->URLNEWS:Ljava/lang/String;

    .line 97
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/shishicai/app/fragment/Read;->TAG:Ljava/lang/String;

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

    .line 98
    new-instance v1, Lcom/shishicai/app/fragment/Read$1;

    invoke-direct {v1, p0}, Lcom/shishicai/app/fragment/Read$1;-><init>(Lcom/shishicai/app/fragment/Read;)V

    invoke-static {v0, v1}, Lcom/shishicai/app/service/HttpUser;->get(Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 183
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 197
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 198
    iput-object p1, p0, Lcom/shishicai/app/fragment/Read;->context:Landroid/app/Activity;

    .line 199
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 68
    iget-object v1, p0, Lcom/shishicai/app/fragment/Read;->read:Landroid/view/View;

    if-nez v1, :cond_0

    .line 69
    const v1, 0x7f030064

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/shishicai/app/fragment/Read;->read:Landroid/view/View;

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/shishicai/app/fragment/Read;->read:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 73
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    .line 75
    iget-object v1, p0, Lcom/shishicai/app/fragment/Read;->read:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 77
    :cond_1
    iget-object v1, p0, Lcom/shishicai/app/fragment/Read;->read:Landroid/view/View;

    const v2, 0x7f090021

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/shishicai/app/fragment/Read;->msgLayout:Landroid/widget/LinearLayout;

    .line 78
    iget-object v1, p0, Lcom/shishicai/app/fragment/Read;->read:Landroid/view/View;

    const v2, 0x7f090025

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/shishicai/app/fragment/Read;->linear:Landroid/widget/LinearLayout;

    .line 79
    iget-object v1, p0, Lcom/shishicai/app/fragment/Read;->read:Landroid/view/View;

    const v2, 0x7f09002f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/shishicai/app/ui/PullToRefreshView;

    iput-object v1, p0, Lcom/shishicai/app/fragment/Read;->mRefreshView:Lcom/shishicai/app/ui/PullToRefreshView;

    .line 80
    iget-object v1, p0, Lcom/shishicai/app/fragment/Read;->read:Landroid/view/View;

    const v2, 0x7f090029

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/shishicai/app/fragment/Read;->listArticle:Landroid/widget/ListView;

    .line 81
    iget-object v1, p0, Lcom/shishicai/app/fragment/Read;->mRefreshView:Lcom/shishicai/app/ui/PullToRefreshView;

    invoke-virtual {v1, p0}, Lcom/shishicai/app/ui/PullToRefreshView;->setOnHeaderRefreshListener(Lcom/shishicai/app/ui/PullToRefreshView$OnHeaderRefreshListener;)V

    .line 82
    iget-object v1, p0, Lcom/shishicai/app/fragment/Read;->mRefreshView:Lcom/shishicai/app/ui/PullToRefreshView;

    invoke-virtual {v1, p0}, Lcom/shishicai/app/ui/PullToRefreshView;->setOnFooterRefreshListener(Lcom/shishicai/app/ui/PullToRefreshView$OnFooterRefreshListener;)V

    .line 83
    iget-object v1, p0, Lcom/shishicai/app/fragment/Read;->msgLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 84
    iget-object v1, p0, Lcom/shishicai/app/fragment/Read;->linear:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 85
    iget-object v1, p0, Lcom/shishicai/app/fragment/Read;->listArticle:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/shishicai/app/fragment/Read;->list:Ljava/util/List;

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/shishicai/app/fragment/Read;->listPage:Ljava/util/List;

    .line 88
    new-instance v1, Lcom/shishicai/app/activity/adapter/NewsAdapter;

    iget-object v2, p0, Lcom/shishicai/app/fragment/Read;->context:Landroid/app/Activity;

    iget-object v3, p0, Lcom/shishicai/app/fragment/Read;->listPage:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/shishicai/app/activity/adapter/NewsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/shishicai/app/fragment/Read;->newsAdapter:Lcom/shishicai/app/activity/adapter/NewsAdapter;

    .line 89
    iget-object v1, p0, Lcom/shishicai/app/fragment/Read;->listArticle:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/shishicai/app/fragment/Read;->newsAdapter:Lcom/shishicai/app/activity/adapter/NewsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    invoke-direct {p0}, Lcom/shishicai/app/fragment/Read;->gainData()V

    .line 91
    iget-object v1, p0, Lcom/shishicai/app/fragment/Read;->read:Landroid/view/View;

    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 241
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 242
    iget-object v0, p0, Lcom/shishicai/app/fragment/Read;->context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/shishicai/app/service/HttpUser;->cancel(Landroid/content/Context;)V

    .line 243
    return-void
.end method

.method public onFooterRefresh(Lcom/shishicai/app/ui/PullToRefreshView;)V
    .locals 3
    .param p1, "view"    # Lcom/shishicai/app/ui/PullToRefreshView;

    .prologue
    .line 203
    iget v1, p0, Lcom/shishicai/app/fragment/Read;->mCurrentPage:I

    iget v2, p0, Lcom/shishicai/app/fragment/Read;->mTotalPage:I

    if-ge v1, v2, :cond_2

    .line 204
    iget-object v1, p0, Lcom/shishicai/app/fragment/Read;->list:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/shishicai/app/fragment/Read;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 206
    iget v1, p0, Lcom/shishicai/app/fragment/Read;->mCurrentPage:I

    mul-int/lit8 v0, v1, 0xa

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/shishicai/app/fragment/Read;->mCurrentPage:I

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0xa

    if-ge v0, v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/shishicai/app/fragment/Read;->listPage:Ljava/util/List;

    iget-object v2, p0, Lcom/shishicai/app/fragment/Read;->list:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/shishicai/app/fragment/Read;->newsAdapter:Lcom/shishicai/app/activity/adapter/NewsAdapter;

    invoke-virtual {v1}, Lcom/shishicai/app/activity/adapter/NewsAdapter;->notifyDataSetChanged()V

    .line 212
    .end local v0    # "i":I
    :cond_1
    iget v1, p0, Lcom/shishicai/app/fragment/Read;->mCurrentPage:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/shishicai/app/fragment/Read;->mCurrentPage:I

    .line 216
    :goto_1
    iget-object v1, p0, Lcom/shishicai/app/fragment/Read;->mRefreshView:Lcom/shishicai/app/ui/PullToRefreshView;

    invoke-virtual {v1}, Lcom/shishicai/app/ui/PullToRefreshView;->onFooterRefreshComplete()V

    .line 217
    return-void

    .line 214
    :cond_2
    iget-object v1, p0, Lcom/shishicai/app/fragment/Read;->context:Landroid/app/Activity;

    const-string v2, "\u6ca1\u6709\u6570\u636e\u53ef\u52a0\u8f7d\u4e86\uff01"

    invoke-static {v1, v2}, Lcom/shishicai/app/service/HttpMethod;->Toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onHeaderRefresh(Lcom/shishicai/app/ui/PullToRefreshView;)V
    .locals 1
    .param p1, "view"    # Lcom/shishicai/app/ui/PullToRefreshView;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/shishicai/app/fragment/Read;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 222
    iget-object v0, p0, Lcom/shishicai/app/fragment/Read;->listPage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 223
    const/4 v0, 0x1

    iput v0, p0, Lcom/shishicai/app/fragment/Read;->mCurrentPage:I

    .line 224
    invoke-direct {p0}, Lcom/shishicai/app/fragment/Read;->gainData()V

    .line 225
    iget-object v0, p0, Lcom/shishicai/app/fragment/Read;->mRefreshView:Lcom/shishicai/app/ui/PullToRefreshView;

    invoke-virtual {v0}, Lcom/shishicai/app/ui/PullToRefreshView;->onHeaderRefreshComplete()V

    .line 226
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/shishicai/app/fragment/Read;->context:Landroid/app/Activity;

    const-class v2, Lcom/shishicai/app/activity/WebviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 189
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "link"

    iget-object v1, p0, Lcom/shishicai/app/fragment/Read;->list:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shishicai/app/domain/DayNews;

    invoke-virtual {v1}, Lcom/shishicai/app/domain/DayNews;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    const-string v2, "title"

    iget-object v1, p0, Lcom/shishicai/app/fragment/Read;->list:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shishicai/app/domain/DayNews;

    invoke-virtual {v1}, Lcom/shishicai/app/domain/DayNews;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    invoke-virtual {p0, v0}, Lcom/shishicai/app/fragment/Read;->startActivity(Landroid/content/Intent;)V

    .line 192
    return-void
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/shishicai/app/fragment/Read;->list:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shishicai/app/fragment/Read;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shishicai/app/fragment/Read;->listPage:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shishicai/app/fragment/Read;->listPage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/shishicai/app/fragment/Read;->msgLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/shishicai/app/fragment/Read;->linear:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/shishicai/app/fragment/Read;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 234
    iget-object v0, p0, Lcom/shishicai/app/fragment/Read;->listPage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 235
    invoke-direct {p0}, Lcom/shishicai/app/fragment/Read;->gainData()V

    .line 237
    :cond_0
    return-void
.end method
