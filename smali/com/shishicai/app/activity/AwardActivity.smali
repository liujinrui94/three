.class public Lcom/shishicai/app/activity/AwardActivity;
.super Lcom/shishicai/app/utils/Base2Activity;
.source "AwardActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/shishicai/app/ui/PullToRefreshView$OnHeaderRefreshListener;
.implements Lcom/shishicai/app/ui/PullToRefreshView$OnFooterRefreshListener;


# instance fields
.field private awardAdapter:Lcom/shishicai/app/activity/adapter/AwardAdapter;

.field private linear:Landroid/widget/LinearLayout;

.field private link:Ljava/lang/String;

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

.field private listArticle:Landroid/widget/ListView;

.field private mRefreshView:Lcom/shishicai/app/ui/PullToRefreshView;

.field private msgLayout:Landroid/widget/LinearLayout;

.field private title:Landroid/widget/TextView;

.field private titleString:Ljava/lang/String;

.field private titleimgLeft:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/shishicai/app/utils/Base2Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/shishicai/app/activity/AwardActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/AwardActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/shishicai/app/activity/AwardActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/shishicai/app/activity/AwardActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/AwardActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/shishicai/app/activity/AwardActivity;->msgLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/shishicai/app/activity/AwardActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/AwardActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/shishicai/app/activity/AwardActivity;->linear:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/shishicai/app/activity/AwardActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/AwardActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/shishicai/app/activity/AwardActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/shishicai/app/activity/AwardActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/AwardActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/shishicai/app/activity/AwardActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/shishicai/app/activity/AwardActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/AwardActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/shishicai/app/activity/AwardActivity;->list:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$502(Lcom/shishicai/app/activity/AwardActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/AwardActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/shishicai/app/activity/AwardActivity;->list:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$600(Lcom/shishicai/app/activity/AwardActivity;)Lcom/shishicai/app/activity/adapter/AwardAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/AwardActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/shishicai/app/activity/AwardActivity;->awardAdapter:Lcom/shishicai/app/activity/adapter/AwardAdapter;

    return-object v0
.end method

.method static synthetic access$602(Lcom/shishicai/app/activity/AwardActivity;Lcom/shishicai/app/activity/adapter/AwardAdapter;)Lcom/shishicai/app/activity/adapter/AwardAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/AwardActivity;
    .param p1, "x1"    # Lcom/shishicai/app/activity/adapter/AwardAdapter;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/shishicai/app/activity/AwardActivity;->awardAdapter:Lcom/shishicai/app/activity/adapter/AwardAdapter;

    return-object p1
.end method

.method static synthetic access$700(Lcom/shishicai/app/activity/AwardActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/AwardActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/shishicai/app/activity/AwardActivity;->listArticle:Landroid/widget/ListView;

    return-object v0
.end method

.method private gainData()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/shishicai/app/activity/AwardActivity;->link:Ljava/lang/String;

    new-instance v1, Lcom/shishicai/app/activity/AwardActivity$1;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/AwardActivity$1;-><init>(Lcom/shishicai/app/activity/AwardActivity;)V

    invoke-static {v0, v1}, Lcom/shishicai/app/service/HttpUser;->get(Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 108
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 132
    :goto_0
    return-void

    .line 129
    :pswitch_0
    invoke-virtual {p0}, Lcom/shishicai/app/activity/AwardActivity;->finish()V

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x7f0900f0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/shishicai/app/utils/Base2Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v1, 0x7f030015

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/AwardActivity;->setContentView(I)V

    .line 46
    const-string v1, "AwardActivity"

    iput-object v1, p0, Lcom/shishicai/app/activity/AwardActivity;->TAG:Ljava/lang/String;

    .line 47
    const v1, 0x7f0900f1

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/AwardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/shishicai/app/activity/AwardActivity;->title:Landroid/widget/TextView;

    .line 48
    const v1, 0x7f0900f0

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/AwardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/shishicai/app/activity/AwardActivity;->titleimgLeft:Landroid/widget/ImageView;

    .line 49
    iget-object v1, p0, Lcom/shishicai/app/activity/AwardActivity;->titleimgLeft:Landroid/widget/ImageView;

    const v2, 0x7f020110

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 50
    iget-object v1, p0, Lcom/shishicai/app/activity/AwardActivity;->titleimgLeft:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v1, 0x7f090021

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/AwardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/shishicai/app/activity/AwardActivity;->msgLayout:Landroid/widget/LinearLayout;

    .line 52
    const v1, 0x7f090025

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/AwardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/shishicai/app/activity/AwardActivity;->linear:Landroid/widget/LinearLayout;

    .line 53
    const v1, 0x7f09002f

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/AwardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/shishicai/app/ui/PullToRefreshView;

    iput-object v1, p0, Lcom/shishicai/app/activity/AwardActivity;->mRefreshView:Lcom/shishicai/app/ui/PullToRefreshView;

    .line 54
    const v1, 0x7f090029

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/AwardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/shishicai/app/activity/AwardActivity;->listArticle:Landroid/widget/ListView;

    .line 55
    iget-object v1, p0, Lcom/shishicai/app/activity/AwardActivity;->mRefreshView:Lcom/shishicai/app/ui/PullToRefreshView;

    invoke-virtual {v1, p0}, Lcom/shishicai/app/ui/PullToRefreshView;->setOnHeaderRefreshListener(Lcom/shishicai/app/ui/PullToRefreshView$OnHeaderRefreshListener;)V

    .line 56
    iget-object v1, p0, Lcom/shishicai/app/activity/AwardActivity;->mRefreshView:Lcom/shishicai/app/ui/PullToRefreshView;

    invoke-virtual {v1, p0}, Lcom/shishicai/app/ui/PullToRefreshView;->setOnFooterRefreshListener(Lcom/shishicai/app/ui/PullToRefreshView$OnFooterRefreshListener;)V

    .line 57
    invoke-virtual {p0}, Lcom/shishicai/app/activity/AwardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 58
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shishicai/app/activity/AwardActivity;->titleString:Ljava/lang/String;

    .line 59
    const-string v1, "link"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shishicai/app/activity/AwardActivity;->link:Ljava/lang/String;

    .line 60
    iget-object v1, p0, Lcom/shishicai/app/activity/AwardActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "link="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/shishicai/app/activity/AwardActivity;->link:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/shishicai/app/activity/AwardActivity;->title:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/shishicai/app/activity/AwardActivity;->titleString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u5386\u53f2\u5f00\u5956"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v1, p0, Lcom/shishicai/app/activity/AwardActivity;->msgLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 63
    iget-object v1, p0, Lcom/shishicai/app/activity/AwardActivity;->linear:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/shishicai/app/activity/AwardActivity;->list:Ljava/util/List;

    .line 65
    invoke-direct {p0}, Lcom/shishicai/app/activity/AwardActivity;->gainData()V

    .line 66
    return-void
.end method

.method public onFooterRefresh(Lcom/shishicai/app/ui/PullToRefreshView;)V
    .locals 1
    .param p1, "view"    # Lcom/shishicai/app/ui/PullToRefreshView;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/shishicai/app/activity/AwardActivity;->mRefreshView:Lcom/shishicai/app/ui/PullToRefreshView;

    invoke-virtual {v0}, Lcom/shishicai/app/ui/PullToRefreshView;->onFooterRefreshComplete()V

    .line 115
    return-void
.end method

.method public onHeaderRefresh(Lcom/shishicai/app/ui/PullToRefreshView;)V
    .locals 1
    .param p1, "view"    # Lcom/shishicai/app/ui/PullToRefreshView;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/shishicai/app/activity/AwardActivity;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 120
    invoke-direct {p0}, Lcom/shishicai/app/activity/AwardActivity;->gainData()V

    .line 121
    iget-object v0, p0, Lcom/shishicai/app/activity/AwardActivity;->mRefreshView:Lcom/shishicai/app/ui/PullToRefreshView;

    invoke-virtual {v0}, Lcom/shishicai/app/ui/PullToRefreshView;->onHeaderRefreshComplete()V

    .line 122
    return-void
.end method
