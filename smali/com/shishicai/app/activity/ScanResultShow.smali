.class public Lcom/shishicai/app/activity/ScanResultShow;
.super Lcom/shishicai/app/utils/Base2Activity;
.source "ScanResultShow.java"


# instance fields
.field private info:Ljava/lang/String;

.field private title:Landroid/widget/TextView;

.field private titleimgLeft:Landroid/widget/ImageView;

.field private tvScanInfo:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/shishicai/app/utils/Base2Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/shishicai/app/utils/Base2Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v1, 0x7f03006a

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/ScanResultShow;->setContentView(I)V

    .line 23
    const-string v1, "ScanResultShow"

    iput-object v1, p0, Lcom/shishicai/app/activity/ScanResultShow;->TAG:Ljava/lang/String;

    .line 24
    const v1, 0x7f0900f1

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/ScanResultShow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/shishicai/app/activity/ScanResultShow;->title:Landroid/widget/TextView;

    .line 25
    iget-object v1, p0, Lcom/shishicai/app/activity/ScanResultShow;->title:Landroid/widget/TextView;

    const-string v2, "\u626b\u63cf\u7ed3\u679c"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    const v1, 0x7f0900f0

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/ScanResultShow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/shishicai/app/activity/ScanResultShow;->titleimgLeft:Landroid/widget/ImageView;

    .line 27
    iget-object v1, p0, Lcom/shishicai/app/activity/ScanResultShow;->titleimgLeft:Landroid/widget/ImageView;

    const v2, 0x7f020110

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 28
    const v1, 0x7f09019a

    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/ScanResultShow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/shishicai/app/activity/ScanResultShow;->tvScanInfo:Landroid/widget/TextView;

    .line 29
    invoke-virtual {p0}, Lcom/shishicai/app/activity/ScanResultShow;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 30
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shishicai/app/activity/ScanResultShow;->info:Ljava/lang/String;

    .line 31
    iget-object v1, p0, Lcom/shishicai/app/activity/ScanResultShow;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "info="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/shishicai/app/activity/ScanResultShow;->info:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v1, p0, Lcom/shishicai/app/activity/ScanResultShow;->tvScanInfo:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/shishicai/app/activity/ScanResultShow;->info:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    return-void
.end method
