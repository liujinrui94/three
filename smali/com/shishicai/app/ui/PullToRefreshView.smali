.class public Lcom/shishicai/app/ui/PullToRefreshView;
.super Landroid/widget/LinearLayout;
.source "PullToRefreshView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shishicai/app/ui/PullToRefreshView$OnHeaderStateListener;,
        Lcom/shishicai/app/ui/PullToRefreshView$OnHeaderRefreshListener;,
        Lcom/shishicai/app/ui/PullToRefreshView$OnFooterRefreshListener;
    }
.end annotation


# static fields
.field private static final PULL_DOWN_STATE:I = 0x1

.field public static final PULL_STATE_NOMARL:I = -0x1

.field private static final PULL_TO_REFRESH:I = 0x2

.field private static final PULL_UP_STATE:I = 0x0

.field private static final REFRESHING:I = 0x4

.field private static final RELEASE_TO_REFRESH:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PullToRefreshView"

.field private static final zero:I = 0x14


# instance fields
.field private mAdapterView:Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<*>;"
        }
    .end annotation
.end field

.field private mFlipAnimation:Landroid/view/animation/RotateAnimation;

.field private mFooterImageView:Landroid/widget/ImageView;

.field private mFooterProgressBar:Landroid/widget/ProgressBar;

.field private mFooterState:I

.field private mFooterTextView:Landroid/widget/TextView;

.field private mFooterView:Landroid/view/View;

.field private mFooterViewHeight:I

.field private mHeaderImageView:Landroid/widget/ImageView;

.field private mHeaderProgressBar:Landroid/widget/ProgressBar;

.field private mHeaderState:I

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mHeaderUpdateTextView:Landroid/widget/TextView;

.field private mHeaderView:Landroid/view/View;

.field private mHeaderViewHeight:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLastMotionY:I

.field private mLock:Z

.field private mOnFooterRefreshListener:Lcom/shishicai/app/ui/PullToRefreshView$OnFooterRefreshListener;

.field private mOnHeaderRefreshListener:Lcom/shishicai/app/ui/PullToRefreshView$OnHeaderRefreshListener;

.field private mOnHeaderStateListener:Lcom/shishicai/app/ui/PullToRefreshView$OnHeaderStateListener;

.field private mPullState:I

.field private mReverseFlipAnimation:Landroid/view/animation/RotateAnimation;

.field private mScrollView:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 146
    invoke-direct {p0}, Lcom/shishicai/app/ui/PullToRefreshView;->init()V

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 140
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 141
    invoke-direct {p0}, Lcom/shishicai/app/ui/PullToRefreshView;->init()V

    .line 142
    return-void
.end method

