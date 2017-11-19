.class public Lcom/shishicai/app/activity/DayNewsActivity;
.super Lcom/shishicai/app/utils/Base2Activity;
.source "DayNewsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/shishicai/app/ui/PullToRefreshView$OnHeaderRefreshListener;
.implements Lcom/shishicai/app/ui/PullToRefreshView$OnFooterRefreshListener;


# instance fields
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

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/shishicai/app/utils/Base2Activity;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lcom/shishicai/app/activity/DayNewsActivity;->mCurrentPage:I

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/shishicai/app/activity/DayNewsActivity;->mTotalPage:I

    return-void
.end method

.method static synthetic access$000(Lcom/shishicai/app/activity/DayNewsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/DayNewsActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/shishicai/app/activity/DayNewsActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/shishicai/app/activity/DayNewsActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/DayNewsActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/shishicai/app/activity/DayNewsActivity;->msgLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/shishicai/app/activity/DayNewsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/DayNewsActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/shishicai/app/activity/DayNewsActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/shishicai/app/activity/DayNewsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/DayNewsActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/shishicai/app/activity/DayNewsActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/shishicai/app/activity/DayNewsActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/DayNewsActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/shishicai/app/activity/DayNewsActivity;->linear:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/shishicai/app/activity/DayNewsActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/DayNewsActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/shishicai/app/activity/DayNewsActivity;->list:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/shishicai/app/activity/DayNewsActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/DayNewsActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/shishicai/app/activity/DayNewsActivity;->list:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/shishicai/app/activity/DayNewsActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/DayNewsActivity;

    .prologue
    .line 38
    iget v0, p0, Lcom/shishicai/app/activity/DayNewsActivity;->mTotalPage:I

    return v0
.end method

.method static synthetic access$402(Lcom/shishicai/app/activity/DayNewsActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/DayNewsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/shishicai/app/activity/DayNewsActivity;->mTotalPage:I

    return p1
.end method

.method static synthetic access$500(Lcom/shishicai/app/activity/DayNewsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/DayNewsActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/shishicai/app/activity/DayNewsActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/shishicai/app/activity/DayNewsActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/DayNewsActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/shishicai/app/activity/DayNewsActivity;->listPage:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/shishicai/app/activity/DayNewsActivity;)Lcom/shishicai/app/activity/adapter/NewsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/DayNewsActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/shishicai/app/activity/DayNewsActivity;->newsAdapter:Lcom/shishicai/app/activity/adapter/NewsAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/shishicai/app/activity/DayNewsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/DayNewsActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/shishicai/app/activity/DayNewsActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/shishicai/app/activity/DayNewsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/DayNewsActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/shishicai/app/activity/DayNewsActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private gainData()V
    .locals 4

    .prologue
    .line 79
    sget-object v0, Lcom/shishicai/app/Constant;->URLNEWS:Ljava/lang/String;

    .line 80
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/shishicai/app/activity/DayNewsActivity;->TAG:Ljava/lang/String;

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

    .line 81
    new-instance v1, Lcom/shishicai/app/activity/DayNewsActivity$1;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/DayNewsActivity$1;-><init>(Lcom/shishicai/app/activity/DayNewsActivity;)V

    invoke-static {v0, v1}, Lcom/shishicai/app/service/HttpUser;->get(Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 166
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v3, 0x7f090025

    .line 53
    invoke-super {p0, p1}, Lcom/shishicai/app/utils/Base2Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v1, 0x7f03005c

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/DayNewsActivity;->setContentView(I)V

    .line 55
    const-string v1, "DayNewsActivity"

    iput-object v1, p0, Lcom/shishicai/app/activity/DayNewsActivity;->TAG:Ljava/lang/String;

    .line 56
    const v1, 0x7f0900f1

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/DayNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/shishicai/app/activity/DayNewsActivity;->title:Landroid/widget/TextView;

    .line 57
    iget-object v1, p0, Lcom/shishicai/app/activity/DayNewsActivity;->title:Landroid/widget/TextView;

    const-string v2, "\u8d44\u8baf"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    const v1, 0x7f0900f0

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/DayNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 59
    .local v0, "titleimgLeft":Landroid/widget/ImageView;
    const v1, 0x7f020110

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 60
    const v1, 0x7f090021

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/DayNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/shishicai/app/activity/DayNewsActivity;->msgLayout:Landroid/widget/LinearLayout;

    .line 61
    invoke-virtual {p0, v3}, Lcom/shishicai/app/activity/DayNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/shishicai/app/activity/DayNewsActivity;->linear:Landroid/widget/LinearLayout;

    .line 62
    const v1, 0x7f09002f

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/DayNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/shishicai/app/ui/PullToRefreshView;

    iput-object v1, p0, Lcom/shishicai/app/activity/DayNewsActivity;->mRefreshView:Lcom/shishicai/app/ui/PullToRefreshView;

    .line 63
    const v1, 0x7f090029

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/DayNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/shishicai/app/activity/DayNewsActivity;->listArticle:Landroid/widget/ListView;

    .line 64
    invoke-virtual {p0, v3}, Lcom/shishicai/app/activity/DayNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/shishicai/app/activity/DayNewsActivity;->linear:Landroid/widget/LinearLayout;

    .line 65
    iget-object v1, p0, Lcom/shishicai/app/activity/DayNewsActivity;->mRefreshView:Lcom/shishicai/app/ui/PullToRefreshView;

    invoke-virtual {v1, p0}, Lcom/shishicai/app/ui/PullToRefreshView;->setOnHeaderRefreshListener(Lcom/shishicai/app/ui/PullToRefreshView$OnHeaderRefreshListener;)V

    .line 66
    iget-object v1, p0, Lcom/shishicai/app/activity/DayNewsActivity;->mRefreshView:Lcom/shishicai/app/ui/PullToRefreshView;

    invoke-virtual {v1, p0}, Lcom/shishicai/app/ui/PullToRefreshView;->setOnFooterRefreshListener(Lcom/shishicai/app/ui/PullToRefreshView$OnFooterRefreshListener;)V

    .line 67
    iget-object v1, p0, Lcom/shishicai/app/activity/DayNewsActivity;->msgLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 68
    iget-object v1, p0, Lcom/shishicai/app/activity/DayNewsActivity;->linear:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 69
    iget-object v1, p0, Lcom/shishicai/app/activity/DayNewsActivity;->listArticle:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/shishicai/app/activity/DayNewsActivity;->list:Ljava/util/List;

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/shishicai/app/activity/DayNewsActivity;->listPage:Ljava/util/List;

    .line 72
    new-instance v1, Lcom/shishicai/app/activity/adapter/NewsAdapter;

    iget-object v2, p0, Lcom/shishicai/app/activity/DayNewsActivity;->listPage:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/shishicai/app/activity/adapter/NewsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/shishicai/app/activity/DayNewsActivity;->newsAdapter:Lcom/shishicai/app/activity/adapter/NewsAdapter;

    .line 73
    iget-object v1, p0, Lcom/shishicai/app/activity/DayNewsActivity;->listArticle:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/shishicai/app/activity/DayNewsActivity;->newsAdapter:Lcom/shishicai/app/activity/adapter/NewsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    invoke-direct {p0}, Lcom/shishicai/app/activity/DayNewsActivity;->gainData()V

    .line 75
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 207
    invoke-super {p0}, Lcom/shishicai/app/utils/Base2Activity;->onDestroy()V

    .line 208
    invoke-static {p0}, Lcom/shishicai/app/service/HttpUser;->cancel(Landroid/content/Context;)V

    .line 209
    return-void
.end method

.method public onFooterRefresh(Lcom/shishicai/app/ui/PullToRefreshView;)V
    .locals 3
    .param p1, "view"    # Lcom/shishicai/app/ui/PullToRefreshView;

    .prologue
    .line 180
    iget v1, p0, Lcom/shishicai/app/activity/DayNewsActivity;->mCurrentPage:I

    iget v2, p0, Lcom/shishicai/app/activity/DayNewsActivity;->mTotalPage:I

    if-ge v1, v2, :cond_2

    .line 181
    iget-object v1, p0, Lcom/shishicai/app/activity/DayNewsActivity;->list:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/shishicai/app/activity/DayNewsActivity;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 183
    iget v1, p0, Lcom/shishicai/app/activity/DayNewsActivity;->mCurrentPage:I

    mul-int/lit8 v0, v1, 0xa

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/shishicai/app/activity/DayNewsActivity;->mCurrentPage:I

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0xa

    if-ge v0, v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/shishicai/app/activity/DayNewsActivity;->listPage:Ljava/util/List;

    iget-object v2, p0, Lcom/shishicai/app/activity/DayNewsActivity;->list:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/shishicai/app/activity/DayNewsActivity;->newsAdapter:Lcom/shishicai/app/activity/adapter/NewsAdapter;

    invoke-virtual {v1}, Lcom/shishicai/app/activity/adapter/NewsAdapter;->notifyDataSetChanged()V

    .line 189
    .end local v0    # "i":I
    :cond_1
    iget v1, p0, Lcom/shishicai/app/activity/DayNewsActivity;->mCurrentPage:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/shishicai/app/activity/DayNewsActivity;->mCurrentPage:I

    .line 193
    :goto_1
    iget-object v1, p0, Lcom/shishicai/app/activity/DayNewsActivity;->mRefreshView:Lcom/shishicai/app/ui/PullToRefreshView;

    invoke-virtual {v1}, Lcom/shishicai/app/ui/PullToRefreshView;->onFooterRefreshComplete()V

    .line 194
    return-void

    .line 191
    :cond_2
    const-string v1, "\u6ca1\u6709\u6570\u636e\u53ef\u52a0\u8f7d\u4e86\uff01"

    invoke-static {p0, v1}, Lcom/shishicai/app/service/HttpMethod;->Toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onHeaderRefresh(Lcom/shishicai/app/ui/PullToRefreshView;)V
    .locals 1
    .param p1, "view"    # Lcom/shishicai/app/ui/PullToRefreshView;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/shishicai/app/activity/DayNewsActivity;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 199
    iget-object v0, p0, Lcom/shishicai/app/activity/DayNewsActivity;->listPage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 200
    const/4 v0, 0x1

    iput v0, p0, Lcom/shishicai/app/activity/DayNewsActivity;->mCurrentPage:I

    .line 201
    invoke-direct {p0}, Lcom/shishicai/app/activity/DayNewsActivity;->gainData()V

    .line 202
    iget-object v0, p0, Lcom/shishicai/app/activity/DayNewsActivity;->mRefreshView:Lcom/shishicai/app/ui/PullToRefreshView;

    invoke-virtual {v0}, Lcom/shishicai/app/ui/PullToRefreshView;->onHeaderRefreshComplete()V

    .line 203
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
    .line 171
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v1, "is_open"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/shishicai/app/utils/PreferencesUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 172
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/shishicai/app/activity/WebviewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 173
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "link"

    iget-object v1, p0, Lcom/shishicai/app/activity/DayNewsActivity;->list:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shishicai/app/domain/DayNews;

    invoke-virtual {v1}, Lcom/shishicai/app/domain/DayNews;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string v2, "title"

    iget-object v1, p0, Lcom/shishicai/app/activity/DayNewsActivity;->list:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shishicai/app/domain/DayNews;

    invoke-virtual {v1}, Lcom/shishicai/app/domain/DayNews;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/DayNewsActivity;->startActivity(Landroid/content/Intent;)V

    .line 176
    return-void
.end method
