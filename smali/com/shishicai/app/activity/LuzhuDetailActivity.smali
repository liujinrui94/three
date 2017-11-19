.class public Lcom/shishicai/app/activity/LuzhuDetailActivity;
.super Lcom/shishicai/app/utils/Base2Activity;
.source "LuzhuDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/shishicai/app/ui/PullToRefreshView$OnHeaderRefreshListener;
.implements Lcom/shishicai/app/ui/PullToRefreshView$OnFooterRefreshListener;


# instance fields
.field private adapter:Lcom/shishicai/app/activity/adapter/LuzhuAdapter;

.field private linear:Landroid/widget/LinearLayout;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean;",
            ">;"
        }
    .end annotation
.end field

.field private listArticle:Lcom/shishicai/app/ui/MyListView;

.field private mRefreshView:Lcom/shishicai/app/ui/PullToRefreshView;

.field private msgLayout:Landroid/widget/LinearLayout;

.field private title:Landroid/widget/TextView;

.field private titleString:Ljava/lang/String;

.field private titleimgLeft:Landroid/widget/ImageView;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/shishicai/app/utils/Base2Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/shishicai/app/activity/LuzhuDetailActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/LuzhuDetailActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/shishicai/app/activity/LuzhuDetailActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/shishicai/app/activity/LuzhuDetailActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/LuzhuDetailActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/shishicai/app/activity/LuzhuDetailActivity;->msgLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/shishicai/app/activity/LuzhuDetailActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/LuzhuDetailActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/shishicai/app/activity/LuzhuDetailActivity;->linear:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/shishicai/app/activity/LuzhuDetailActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/LuzhuDetailActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/shishicai/app/activity/LuzhuDetailActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/shishicai/app/activity/LuzhuDetailActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/LuzhuDetailActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/shishicai/app/activity/LuzhuDetailActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/shishicai/app/activity/LuzhuDetailActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/LuzhuDetailActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/shishicai/app/activity/LuzhuDetailActivity;->list:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/shishicai/app/activity/LuzhuDetailActivity;)Lcom/shishicai/app/activity/adapter/LuzhuAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/LuzhuDetailActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/shishicai/app/activity/LuzhuDetailActivity;->adapter:Lcom/shishicai/app/activity/adapter/LuzhuAdapter;

    return-object v0
.end method