.method private addFooterView()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 204
    iget-object v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030067

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mFooterView:Landroid/view/View;

    .line 205
    iget-object v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mFooterView:Landroid/view/View;

    const v2, 0x7f090194

    .line 206
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mFooterImageView:Landroid/widget/ImageView;

    .line 207
    iget-object v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mFooterView:Landroid/view/View;

    const v2, 0x7f090195

    .line 208
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mFooterTextView:Landroid/widget/TextView;

    .line 209
    iget-object v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mFooterView:Landroid/view/View;

    const v2, 0x7f090193

    .line 210
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mFooterProgressBar:Landroid/widget/ProgressBar;

    .line 212
    iget-object v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mFooterView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/shishicai/app/ui/PullToRefreshView;->measureView(Landroid/view/View;)V

    .line 213
    iget-object v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mFooterView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mFooterViewHeight:I

    .line 214
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mFooterViewHeight:I

    invoke-direct {v0, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 221
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mFooterView:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/shishicai/app/ui/PullToRefreshView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    iput v4, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mPullState:I

    .line 223
    return-void
.end method

.method private addHeaderView()V
    .locals 4

    .prologue
    .line 176
    iget-object v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030068

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderView:Landroid/view/View;

    .line 177
    iget-object v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderView:Landroid/view/View;

    const v2, 0x7f090198

    .line 178
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderTextView:Landroid/widget/TextView;

    .line 179
    iget-object v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderView:Landroid/view/View;

    const v2, 0x7f090197

    .line 180
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderImageView:Landroid/widget/ImageView;

    .line 181
    iget-object v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderView:Landroid/view/View;

    const v2, 0x7f090199

    .line 182
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderUpdateTextView:Landroid/widget/TextView;

    .line 183
    iget-object v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderView:Landroid/view/View;

    const v2, 0x7f090196

    .line 184
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderProgressBar:Landroid/widget/ProgressBar;

    .line 186
    iget-object v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/shishicai/app/ui/PullToRefreshView;->measureView(Landroid/view/View;)V

    .line 187
    iget-object v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderViewHeight:I

    .line 188
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderViewHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 191
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderViewHeight:I

    neg-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 193
    iget-object v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/shishicai/app/ui/PullToRefreshView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    return-void
.end method

.method private changingHeaderViewTopMargin(I)I
    .locals 5
    .param p1, "deltaY"    # I

    .prologue
    .line 501
    iget-object v2, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 502
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    int-to-float v2, v2

    int-to-float v3, p1

    const v4, 0x3e99999a    # 0.3f

    mul-float/2addr v3, v4

    add-float v0, v2, v3

    .line 505
    .local v0, "newTopMargin":F
    if-lez p1, :cond_0

    iget v2, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mPullState:I

    if-nez v2, :cond_0

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 506
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderViewHeight:I

    if-gt v2, v3, :cond_0

    .line 507
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 517
    :goto_0
    return v2

    .line 510
    :cond_0
    if-gez p1, :cond_1

    iget v2, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mPullState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 511
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderViewHeight:I

    if-lt v2, v3, :cond_1

    .line 512
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 514
    :cond_1
    float-to-int v2, v0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 515
    iget-object v2, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 516
    invoke-virtual {p0}, Lcom/shishicai/app/ui/PullToRefreshView;->invalidate()V

    .line 517
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method

.method private footerPrepareToRefresh(I)V
    .locals 5
    .param p1, "deltaY"    # I

    .prologue
    const/4 v4, 0x3

    .line 475
    invoke-direct {p0, p1}, Lcom/shishicai/app/ui/PullToRefreshView;->changingHeaderViewTopMargin(I)I

    move-result v0

    .line 478
    .local v0, "newTopMargin":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderViewHeight:I

    iget v3, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mFooterViewHeight:I

    add-int/2addr v2, v3

    if-lt v1, v2, :cond_1

    iget v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mFooterState:I

    if-eq v1, v4, :cond_1

    .line 480
    iget-object v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mFooterTextView:Landroid/widget/TextView;

    const v2, 0x7f0a0034

    .line 481
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 482
    iget-object v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mFooterImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 483
    iget-object v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mFooterImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 484
    iput v4, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mFooterState:I

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderViewHeight:I

    iget v3, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mFooterViewHeight:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    .line 486
    iget-object v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mFooterImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 487
    iget-object v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mFooterImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 488
    iget-object v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mFooterTextView:Landroid/widget/TextView;

    const v2, 0x7f0a0032

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 489
    const/4 v1, 0x2

    iput v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mFooterState:I

    goto :goto_0
.end method

.method private footerRefreshing()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 544
    const/4 v1, 0x4

    iput v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mFooterState:I

    .line 545
    iget v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderViewHeight:I

    iget v2, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mFooterViewHeight:I

    add-int v0, v1, v2

    .line 546
    .local v0, "top":I
    neg-int v1, v0

    invoke-direct {p0, v1}, Lcom/shishicai/app/ui/PullToRefreshView;->setHeaderTopMargin(I)V

    .line 547
    iget-object v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mFooterImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 548
    iget-object v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mFooterImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 549
    iget-object v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mFooterImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 550
    iget-object v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mFooterProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 551
    iget-object v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mFooterTextView:Landroid/widget/TextView;

    const v2, 0x7f0a0033

    .line 552
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 553
    iget-object v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mOnFooterRefreshListener:Lcom/shishicai/app/ui/PullToRefreshView$OnFooterRefreshListener;

    if-eqz v1, :cond_0

    .line 554
    iget-object v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mOnFooterRefreshListener:Lcom/shishicai/app/ui/PullToRefreshView$OnFooterRefreshListener;

    invoke-interface {v1, p0}, Lcom/shishicai/app/ui/PullToRefreshView$OnFooterRefreshListener;->onFooterRefresh(Lcom/shishicai/app/ui/PullToRefreshView;)V

    .line 556
    :cond_0
    iget-object v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mFooterView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 557
    invoke-virtual {p0}, Lcom/shishicai/app/ui/PullToRefreshView;->onFooterRefreshComplete()V

    .line 559
    :cond_1
    return-void
.end method

.method private getHeaderTopMargin()I
    .locals 2

    .prologue
    .line 650
    iget-object v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 651
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    return v1
.end method

.method private headerPrepareToRefresh(I)V
    .locals 4
    .param p1, "deltaY"    # I

    .prologue
    const/4 v3, 0x3

    .line 445
    invoke-direct {p0, p1}, Lcom/shishicai/app/ui/PullToRefreshView;->changingHeaderViewTopMargin(I)I

    move-result v0

    .line 447
    .local v0, "newTopMargin":I
    if-ltz v0, :cond_1

    iget v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderState:I

    if-eq v1, v3, :cond_1

    .line 448
    iget-object v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderTextView:Landroid/widget/TextView;

    const v2, 0x7f0a0037

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 449
    iget-object v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderUpdateTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 450
    iget-object v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 451
    iget-object v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 452
    iput v3, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderState:I

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    if-gez v0, :cond_2

    iget v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderViewHeight:I

    neg-int v1, v1

    if-le v0, v1, :cond_2

    .line 454
    iget-object v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 455
    iget-object v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 457
    iget-object v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderTextView:Landroid/widget/TextView;

    const v2, 0x7f0a0035

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 458
    const/4 v1, 0x2

    iput v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderState:I

    goto :goto_0

    .line 459
    :cond_2
    iget v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderViewHeight:I

    neg-int v1, v1

    if-ne v0, v1, :cond_0

    .line 460
    iget-object v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mOnHeaderStateListener:Lcom/shishicai/app/ui/PullToRefreshView$OnHeaderStateListener;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mPullState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 461
    const/4 v1, -0x1

    iput v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mPullState:I

    .line 462
    iget-object v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mOnHeaderStateListener:Lcom/shishicai/app/ui/PullToRefreshView$OnHeaderStateListener;

    iget v2, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mPullState:I

    invoke-interface {v1, v2}, Lcom/shishicai/app/ui/PullToRefreshView$OnHeaderStateListener;->onHeaderState(I)V

    goto :goto_0
.end method

.method private headerRefreshing()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 526
    const/4 v0, 0x4

    iput v0, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderState:I

    .line 527
    invoke-direct {p0, v2}, Lcom/shishicai/app/ui/PullToRefreshView;->setHeaderTopMargin(I)V

    .line 528
    iget-object v0, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 529
    iget-object v0, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 530
    iget-object v0, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 531
    iget-object v0, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 532
    iget-object v0, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderTextView:Landroid/widget/TextView;

    const v1, 0x7f0a0036

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 533
    iget-object v0, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mOnHeaderRefreshListener:Lcom/shishicai/app/ui/PullToRefreshView$OnHeaderRefreshListener;

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mOnHeaderRefreshListener:Lcom/shishicai/app/ui/PullToRefreshView$OnHeaderRefreshListener;

    invoke-interface {v0, p0}, Lcom/shishicai/app/ui/PullToRefreshView$OnHeaderRefreshListener;->onHeaderRefresh(Lcom/shishicai/app/ui/PullToRefreshView;)V

    .line 536
    :cond_0
    return-void
.end method

.method private init()V
    .locals 14

    .prologue
    const-wide/16 v12, 0xfa

    const/4 v1, 0x0

    const/high16 v2, -0x3ccc0000    # -180.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 154
    new-instance v0, Landroid/view/animation/RotateAnimation;

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    .line 157
    iget-object v0, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 158
    iget-object v0, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v12, v13}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 159
    iget-object v0, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 160
    new-instance v5, Landroid/view/animation/RotateAnimation;

    move v6, v2

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    move v11, v4

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v5, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mReverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    .line 163
    iget-object v0, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mReverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 164
    iget-object v0, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mReverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v12, v13}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 165
    iget-object v0, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mReverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 167
    invoke-virtual {p0}, Lcom/shishicai/app/ui/PullToRefreshView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mInflater:Landroid/view/LayoutInflater;

    .line 168
    invoke-virtual {p0, v3}, Lcom/shishicai/app/ui/PullToRefreshView;->setOrientation(I)V

    .line 169
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/shishicai/app/ui/PullToRefreshView;->setBackgroundColor(I)V

    .line 171
    invoke-direct {p0}, Lcom/shishicai/app/ui/PullToRefreshView;->addHeaderView()V

    .line 172
    return-void
