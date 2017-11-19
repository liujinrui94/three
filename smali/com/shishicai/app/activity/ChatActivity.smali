.class public Lcom/shishicai/app/activity/ChatActivity;
.super Lcom/shishicai/app/utils/BaseActivity;
.source "ChatActivity.java"


# instance fields
.field private title:Landroid/widget/TextView;

.field private titleimgLeft:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/shishicai/app/utils/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/shishicai/app/utils/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v1, 0x7f030003

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/ChatActivity;->setContentView(I)V

    .line 23
    const-string v1, "CaptureActivity"

    iput-object v1, p0, Lcom/shishicai/app/activity/ChatActivity;->TAG:Ljava/lang/String;

    .line 24
    const v1, 0x7f0900f1

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/shishicai/app/activity/ChatActivity;->title:Landroid/widget/TextView;

    .line 25
    iget-object v1, p0, Lcom/shishicai/app/activity/ChatActivity;->title:Landroid/widget/TextView;

    const-string v2, "\u5ba2\u670d"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    const v1, 0x7f0900f0

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/shishicai/app/activity/ChatActivity;->titleimgLeft:Landroid/widget/ImageView;

    .line 27
    iget-object v1, p0, Lcom/shishicai/app/activity/ChatActivity;->titleimgLeft:Landroid/widget/ImageView;

    const v2, 0x7f020110

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 28
    new-instance v0, Lcom/shishicai/app/fragment/Chat;

    invoke-direct {v0}, Lcom/shishicai/app/fragment/Chat;-><init>()V

    .line 29
    .local v0, "chat":Lcom/shishicai/app/fragment/Chat;
    invoke-virtual {p0}, Lcom/shishicai/app/activity/ChatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f09001f

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 30
    iget-object v1, p0, Lcom/shishicai/app/activity/ChatActivity;->titleimgLeft:Landroid/widget/ImageView;

    new-instance v2, Lcom/shishicai/app/activity/ChatActivity$1;

    invoke-direct {v2, p0}, Lcom/shishicai/app/activity/ChatActivity$1;-><init>(Lcom/shishicai/app/activity/ChatActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    return-void
.end method
