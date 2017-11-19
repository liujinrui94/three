.class public Lcom/shishicai/app/fragment/AwardCategory;
.super Landroid/support/v4/app/Fragment;
.source "AwardCategory.java"

# interfaces
.implements Lcom/shishicai/app/ui/PullToRefreshView$OnHeaderRefreshListener;
.implements Lcom/shishicai/app/ui/PullToRefreshView$OnFooterRefreshListener;
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private awardCategory:Landroid/view/View;

.field private context:Lcom/shishicai/app/activity/MainActivity;

.field private currentDay:Ljava/lang/String;

.field private index:I

.field private isRequesting:Z

.field private isRequesting1:Z

.field private linear:Landroid/widget/LinearLayout;

.field private linear1:Landroid/widget/LinearLayout;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;",
            ">;"
        }
    .end annotation
.end field

.field private list1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;",
            ">;"
        }
    .end annotation
.end field

.field private ll_tab_1:Landroid/widget/LinearLayout;

.field private ll_tab_2:Landroid/widget/LinearLayout;

.field private mAdapter1:Lcom/shishicai/app/activity/adapter/PKshiAdapter;

.field private mAdapter2:Lcom/shishicai/app/activity/adapter/PKshiAdapter;

.field private mListView1:Landroid/widget/ListView;

.field private mListView2:Landroid/widget/ListView;

.field private mPullToRefreshView1:Lcom/shishicai/app/ui/PullToRefreshView;

.field private mPullToRefreshView2:Lcom/shishicai/app/ui/PullToRefreshView;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private msgLayout:Landroid/widget/LinearLayout;

.field private msgLayout1:Landroid/widget/LinearLayout;