.end method

.method private initContentAdapterView()V
    .locals 5

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/shishicai/app/ui/PullToRefreshView;->getChildCount()I

    move-result v0

    .line 240
    .local v0, "count":I
    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    .line 241
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "this layout must contain 3 child views,and AdapterView or ScrollView must in the second position!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 244
    :cond_0
    const/4 v2, 0x0

    .line 245
    .local v2, "view":Landroid/view/View;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_3

    .line 246
    invoke-virtual {p0, v1}, Lcom/shishicai/app/ui/PullToRefreshView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 247
    instance-of v3, v2, Landroid/widget/AdapterView;

    if-eqz v3, :cond_1

    move-object v3, v2

    .line 248
    check-cast v3, Landroid/widget/AdapterView;

    iput-object v3, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mAdapterView:Landroid/widget/AdapterView;

    .line 250
    :cond_1
    instance-of v3, v2, Landroid/widget/ScrollView;

    if-eqz v3, :cond_2

    move-object v3, v2

    .line 251
    check-cast v3, Landroid/widget/ScrollView;

    iput-object v3, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mScrollView:Landroid/widget/ScrollView;

    .line 245
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 254
    :cond_3
    iget-object v3, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mAdapterView:Landroid/widget/AdapterView;

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mScrollView:Landroid/widget/ScrollView;

    if-nez v3, :cond_4

    .line 255
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "must contain a AdapterView or ScrollView in this layout!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 258
    :cond_4
    return-void
