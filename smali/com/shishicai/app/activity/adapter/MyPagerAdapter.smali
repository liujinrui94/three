.class public Lcom/shishicai/app/activity/adapter/MyPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "MyPagerAdapter.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private adLink:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private adText:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private imgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, "imgList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p3, "adLink":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "adText":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/shishicai/app/activity/adapter/MyPagerAdapter;->activity:Landroid/app/Activity;

    .line 30
    iput-object p2, p0, Lcom/shishicai/app/activity/adapter/MyPagerAdapter;->imgList:Ljava/util/List;

    .line 31
    iput-object p3, p0, Lcom/shishicai/app/activity/adapter/MyPagerAdapter;->adLink:Ljava/util/List;

    .line 32
    iput-object p4, p0, Lcom/shishicai/app/activity/adapter/MyPagerAdapter;->adText:Ljava/util/List;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/shishicai/app/activity/adapter/MyPagerAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/adapter/MyPagerAdapter;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/shishicai/app/activity/adapter/MyPagerAdapter;->adLink:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/shishicai/app/activity/adapter/MyPagerAdapter;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/adapter/MyPagerAdapter;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/shishicai/app/activity/adapter/MyPagerAdapter;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/shishicai/app/activity/adapter/MyPagerAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/adapter/MyPagerAdapter;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/shishicai/app/activity/adapter/MyPagerAdapter;->adText:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 69
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "arg0":Landroid/view/View;
    iget-object v0, p0, Lcom/shishicai/app/activity/adapter/MyPagerAdapter;->imgList:Ljava/util/List;

    iget-object v1, p0, Lcom/shishicai/app/activity/adapter/MyPagerAdapter;->imgList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int v1, p2, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 70
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 95
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/shishicai/app/activity/adapter/MyPagerAdapter;->imgList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # I

    .prologue
    .line 42
    iget-object v1, p0, Lcom/shishicai/app/activity/adapter/MyPagerAdapter;->imgList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 43
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "arg0":Landroid/view/View;
    iget-object v1, p0, Lcom/shishicai/app/activity/adapter/MyPagerAdapter;->imgList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 50
    :goto_0
    iget-object v1, p0, Lcom/shishicai/app/activity/adapter/MyPagerAdapter;->imgList:Ljava/util/List;

    iget-object v2, p0, Lcom/shishicai/app/activity/adapter/MyPagerAdapter;->imgList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int v2, p2, v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 51
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/shishicai/app/activity/adapter/MyPagerAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/shishicai/app/activity/adapter/MyPagerAdapter$1;-><init>(Lcom/shishicai/app/activity/adapter/MyPagerAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v1, p0, Lcom/shishicai/app/activity/adapter/MyPagerAdapter;->imgList:Ljava/util/List;

    iget-object v2, p0, Lcom/shishicai/app/activity/adapter/MyPagerAdapter;->imgList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int v2, p2, v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 45
    .end local v0    # "view":Landroid/view/View;
    .restart local p1    # "arg0":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/shishicai/app/activity/adapter/MyPagerAdapter;->imgList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/shishicai/app/activity/adapter/MyPagerAdapter;->imgList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 46
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "arg0":Landroid/view/View;
    iget-object v1, p0, Lcom/shishicai/app/activity/adapter/MyPagerAdapter;->imgList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 74
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "arg0"    # Landroid/os/Parcelable;
    .param p2, "arg1"    # Ljava/lang/ClassLoader;

    .prologue
    .line 80
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 90
    return-void
.end method