.field private yesterday:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 60
    const-string v0, "AwardCategory"

    iput-object v0, p0, Lcom/shishicai/app/fragment/AwardCategory;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/shishicai/app/fragment/AwardCategory;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/AwardCategory;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardCategory;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/shishicai/app/fragment/AwardCategory;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/AwardCategory;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardCategory;->msgLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/shishicai/app/fragment/AwardCategory;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/AwardCategory;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardCategory;->list1:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/shishicai/app/fragment/AwardCategory;)Lcom/shishicai/app/activity/adapter/PKshiAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/AwardCategory;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardCategory;->mAdapter2:Lcom/shishicai/app/activity/adapter/PKshiAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/shishicai/app/fragment/AwardCategory;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/AwardCategory;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardCategory;->linear:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$302(Lcom/shishicai/app/fragment/AwardCategory;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/fragment/AwardCategory;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/shishicai/app/fragment/AwardCategory;->isRequesting:Z

    return p1
.end method

.method static synthetic access$400(Lcom/shishicai/app/fragment/AwardCategory;)Lcom/shishicai/app/activity/MainActivity;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/AwardCategory;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardCategory;->context:Lcom/shishicai/app/activity/MainActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/shishicai/app/fragment/AwardCategory;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/AwardCategory;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardCategory;->list:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/shishicai/app/fragment/AwardCategory;)Lcom/shishicai/app/activity/adapter/PKshiAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/AwardCategory;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardCategory;->mAdapter1:Lcom/shishicai/app/activity/adapter/PKshiAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/shishicai/app/fragment/AwardCategory;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/AwardCategory;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardCategory;->msgLayout1:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/shishicai/app/fragment/AwardCategory;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/AwardCategory;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardCategory;->linear1:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$902(Lcom/shishicai/app/fragment/AwardCategory;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/fragment/AwardCategory;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/shishicai/app/fragment/AwardCategory;->isRequesting1:Z

    return p1
.end method

.method private gainData()V
    .locals 4

    .prologue
    .line 209
    iget-boolean v1, p0, Lcom/shishicai/app/fragment/AwardCategory;->isRequesting:Z

    if-nez v1, :cond_1

    .line 211
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/shishicai/app/fragment/AwardCategory;->isRequesting:Z

    .line 212
    iget-object v1, p0, Lcom/shishicai/app/fragment/AwardCategory;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/shishicai/app/fragment/AwardCategory;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 215
    :cond_0
    sget-object v0, Lcom/shishicai/app/Constant;->AWARD_URL:Ljava/lang/String;

    .line 216
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/shishicai/app/fragment/AwardCategory;->TAG:Ljava/lang/String;

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

    .line 217
    new-instance v1, Lcom/shishicai/app/fragment/AwardCategory$1;

    invoke-direct {v1, p0}, Lcom/shishicai/app/fragment/AwardCategory$1;-><init>(Lcom/shishicai/app/fragment/AwardCategory;)V

    invoke-static {v0, v1}, Lcom/shishicai/app/service/HttpUser;->get(Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 260
    .end local v0    # "url":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public gainData(Ljava/lang/String;)V
    .locals 9
    .param p1, "day"    # Ljava/lang/String;

    .prologue
    .line 265
    iget-boolean v6, p0, Lcom/shishicai/app/fragment/AwardCategory;->isRequesting1:Z

    if-nez v6, :cond_1

    .line 267
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/shishicai/app/fragment/AwardCategory;->isRequesting1:Z

    .line 268
    iget-object v6, p0, Lcom/shishicai/app/fragment/AwardCategory;->list1:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 270
    iget-object v6, p0, Lcom/shishicai/app/fragment/AwardCategory;->list1:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 272
    :cond_0
    sget-object v5, Lcom/shishicai/app/Constant;->AWARD_URL:Ljava/lang/String;

    .line 273
    .local v5, "url":Ljava/lang/String;
    iget-object v6, p0, Lcom/shishicai/app/fragment/AwardCategory;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "day="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-wide/16 v0, 0x0

    .line 275
    .local v0, "diff":J
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 277
    .local v3, "ft":Ljava/text/SimpleDateFormat;
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " 12:00:00"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 278
    .local v4, "sDate":Ljava/util/Date;
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 282
    .end local v4    # "sDate":Ljava/util/Date;
    :goto_0
    const-wide/16 v6, 0x3e8

    div-long/2addr v0, v6

    .line 283
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&timestamp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 284
    iget-object v6, p0, Lcom/shishicai/app/fragment/AwardCategory;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "url="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    new-instance v6, Lcom/shishicai/app/fragment/AwardCategory$2;

    invoke-direct {v6, p0}, Lcom/shishicai/app/fragment/AwardCategory$2;-><init>(Lcom/shishicai/app/fragment/AwardCategory;)V

    invoke-static {v5, v6}, Lcom/shishicai/app/service/HttpUser;->get(Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 327
    .end local v0    # "diff":J
    .end local v3    # "ft":Ljava/text/SimpleDateFormat;
    .end local v5    # "url":Ljava/lang/String;
    :cond_1
    return-void

    .line 279
    .restart local v0    # "diff":J
    .restart local v3    # "ft":Ljava/text/SimpleDateFormat;
    .restart local v5    # "url":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 280
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 347
    iget v0, p0, Lcom/shishicai/app/fragment/AwardCategory;->index:I

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 132
    check-cast p1, Lcom/shishicai/app/activity/MainActivity;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/shishicai/app/fragment/AwardCategory;->context:Lcom/shishicai/app/activity/MainActivity;

    .line 133
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 331
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 344
    :goto_0
    return-void

    .line 334
    :pswitch_0
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardCategory;->ll_tab_1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 335
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardCategory;->ll_tab_2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 336
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardCategory;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 339
    :pswitch_1
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardCategory;->ll_tab_1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 340
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardCategory;->ll_tab_2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 341
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardCategory;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 331
    :pswitch_data_0
    .packed-switch 0x7f090056
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v9, 0x7f090029

    const v8, 0x7f090025

    const v7, 0x7f090021

    const v6, 0x7f030021

    const/4 v5, 0x0

    .line 71
    iget-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory;->awardCategory:Landroid/view/View;

    if-nez v3, :cond_0

    .line 72
    const v3, 0x7f030016

    invoke-virtual {p1, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory;->awardCategory:Landroid/view/View;

    .line 75
    :cond_0
    iget-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory;->awardCategory:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 76
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    .line 78
    iget-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory;->awardCategory:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 80
    :cond_1
    iget-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory;->awardCategory:Landroid/view/View;

    const v4, 0x7f090056

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory;->ll_tab_1:Landroid/widget/LinearLayout;

    .line 81
    iget-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory;->awardCategory:Landroid/view/View;

    const v4, 0x7f090057

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory;->ll_tab_2:Landroid/widget/LinearLayout;

    .line 82
    iget-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory;->ll_tab_1:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory;->ll_tab_2:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory;->awardCategory:Landroid/view/View;

    const v4, 0x7f090058

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager;

    iput-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 86
    iget-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 88
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory;->mViews:Ljava/util/List;

    .line 89
    const/4 v3, 0x0

    invoke-virtual {p1, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 90
    .local v1, "view1":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {p1, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 91
    .local v2, "view2":Landroid/view/View;
    iget-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory;->mViews:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory;->mViews:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory;->mListView1:Landroid/widget/ListView;

    .line 94
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory;->mListView2:Landroid/widget/ListView;

    .line 95
    const v3, 0x7f09002f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/shishicai/app/ui/PullToRefreshView;

    iput-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory;->mPullToRefreshView1:Lcom/shishicai/app/ui/PullToRefreshView;

    .line 96
    const v3, 0x7f09002f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/shishicai/app/ui/PullToRefreshView;

    iput-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory;->mPullToRefreshView2:Lcom/shishicai/app/ui/PullToRefreshView;

    .line 97
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory;->msgLayout:Landroid/widget/LinearLayout;

    .line 98
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory;->msgLayout1:Landroid/widget/LinearLayout;

    .line 99
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory;->linear:Landroid/widget/LinearLayout;

    .line 100
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory;->linear1:Landroid/widget/LinearLayout;

    .line 101
    iget-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory;->mPullToRefreshView1:Lcom/shishicai/app/ui/PullToRefreshView;

    invoke-virtual {v3, p0}, Lcom/shishicai/app/ui/PullToRefreshView;->setOnHeaderRefreshListener(Lcom/shishicai/app/ui/PullToRefreshView$OnHeaderRefreshListener;)V

    .line 102
    iget-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory;->mPullToRefreshView1:Lcom/shishicai/app/ui/PullToRefreshView;

    invoke-virtual {v3, p0}, Lcom/shishicai/app/ui/PullToRefreshView;->setOnFooterRefreshListener(Lcom/shishicai/app/ui/PullToRefreshView$OnFooterRefreshListener;)V

    .line 103
    iget-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory;->mPullToRefreshView2:Lcom/shishicai/app/ui/PullToRefreshView;

    invoke-virtual {v3, p0}, Lcom/shishicai/app/ui/PullToRefreshView;->setOnHeaderRefreshListener(Lcom/shishicai/app/ui/PullToRefreshView$OnHeaderRefreshListener;)V

    .line 104
    iget-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory;->mPullToRefreshView2:Lcom/shishicai/app/ui/PullToRefreshView;

    invoke-virtual {v3, p0}, Lcom/shishicai/app/ui/PullToRefreshView;->setOnFooterRefreshListener(Lcom/shishicai/app/ui/PullToRefreshView$OnFooterRefreshListener;)V

    .line 105
    invoke-static {}, Lcom/shishicai/app/utils/DateUtil;->getCurrentDate()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory;->currentDay:Ljava/lang/String;

    .line 106
    iget-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory;->currentDay:Ljava/lang/String;

    const-string v4, "yyyy-MM-dd"

    invoke-static {v3, v4}, Lcom/shishicai/app/utils/DateUtil;->getYestoday(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory;->yesterday:Ljava/lang/String;

    .line 107
    iget-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory;->msgLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 108
    iget-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory;->linear:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 110
    iget-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v4, Lcom/shishicai/app/activity/adapter/CategoryPagerAdapter;

    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardCategory;->mViews:Ljava/util/List;

    invoke-direct {v4, v5}, Lcom/shishicai/app/activity/adapter/CategoryPagerAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 111
    iget-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 112
    iget-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 113
    iget-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory;->ll_tab_1:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 114
    iget-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v4, p0, Lcom/shishicai/app/fragment/AwardCategory;->index:I

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 115
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory;->list:Ljava/util/List;

    .line 116
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory;->list1:Ljava/util/List;

    .line 117
    new-instance v3, Lcom/shishicai/app/activity/adapter/PKshiAdapter;

    iget-object v4, p0, Lcom/shishicai/app/fragment/AwardCategory;->context:Lcom/shishicai/app/activity/MainActivity;

    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardCategory;->list:Ljava/util/List;

    invoke-direct {v3, v4, v5}, Lcom/shishicai/app/activity/adapter/PKshiAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory;->mAdapter1:Lcom/shishicai/app/activity/adapter/PKshiAdapter;

    .line 118
    iget-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory;->mListView1:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/shishicai/app/fragment/AwardCategory;->mAdapter1:Lcom/shishicai/app/activity/adapter/PKshiAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 119
    new-instance v3, Lcom/shishicai/app/activity/adapter/PKshiAdapter;

    iget-object v4, p0, Lcom/shishicai/app/fragment/AwardCategory;->context:Lcom/shishicai/app/activity/MainActivity;

    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardCategory;->list1:Ljava/util/List;

    invoke-direct {v3, v4, v5}, Lcom/shishicai/app/activity/adapter/PKshiAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory;->mAdapter2:Lcom/shishicai/app/activity/adapter/PKshiAdapter;

    .line 120
    iget-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory;->mListView2:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/shishicai/app/fragment/AwardCategory;->mAdapter2:Lcom/shishicai/app/activity/adapter/PKshiAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 121
    iget v3, p0, Lcom/shishicai/app/fragment/AwardCategory;->index:I

    if-nez v3, :cond_2

    .line 122
    invoke-direct {p0}, Lcom/shishicai/app/fragment/AwardCategory;->gainData()V

    .line 125
    :cond_2
    iget-object v3, p0, Lcom/shishicai/app/fragment/AwardCategory;->awardCategory:Landroid/view/View;

    return-object v3
.end method

.method public onFooterRefresh(Lcom/shishicai/app/ui/PullToRefreshView;)V
    .locals 1
    .param p1, "view"    # Lcom/shishicai/app/ui/PullToRefreshView;

    .prologue
    .line 156
    iget v0, p0, Lcom/shishicai/app/fragment/AwardCategory;->index:I

    packed-switch v0, :pswitch_data_0

    .line 164
    :goto_0
    return-void

    .line 158
    :pswitch_0
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardCategory;->mPullToRefreshView1:Lcom/shishicai/app/ui/PullToRefreshView;

    invoke-virtual {v0}, Lcom/shishicai/app/ui/PullToRefreshView;->onFooterRefreshComplete()V

    goto :goto_0

    .line 161
    :pswitch_1
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardCategory;->mPullToRefreshView2:Lcom/shishicai/app/ui/PullToRefreshView;

    invoke-virtual {v0}, Lcom/shishicai/app/ui/PullToRefreshView;->onFooterRefreshComplete()V

    goto :goto_0

    .line 156
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onHeaderRefresh(Lcom/shishicai/app/ui/PullToRefreshView;)V
    .locals 3
    .param p1, "view"    # Lcom/shishicai/app/ui/PullToRefreshView;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 137
    iget v0, p0, Lcom/shishicai/app/fragment/AwardCategory;->index:I

    packed-switch v0, :pswitch_data_0

    .line 152
    :goto_0
    return-void

    .line 139
    :pswitch_0
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardCategory;->msgLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardCategory;->linear:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 141
    invoke-direct {p0}, Lcom/shishicai/app/fragment/AwardCategory;->gainData()V

    .line 142
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardCategory;->mPullToRefreshView1:Lcom/shishicai/app/ui/PullToRefreshView;

    invoke-virtual {v0}, Lcom/shishicai/app/ui/PullToRefreshView;->onHeaderRefreshComplete()V

    goto :goto_0

    .line 146
    :pswitch_1
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardCategory;->msgLayout1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardCategory;->linear1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardCategory;->yesterday:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/shishicai/app/fragment/AwardCategory;->gainData(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardCategory;->mPullToRefreshView2:Lcom/shishicai/app/ui/PullToRefreshView;

    invoke-virtual {v0}, Lcom/shishicai/app/ui/PullToRefreshView;->onHeaderRefreshComplete()V

    goto :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 205
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 169
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 173
    iput p1, p0, Lcom/shishicai/app/fragment/AwardCategory;->index:I

    .line 174
    packed-switch p1, :pswitch_data_0

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 176
    :pswitch_0
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardCategory;->ll_tab_1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 177
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardCategory;->ll_tab_2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 178
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardCategory;->context:Lcom/shishicai/app/activity/MainActivity;

    invoke-virtual {v0}, Lcom/shishicai/app/activity/MainActivity;->setRightIvGone()V

    .line 179
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardCategory;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardCategory;->msgLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardCategory;->linear:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 183
    invoke-direct {p0}, Lcom/shishicai/app/fragment/AwardCategory;->gainData()V

    goto :goto_0

    .line 187
    :pswitch_1
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardCategory;->ll_tab_1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 188
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardCategory;->ll_tab_2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 189
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardCategory;->context:Lcom/shishicai/app/activity/MainActivity;

    invoke-virtual {v0}, Lcom/shishicai/app/activity/MainActivity;->setRightIvVisable()V

    .line 190
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardCategory;->list1:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardCategory;->msgLayout1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardCategory;->linear1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardCategory;->yesterday:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/shishicai/app/fragment/AwardCategory;->gainData(Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