.end method

.method private isRefreshViewScroll(I)Z
    .locals 9
    .param p1, "deltaY"    # I

    .prologue
    const/4 v7, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 378
    iget v6, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderState:I

    if-eq v6, v7, :cond_0

    iget v6, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mFooterState:I

    if-ne v6, v7, :cond_1

    .line 435
    :cond_0
    :goto_0
    return v4

    .line 382
    :cond_1
    iget-object v6, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mAdapterView:Landroid/widget/AdapterView;

    if-eqz v6, :cond_4

    .line 384
    if-lez p1, :cond_3

    .line 386
    iget-object v6, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v6, v4}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 387
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 391
    iget-object v6, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v6

    if-nez v6, :cond_2

    .line 392
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    if-nez v6, :cond_2

    .line 393
    iput v5, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mPullState:I

    move v4, v5

    .line 394
    goto :goto_0

    .line 396
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    .line 397
    .local v3, "top":I
    iget-object v6, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getPaddingTop()I

    move-result v2

    .line 398
    .local v2, "padding":I
    iget-object v6, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v6

    if-nez v6, :cond_4

    sub-int v6, v3, v2

    .line 399
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/16 v7, 0x14

    if-gt v6, v7, :cond_4

    .line 400
    iput v5, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mPullState:I

    move v4, v5

    .line 401
    goto :goto_0

    .line 404
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "padding":I
    .end local v3    # "top":I
    :cond_3
    if-gez p1, :cond_4

    .line 405
    iget-object v6, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mAdapterView:Landroid/widget/AdapterView;

    iget-object v7, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mAdapterView:Landroid/widget/AdapterView;

    .line 406
    invoke-virtual {v7}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .line 405
    invoke-virtual {v6, v7}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 407
    .local v1, "lastChild":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 413
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {p0}, Lcom/shishicai/app/ui/PullToRefreshView;->getHeight()I

    move-result v7

    if-gt v6, v7, :cond_4

    iget-object v6, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mAdapterView:Landroid/widget/AdapterView;

    .line 414
    invoke-virtual {v6}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v6

    iget-object v7, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mAdapterView:Landroid/widget/AdapterView;

    .line 415
    invoke-virtual {v7}, Landroid/widget/AdapterView;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_4

    .line 416
    iput v4, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mPullState:I

    move v4, v5

    .line 417
    goto :goto_0

    .line 422
    .end local v1    # "lastChild":Landroid/view/View;
    :cond_4
    iget-object v6, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v6, :cond_0

    .line 424
    iget-object v6, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v6, v4}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 425
    .restart local v0    # "child":Landroid/view/View;
    if-lez p1, :cond_5

    iget-object v6, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v6}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v6

    if-nez v6, :cond_5

    .line 426
    iput v5, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mPullState:I

    move v4, v5

    .line 427
    goto/16 :goto_0

    .line 428
    :cond_5
    if-gez p1, :cond_0

    .line 429
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/shishicai/app/ui/PullToRefreshView;->getHeight()I

    move-result v7

    iget-object v8, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mScrollView:Landroid/widget/ScrollView;

    .line 430
    invoke-virtual {v8}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v8

    add-int/2addr v7, v8

    if-gt v6, v7, :cond_0

    .line 431
    iput v4, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mPullState:I

    move v4, v5

    .line 432
    goto/16 :goto_0
