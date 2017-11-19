.class public Lcom/uuzuche/lib_zxing/activity/CaptureActivity;
.super Lcom/shishicai/app/utils/BaseActivity;
.source "CaptureActivity.java"


# instance fields
.field analyzeCallback:Lcom/uuzuche/lib_zxing/activity/CodeUtils$AnalyzeCallback;

.field private title:Landroid/widget/TextView;

.field private titleimgLeft:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/shishicai/app/utils/BaseActivity;-><init>()V

    .line 47
    new-instance v0, Lcom/uuzuche/lib_zxing/activity/CaptureActivity$2;

    invoke-direct {v0, p0}, Lcom/uuzuche/lib_zxing/activity/CaptureActivity$2;-><init>(Lcom/uuzuche/lib_zxing/activity/CaptureActivity;)V

    iput-object v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureActivity;->analyzeCallback:Lcom/uuzuche/lib_zxing/activity/CodeUtils$AnalyzeCallback;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/shishicai/app/utils/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v1, 0x7f03001e

    invoke-virtual {p0, v1}, Lcom/uuzuche/lib_zxing/activity/CaptureActivity;->setContentView(I)V

    .line 28
    const-string v1, "CaptureActivity"

    iput-object v1, p0, Lcom/uuzuche/lib_zxing/activity/CaptureActivity;->TAG:Ljava/lang/String;

    .line 29
    const v1, 0x7f0900f1

    invoke-virtual {p0, v1}, Lcom/uuzuche/lib_zxing/activity/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/uuzuche/lib_zxing/activity/CaptureActivity;->title:Landroid/widget/TextView;

    .line 30
    iget-object v1, p0, Lcom/uuzuche/lib_zxing/activity/CaptureActivity;->title:Landroid/widget/TextView;

    const-string v2, "\u4e8c\u7ef4\u7801\u626b\u63cf"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    const v1, 0x7f0900f0

    invoke-virtual {p0, v1}, Lcom/uuzuche/lib_zxing/activity/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/uuzuche/lib_zxing/activity/CaptureActivity;->titleimgLeft:Landroid/widget/ImageView;

    .line 32
    iget-object v1, p0, Lcom/uuzuche/lib_zxing/activity/CaptureActivity;->titleimgLeft:Landroid/widget/ImageView;

    const v2, 0x7f020110

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 33
    new-instance v0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;

    invoke-direct {v0}, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;-><init>()V

    .line 34
    .local v0, "captureFragment":Lcom/uuzuche/lib_zxing/activity/CaptureFragment;
    iget-object v1, p0, Lcom/uuzuche/lib_zxing/activity/CaptureActivity;->analyzeCallback:Lcom/uuzuche/lib_zxing/activity/CodeUtils$AnalyzeCallback;

    invoke-virtual {v0, v1}, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->setAnalyzeCallback(Lcom/uuzuche/lib_zxing/activity/CodeUtils$AnalyzeCallback;)V

    .line 35
    invoke-virtual {p0}, Lcom/uuzuche/lib_zxing/activity/CaptureActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f090077

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 36
    iget-object v1, p0, Lcom/uuzuche/lib_zxing/activity/CaptureActivity;->titleimgLeft:Landroid/widget/ImageView;

    new-instance v2, Lcom/uuzuche/lib_zxing/activity/CaptureActivity$1;

    invoke-direct {v2, p0}, Lcom/uuzuche/lib_zxing/activity/CaptureActivity$1;-><init>(Lcom/uuzuche/lib_zxing/activity/CaptureActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    return-void
.end method
