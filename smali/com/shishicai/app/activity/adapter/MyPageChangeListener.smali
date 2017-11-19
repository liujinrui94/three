.class public Lcom/shishicai/app/activity/adapter/MyPageChangeListener;
.super Ljava/lang/Object;
.source "MyPageChangeListener.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field private currentItem:I

.field private dots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private oldPosition:I


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 0
    .param p2, "currentItem"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "dots":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ImageView;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/shishicai/app/activity/adapter/MyPageChangeListener;->dots:Ljava/util/List;

    .line 23
    iput p2, p0, Lcom/shishicai/app/activity/adapter/MyPageChangeListener;->currentItem:I

    .line 24
    return-void
.end method


# virtual methods
.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/shishicai/app/activity/adapter/MyPageChangeListener;->currentItem:I

    return v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 42
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 46
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/shishicai/app/activity/adapter/MyPageChangeListener;->currentItem:I

    .line 33
    iget-object v0, p0, Lcom/shishicai/app/activity/adapter/MyPageChangeListener;->dots:Ljava/util/List;

    iget v1, p0, Lcom/shishicai/app/activity/adapter/MyPageChangeListener;->oldPosition:I

    iget-object v2, p0, Lcom/shishicai/app/activity/adapter/MyPageChangeListener;->dots:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020034

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 35
    iget-object v0, p0, Lcom/shishicai/app/activity/adapter/MyPageChangeListener;->dots:Ljava/util/List;

    iget-object v1, p0, Lcom/shishicai/app/activity/adapter/MyPageChangeListener;->dots:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020033

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 37
    iput p1, p0, Lcom/shishicai/app/activity/adapter/MyPageChangeListener;->oldPosition:I

    .line 38
    return-void
.end method
