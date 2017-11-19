.class public Lcom/shishicai/app/activity/AboutActivity;
.super Lcom/shishicai/app/utils/Base2Activity;
.source "AboutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private content:Ljava/lang/String;

.field private contentTv:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;

.field private titleString:Ljava/lang/String;

.field private titleimgLeft:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/shishicai/app/utils/Base2Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 44
    :goto_0
    return-void

    .line 41
    :pswitch_0
    invoke-virtual {p0}, Lcom/shishicai/app/activity/AboutActivity;->finish()V

    goto :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x7f0900f0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/shishicai/app/utils/Base2Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const/high16 v1, 0x7f030000

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/AboutActivity;->setContentView(I)V

    .line 23
    const-string v1, "AboutActivity"

    iput-object v1, p0, Lcom/shishicai/app/activity/AboutActivity;->TAG:Ljava/lang/String;

    .line 24
    const v1, 0x7f0900f1

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/shishicai/app/activity/AboutActivity;->title:Landroid/widget/TextView;

    .line 25
    const v1, 0x7f0900f0

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/shishicai/app/activity/AboutActivity;->titleimgLeft:Landroid/widget/ImageView;

    .line 26
    iget-object v1, p0, Lcom/shishicai/app/activity/AboutActivity;->titleimgLeft:Landroid/widget/ImageView;

    const v2, 0x7f020110

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 27
    iget-object v1, p0, Lcom/shishicai/app/activity/AboutActivity;->titleimgLeft:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    const v1, 0x7f09000e

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/shishicai/app/activity/AboutActivity;->contentTv:Landroid/widget/TextView;

    .line 29
    invoke-virtual {p0}, Lcom/shishicai/app/activity/AboutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 30
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shishicai/app/activity/AboutActivity;->titleString:Ljava/lang/String;

    .line 31
    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shishicai/app/activity/AboutActivity;->content:Ljava/lang/String;

    .line 32
    iget-object v1, p0, Lcom/shishicai/app/activity/AboutActivity;->title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/shishicai/app/activity/AboutActivity;->titleString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v1, p0, Lcom/shishicai/app/activity/AboutActivity;->contentTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/shishicai/app/activity/AboutActivity;->content:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    return-void
.end method
