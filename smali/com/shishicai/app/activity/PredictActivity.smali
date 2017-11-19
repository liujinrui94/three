.class public Lcom/shishicai/app/activity/PredictActivity;
.super Lcom/shishicai/app/utils/Base2Activity;
.source "PredictActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/shishicai/app/ui/PullToRefreshView$OnHeaderRefreshListener;
.implements Lcom/shishicai/app/ui/PullToRefreshView$OnFooterRefreshListener;


# instance fields
.field private linear:Landroid/widget/LinearLayout;

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

.field private listArticle:Landroid/widget/ListView;

.field private mRefreshView:Lcom/shishicai/app/ui/PullToRefreshView;

.field private msgLayout:Landroid/widget/LinearLayout;

.field private referAdapter:Lcom/shishicai/app/activity/adapter/AwardReferAdapter;

.field private title:Landroid/widget/TextView;

.field private titleimgLeft:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/shishicai/app/utils/Base2Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/shishicai/app/activity/PredictActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/PredictActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/shishicai/app/activity/PredictActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/shishicai/app/activity/PredictActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/PredictActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/shishicai/app/activity/PredictActivity;->msgLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/shishicai/app/activity/PredictActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/PredictActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/shishicai/app/activity/PredictActivity;->linear:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/shishicai/app/activity/PredictActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/PredictActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/shishicai/app/activity/PredictActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/shishicai/app/activity/PredictActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/PredictActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/shishicai/app/activity/PredictActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/shishicai/app/activity/PredictActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/PredictActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/shishicai/app/activity/PredictActivity;->list:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/shishicai/app/activity/PredictActivity;)Lcom/shishicai/app/activity/adapter/AwardReferAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/PredictActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/shishicai/app/activity/PredictActivity;->referAdapter:Lcom/shishicai/app/activity/adapter/AwardReferAdapter;

    return-object v0
.end method

.method private gainData()V
    .locals 4

    .prologue
    .line 76
    sget-object v0, Lcom/shishicai/app/Constant;->AWARD_REFER_URL:Ljava/lang/String;

    .line 77
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/shishicai/app/activity/PredictActivity;->TAG:Ljava/lang/String;

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

    .line 78
    new-instance v1, Lcom/shishicai/app/activity/PredictActivity$1;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/PredictActivity$1;-><init>(Lcom/shishicai/app/activity/PredictActivity;)V

    invoke-static {v0, v1}, Lcom/shishicai/app/service/HttpUser;->get(Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 121
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 72
    :goto_0
    return-void

    .line 69
    :pswitch_0
    invoke-virtual {p0}, Lcom/shishicai/app/activity/PredictActivity;->finish()V

    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x7f0900f0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/shishicai/app/utils/Base2Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/PredictActivity;->setContentView(I)V

    .line 44
    const-string v0, "PredictActivity"

    iput-object v0, p0, Lcom/shishicai/app/activity/PredictActivity;->TAG:Ljava/lang/String;

    .line 45
    const v0, 0x7f0900f1

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/PredictActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shishicai/app/activity/PredictActivity;->title:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f0900f0

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/PredictActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shishicai/app/activity/PredictActivity;->titleimgLeft:Landroid/widget/ImageView;

    .line 47
    iget-object v0, p0, Lcom/shishicai/app/activity/PredictActivity;->titleimgLeft:Landroid/widget/ImageView;

    const v1, 0x7f020110

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    iget-object v0, p0, Lcom/shishicai/app/activity/PredictActivity;->titleimgLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v0, p0, Lcom/shishicai/app/activity/PredictActivity;->title:Landroid/widget/TextView;

    const-string v1, "\u53f7\u7801\u9884\u6d4b"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    const v0, 0x7f090021

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/PredictActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shishicai/app/activity/PredictActivity;->msgLayout:Landroid/widget/LinearLayout;

    .line 51
    const v0, 0x7f090025

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/PredictActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shishicai/app/activity/PredictActivity;->linear:Landroid/widget/LinearLayout;

    .line 52
    const v0, 0x7f09002f

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/PredictActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/shishicai/app/ui/PullToRefreshView;

    iput-object v0, p0, Lcom/shishicai/app/activity/PredictActivity;->mRefreshView:Lcom/shishicai/app/ui/PullToRefreshView;

    .line 53
    const v0, 0x7f090029

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/PredictActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/shishicai/app/activity/PredictActivity;->listArticle:Landroid/widget/ListView;

    .line 54
    iget-object v0, p0, Lcom/shishicai/app/activity/PredictActivity;->mRefreshView:Lcom/shishicai/app/ui/PullToRefreshView;

    invoke-virtual {v0, p0}, Lcom/shishicai/app/ui/PullToRefreshView;->setOnHeaderRefreshListener(Lcom/shishicai/app/ui/PullToRefreshView$OnHeaderRefreshListener;)V

    .line 55
    iget-object v0, p0, Lcom/shishicai/app/activity/PredictActivity;->mRefreshView:Lcom/shishicai/app/ui/PullToRefreshView;

    invoke-virtual {v0, p0}, Lcom/shishicai/app/ui/PullToRefreshView;->setOnFooterRefreshListener(Lcom/shishicai/app/ui/PullToRefreshView$OnFooterRefreshListener;)V

    .line 56
    iget-object v0, p0, Lcom/shishicai/app/activity/PredictActivity;->msgLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Lcom/shishicai/app/activity/PredictActivity;->linear:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shishicai/app/activity/PredictActivity;->list:Ljava/util/List;

    .line 59
    new-instance v0, Lcom/shishicai/app/activity/adapter/AwardReferAdapter;

    iget-object v1, p0, Lcom/shishicai/app/activity/PredictActivity;->list:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/shishicai/app/activity/adapter/AwardReferAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/shishicai/app/activity/PredictActivity;->referAdapter:Lcom/shishicai/app/activity/adapter/AwardReferAdapter;

    .line 60
    iget-object v0, p0, Lcom/shishicai/app/activity/PredictActivity;->listArticle:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/shishicai/app/activity/PredictActivity;->referAdapter:Lcom/shishicai/app/activity/adapter/AwardReferAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 61
    invoke-direct {p0}, Lcom/shishicai/app/activity/PredictActivity;->gainData()V

    .line 62
    return-void
.end method

.method public onFooterRefresh(Lcom/shishicai/app/ui/PullToRefreshView;)V
    .locals 1
    .param p1, "view"    # Lcom/shishicai/app/ui/PullToRefreshView;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/shishicai/app/activity/PredictActivity;->mRefreshView:Lcom/shishicai/app/ui/PullToRefreshView;

    invoke-virtual {v0}, Lcom/shishicai/app/ui/PullToRefreshView;->onFooterRefreshComplete()V

    .line 126
    return-void
.end method

.method public onHeaderRefresh(Lcom/shishicai/app/ui/PullToRefreshView;)V
    .locals 2
    .param p1, "view"    # Lcom/shishicai/app/ui/PullToRefreshView;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/shishicai/app/activity/PredictActivity;->msgLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/shishicai/app/activity/PredictActivity;->linear:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/shishicai/app/activity/PredictActivity;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 133
    invoke-direct {p0}, Lcom/shishicai/app/activity/PredictActivity;->gainData()V

    .line 134
    iget-object v0, p0, Lcom/shishicai/app/activity/PredictActivity;->mRefreshView:Lcom/shishicai/app/ui/PullToRefreshView;

    invoke-virtual {v0}, Lcom/shishicai/app/ui/PullToRefreshView;->onHeaderRefreshComplete()V

    .line 135
    return-void
.end method
