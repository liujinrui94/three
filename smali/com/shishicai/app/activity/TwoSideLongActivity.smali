.class public Lcom/shishicai/app/activity/TwoSideLongActivity;
.super Lcom/shishicai/app/utils/BaseActivity;
.source "TwoSideLongActivity.java"


# instance fields
.field private title:Landroid/widget/TextView;

.field private titleimgLeft:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/shishicai/app/utils/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/shishicai/app/utils/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v1, 0x7f030003

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/TwoSideLongActivity;->setContentView(I)V

    .line 24
    const-string v1, "TwoSideLongActivity"

    iput-object v1, p0, Lcom/shishicai/app/activity/TwoSideLongActivity;->TAG:Ljava/lang/String;

    .line 25
    const v1, 0x7f0900f1

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/TwoSideLongActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/shishicai/app/activity/TwoSideLongActivity;->title:Landroid/widget/TextView;

    .line 26
    iget-object v1, p0, Lcom/shishicai/app/activity/TwoSideLongActivity;->title:Landroid/widget/TextView;

    const-string v2, "\u4e24\u9762\u957f\u9f99"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    const v1, 0x7f0900f0

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/TwoSideLongActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/shishicai/app/activity/TwoSideLongActivity;->titleimgLeft:Landroid/widget/ImageView;

    .line 28
    iget-object v1, p0, Lcom/shishicai/app/activity/TwoSideLongActivity;->titleimgLeft:Landroid/widget/ImageView;

    const v2, 0x7f020110

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 29
    new-instance v0, Lcom/shishicai/app/fragment/TwoSideLong;

    invoke-direct {v0}, Lcom/shishicai/app/fragment/TwoSideLong;-><init>()V

    .line 30
    .local v0, "twoSideLong":Lcom/shishicai/app/fragment/TwoSideLong;
    invoke-virtual {p0}, Lcom/shishicai/app/activity/TwoSideLongActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f09001f

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 31
    iget-object v1, p0, Lcom/shishicai/app/activity/TwoSideLongActivity;->titleimgLeft:Landroid/widget/ImageView;

    new-instance v2, Lcom/shishicai/app/activity/TwoSideLongActivity$1;

    invoke-direct {v2, p0}, Lcom/shishicai/app/activity/TwoSideLongActivity$1;-><init>(Lcom/shishicai/app/activity/TwoSideLongActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    return-void
.end method