.end method

.method private measureView(Landroid/view/View;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 261
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 262
    .local v3, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    .line 263
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 267
    .restart local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v6, v6, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 268
    .local v1, "childWidthSpec":I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 270
    .local v2, "lpHeight":I
    if-lez v2, :cond_1

    .line 271
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 277
    .local v0, "childHeightSpec":I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 278
    return-void

    .line 274
    .end local v0    # "childHeightSpec":I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "childHeightSpec":I
    goto :goto_0
.end method

.method private setHeaderTopMargin(I)V
    .locals 2
    .param p1, "topMargin"    # I

    .prologue
    .line 570
    iget-object v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 571
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 572
    iget-object v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 573
    invoke-virtual {p0}, Lcom/shishicai/app/ui/PullToRefreshView;->invalidate()V

    .line 574
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 227
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 229
    invoke-direct {p0}, Lcom/shishicai/app/ui/PullToRefreshView;->addFooterView()V

    .line 230
    invoke-direct {p0}, Lcom/shishicai/app/ui/PullToRefreshView;->initContentAdapterView()V

    .line 231
    return-void
.end method

.method public onFooterRefreshComplete()V
    .locals 2

    .prologue
    .line 609
    iget v0, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderViewHeight:I

    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/shishicai/app/ui/PullToRefreshView;->setHeaderTopMargin(I)V

    .line 610
    iget-object v0, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mFooterImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 611
    iget-object v0, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mFooterImageView:Landroid/widget/ImageView;

    const v1, 0x7f02008b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 612
    iget-object v0, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mFooterTextView:Landroid/widget/TextView;

    const v1, 0x7f0a0032

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 613
    iget-object v0, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mFooterProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 614
    iget-object v0, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderUpdateTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/shishicai/app/utils/DateUtil;->getCurrentTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 615
    const/4 v0, 0x2

    iput v0, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mFooterState:I

    .line 616
    return-void
.end method

.method public onHeaderRefreshComplete()V
    .locals 2

    .prologue
    .line 582
    iget v0, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderViewHeight:I

    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/shishicai/app/ui/PullToRefreshView;->setHeaderTopMargin(I)V

    .line 583
    iget-object v0, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 584
    iget-object v0, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderImageView:Landroid/widget/ImageView;

    const v1, 0x7f02008a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 585
    iget-object v0, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderTextView:Landroid/widget/TextView;

    const v1, 0x7f0a0035

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 586
    iget-object v0, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 587
    const/4 v0, 0x2

    iput v0, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderState:I

    .line 588
    const/4 v0, -0x1

    iput v0, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mPullState:I

    .line 589
    iget-object v0, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mOnHeaderStateListener:Lcom/shishicai/app/ui/PullToRefreshView$OnHeaderStateListener;

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mOnHeaderStateListener:Lcom/shishicai/app/ui/PullToRefreshView$OnHeaderStateListener;

    iget v1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mPullState:I

    invoke-interface {v0, v1}, Lcom/shishicai/app/ui/PullToRefreshView$OnHeaderStateListener;->onHeaderState(I)V

    .line 592
    :cond_0
    return-void
.end method

.method public onHeaderRefreshComplete(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "lastUpdated"    # Ljava/lang/CharSequence;

    .prologue
    .line 601
    invoke-virtual {p0, p1}, Lcom/shishicai/app/ui/PullToRefreshView;->setLastUpdated(Ljava/lang/CharSequence;)V

    .line 602
    invoke-virtual {p0}, Lcom/shishicai/app/ui/PullToRefreshView;->onHeaderRefreshComplete()V

    .line 603
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 282
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v2, v4

    .line 283
    .local v2, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 309
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    :cond_1
    :goto_1
    return v3

    .line 286
    :pswitch_1
    iput v2, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mLastMotionY:I

    goto :goto_0

    .line 290
    :pswitch_2
    iget v4, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mLastMotionY:I

    sub-int v1, v2, v4

    .line 291
    .local v1, "deltaY":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 292
    .local v0, "delta":I
    const/16 v4, 0x14

    if-lt v0, v4, :cond_0

    .line 295
    invoke-direct {p0, v1}, Lcom/shishicai/app/ui/PullToRefreshView;->isRefreshViewScroll(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 296
    iget-object v4, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mOnHeaderStateListener:Lcom/shishicai/app/ui/PullToRefreshView$OnHeaderStateListener;

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mPullState:I

    if-ne v4, v3, :cond_1

    .line 297
    iget-object v4, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mOnHeaderStateListener:Lcom/shishicai/app/ui/PullToRefreshView$OnHeaderStateListener;

    iget v5, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mPullState:I

    invoke-interface {v4, v5}, Lcom/shishicai/app/ui/PullToRefreshView$OnHeaderStateListener;->onHeaderState(I)V

    goto :goto_1

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onRefreshComplete()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 620
    iget v0, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderState:I

    if-ne v0, v1, :cond_0

    .line 621
    invoke-virtual {p0}, Lcom/shishicai/app/ui/PullToRefreshView;->onHeaderRefreshComplete()V

    .line 623
    :cond_0
    iget v0, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mFooterState:I

    if-ne v0, v1, :cond_1

    .line 624
    invoke-virtual {p0}, Lcom/shishicai/app/ui/PullToRefreshView;->onFooterRefreshComplete()V

    .line 626
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 318
    iget-boolean v4, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mLock:Z

    if-eqz v4, :cond_0

    .line 367
    :goto_0
    return v3

    .line 321
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v2, v4

    .line 322
    .local v2, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 367
    :cond_1
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0

    .line 328
    :pswitch_1
    iget v4, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mLastMotionY:I

    sub-int v0, v2, v4

    .line 329
    .local v0, "deltaY":I
    iget v4, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mPullState:I

    if-ne v4, v3, :cond_3

    .line 332
    invoke-direct {p0, v0}, Lcom/shishicai/app/ui/PullToRefreshView;->headerPrepareToRefresh(I)V

    .line 338
    :cond_2
    :goto_2
    iput v2, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mLastMotionY:I

    goto :goto_1

    .line 334
    :cond_3
    iget v3, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mPullState:I

    if-nez v3, :cond_2

    .line 336
    invoke-direct {p0, v0}, Lcom/shishicai/app/ui/PullToRefreshView;->footerPrepareToRefresh(I)V

    goto :goto_2

    .line 342
    .end local v0    # "deltaY":I
    :pswitch_2
    invoke-direct {p0}, Lcom/shishicai/app/ui/PullToRefreshView;->getHeaderTopMargin()I

    move-result v1

    .line 343
    .local v1, "topMargin":I
    iget v4, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mPullState:I

    if-ne v4, v3, :cond_6

    .line 344
    if-ltz v1, :cond_4

    .line 346
    invoke-direct {p0}, Lcom/shishicai/app/ui/PullToRefreshView;->headerRefreshing()V

    goto :goto_1

    .line 349
    :cond_4
    iget v3, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderViewHeight:I

    neg-int v3, v3

    if-lt v1, v3, :cond_5

    iget-object v3, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mOnHeaderStateListener:Lcom/shishicai/app/ui/PullToRefreshView$OnHeaderStateListener;

    if-eqz v3, :cond_5

    .line 350
    const/4 v3, -0x1

    iput v3, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mPullState:I

    .line 351
    iget-object v3, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mOnHeaderStateListener:Lcom/shishicai/app/ui/PullToRefreshView$OnHeaderStateListener;

    iget v4, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mPullState:I

    invoke-interface {v3, v4}, Lcom/shishicai/app/ui/PullToRefreshView$OnHeaderStateListener;->onHeaderState(I)V

    .line 353
    :cond_5
    iget v3, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderViewHeight:I

    neg-int v3, v3

    invoke-direct {p0, v3}, Lcom/shishicai/app/ui/PullToRefreshView;->setHeaderTopMargin(I)V

    goto :goto_1

    .line 355
    :cond_6
    iget v3, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mPullState:I

    if-nez v3, :cond_1

    .line 356
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderViewHeight:I

    iget v5, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mFooterViewHeight:I

    add-int/2addr v4, v5

    if-lt v3, v4, :cond_7

    .line 359
    invoke-direct {p0}, Lcom/shishicai/app/ui/PullToRefreshView;->footerRefreshing()V

    goto :goto_1

    .line 362
    :cond_7
    iget v3, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderViewHeight:I

    neg-int v3, v3

    invoke-direct {p0, v3}, Lcom/shishicai/app/ui/PullToRefreshView;->setHeaderTopMargin(I)V

    goto :goto_1

    .line 322
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setFooterGone()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mFooterView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/shishicai/app/ui/PullToRefreshView;->removeView(Landroid/view/View;)V

    .line 199
    iget-object v0, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mFooterView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 200
    return-void
.end method

.method public setLastUpdated(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "lastUpdated"    # Ljava/lang/CharSequence;

    .prologue
    .line 635
    if-eqz p1, :cond_0

    .line 636
    iget-object v0, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderUpdateTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 637
    iget-object v0, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderUpdateTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 641
    :goto_0
    return-void

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mHeaderUpdateTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOnFooterRefreshListener(Lcom/shishicai/app/ui/PullToRefreshView$OnFooterRefreshListener;)V
    .locals 0
    .param p1, "footerRefreshListener"    # Lcom/shishicai/app/ui/PullToRefreshView$OnFooterRefreshListener;

    .prologue
    .line 668
    iput-object p1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mOnFooterRefreshListener:Lcom/shishicai/app/ui/PullToRefreshView$OnFooterRefreshListener;

    .line 669
    return-void
.end method

.method public setOnHeaderRefreshListener(Lcom/shishicai/app/ui/PullToRefreshView$OnHeaderRefreshListener;)V
    .locals 0
    .param p1, "headerRefreshListener"    # Lcom/shishicai/app/ui/PullToRefreshView$OnHeaderRefreshListener;

    .prologue
    .line 663
    iput-object p1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mOnHeaderRefreshListener:Lcom/shishicai/app/ui/PullToRefreshView$OnHeaderRefreshListener;

    .line 664
    return-void
.end method

.method public setOnHeaderStateListener(Lcom/shishicai/app/ui/PullToRefreshView$OnHeaderStateListener;)V
    .locals 0
    .param p1, "mOnHeaderStateListener"    # Lcom/shishicai/app/ui/PullToRefreshView$OnHeaderStateListener;

    .prologue
    .line 693
    iput-object p1, p0, Lcom/shishicai/app/ui/PullToRefreshView;->mOnHeaderStateListener:Lcom/shishicai/app/ui/PullToRefreshView$OnHeaderStateListener;

    .line 694
    return-void
.end method