.method private gainData()V
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/shishicai/app/activity/LuzhuDetailActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shishicai/app/activity/LuzhuDetailActivity;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/shishicai/app/activity/LuzhuDetailActivity;->url:Ljava/lang/String;

    new-instance v1, Lcom/shishicai/app/activity/LuzhuDetailActivity$1;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/LuzhuDetailActivity$1;-><init>(Lcom/shishicai/app/activity/LuzhuDetailActivity;)V

    invoke-static {v0, v1}, Lcom/shishicai/app/service/HttpUser;->get(Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 122
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 81
    :goto_0
    return-void

    .line 78
    :pswitch_0
    invoke-virtual {p0}, Lcom/shishicai/app/activity/LuzhuDetailActivity;->finish()V

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x7f0900f0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/shishicai/app/utils/Base2Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v1, 0x7f030007

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/LuzhuDetailActivity;->setContentView(I)V

    .line 50
    const-string v1, "LuzhuDetailActivity"

    iput-object v1, p0, Lcom/shishicai/app/activity/LuzhuDetailActivity;->TAG:Ljava/lang/String;

    .line 51
    const v1, 0x7f0900f1

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/LuzhuDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/shishicai/app/activity/LuzhuDetailActivity;->title:Landroid/widget/TextView;

    .line 52
    const v1, 0x7f0900f0

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/LuzhuDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/shishicai/app/activity/LuzhuDetailActivity;->titleimgLeft:Landroid/widget/ImageView;

    .line 53
    iget-object v1, p0, Lcom/shishicai/app/activity/LuzhuDetailActivity;->titleimgLeft:Landroid/widget/ImageView;

    const v2, 0x7f020110

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 54
    iget-object v1, p0, Lcom/shishicai/app/activity/LuzhuDetailActivity;->titleimgLeft:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const v1, 0x7f090021

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/LuzhuDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/shishicai/app/activity/LuzhuDetailActivity;->msgLayout:Landroid/widget/LinearLayout;

    .line 56
    const v1, 0x7f090025

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/LuzhuDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/shishicai/app/activity/LuzhuDetailActivity;->linear:Landroid/widget/LinearLayout;

    .line 57
    const v1, 0x7f09002f

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/LuzhuDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/shishicai/app/ui/PullToRefreshView;

    iput-object v1, p0, Lcom/shishicai/app/activity/LuzhuDetailActivity;->mRefreshView:Lcom/shishicai/app/ui/PullToRefreshView;

    .line 58
    const v1, 0x7f090029

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/LuzhuDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/shishicai/app/ui/MyListView;

    iput-object v1, p0, Lcom/shishicai/app/activity/LuzhuDetailActivity;->listArticle:Lcom/shishicai/app/ui/MyListView;

    .line 59
    iget-object v1, p0, Lcom/shishicai/app/activity/LuzhuDetailActivity;->mRefreshView:Lcom/shishicai/app/ui/PullToRefreshView;

    invoke-virtual {v1, p0}, Lcom/shishicai/app/ui/PullToRefreshView;->setOnHeaderRefreshListener(Lcom/shishicai/app/ui/PullToRefreshView$OnHeaderRefreshListener;)V

    .line 60
    iget-object v1, p0, Lcom/shishicai/app/activity/LuzhuDetailActivity;->mRefreshView:Lcom/shishicai/app/ui/PullToRefreshView;

    invoke-virtual {v1, p0}, Lcom/shishicai/app/ui/PullToRefreshView;->setOnFooterRefreshListener(Lcom/shishicai/app/ui/PullToRefreshView$OnFooterRefreshListener;)V

    .line 61
    iget-object v1, p0, Lcom/shishicai/app/activity/LuzhuDetailActivity;->msgLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 62
    iget-object v1, p0, Lcom/shishicai/app/activity/LuzhuDetailActivity;->linear:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 63
    invoke-virtual {p0}, Lcom/shishicai/app/activity/LuzhuDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 64
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shishicai/app/activity/LuzhuDetailActivity;->titleString:Ljava/lang/String;

    .line 65
    iget-object v1, p0, Lcom/shishicai/app/activity/LuzhuDetailActivity;->title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/shishicai/app/activity/LuzhuDetailActivity;->titleString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shishicai/app/activity/LuzhuDetailActivity;->url:Ljava/lang/String;

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/shishicai/app/activity/LuzhuDetailActivity;->list:Ljava/util/List;

    .line 68
    new-instance v1, Lcom/shishicai/app/activity/adapter/LuzhuAdapter;

    iget-object v2, p0, Lcom/shishicai/app/activity/LuzhuDetailActivity;->list:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/shishicai/app/activity/adapter/LuzhuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/shishicai/app/activity/LuzhuDetailActivity;->adapter:Lcom/shishicai/app/activity/adapter/LuzhuAdapter;

    .line 69
    iget-object v1, p0, Lcom/shishicai/app/activity/LuzhuDetailActivity;->listArticle:Lcom/shishicai/app/ui/MyListView;

    iget-object v2, p0, Lcom/shishicai/app/activity/LuzhuDetailActivity;->adapter:Lcom/shishicai/app/activity/adapter/LuzhuAdapter;

    invoke-virtual {v1, v2}, Lcom/shishicai/app/ui/MyListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    invoke-direct {p0}, Lcom/shishicai/app/activity/LuzhuDetailActivity;->gainData()V

    .line 71
    return-void
.end method

.method public onFooterRefresh(Lcom/shishicai/app/ui/PullToRefreshView;)V
    .locals 1
    .param p1, "view"    # Lcom/shishicai/app/ui/PullToRefreshView;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/shishicai/app/activity/LuzhuDetailActivity;->mRefreshView:Lcom/shishicai/app/ui/PullToRefreshView;

    invoke-virtual {v0}, Lcom/shishicai/app/ui/PullToRefreshView;->onFooterRefreshComplete()V

    .line 127
    return-void
.end method

.method public onHeaderRefresh(Lcom/shishicai/app/ui/PullToRefreshView;)V
    .locals 2
    .param p1, "view"    # Lcom/shishicai/app/ui/PullToRefreshView;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/shishicai/app/activity/LuzhuDetailActivity;->msgLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/shishicai/app/activity/LuzhuDetailActivity;->linear:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/shishicai/app/activity/LuzhuDetailActivity;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 134
    invoke-direct {p0}, Lcom/shishicai/app/activity/LuzhuDetailActivity;->gainData()V

    .line 135
    iget-object v0, p0, Lcom/shishicai/app/activity/LuzhuDetailActivity;->mRefreshView:Lcom/shishicai/app/ui/PullToRefreshView;

    invoke-virtual {v0}, Lcom/shishicai/app/ui/PullToRefreshView;->onHeaderRefreshComplete()V

    .line 136
    return-void
.end method
