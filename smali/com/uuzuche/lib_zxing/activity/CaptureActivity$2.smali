.class Lcom/uuzuche/lib_zxing/activity/CaptureActivity$2;
.super Ljava/lang/Object;
.source "CaptureActivity.java"

# interfaces
.implements Lcom/uuzuche/lib_zxing/activity/CodeUtils$AnalyzeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uuzuche/lib_zxing/activity/CaptureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uuzuche/lib_zxing/activity/CaptureActivity;


# direct methods
.method constructor <init>(Lcom/uuzuche/lib_zxing/activity/CaptureActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/uuzuche/lib_zxing/activity/CaptureActivity;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/uuzuche/lib_zxing/activity/CaptureActivity$2;->this$0:Lcom/uuzuche/lib_zxing/activity/CaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnalyzeFailed()V
    .locals 4

    .prologue
    .line 59
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/uuzuche/lib_zxing/activity/CaptureActivity$2;->this$0:Lcom/uuzuche/lib_zxing/activity/CaptureActivity;

    const-class v3, Lcom/shishicai/app/activity/ScanResultShow;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 61
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "result"

    const-string v3, "\u626b\u63cf\u5931\u8d25"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 63
    iget-object v2, p0, Lcom/uuzuche/lib_zxing/activity/CaptureActivity$2;->this$0:Lcom/uuzuche/lib_zxing/activity/CaptureActivity;

    invoke-virtual {v2, v1}, Lcom/uuzuche/lib_zxing/activity/CaptureActivity;->startActivity(Landroid/content/Intent;)V

    .line 64
    iget-object v2, p0, Lcom/uuzuche/lib_zxing/activity/CaptureActivity$2;->this$0:Lcom/uuzuche/lib_zxing/activity/CaptureActivity;

    invoke-virtual {v2}, Lcom/uuzuche/lib_zxing/activity/CaptureActivity;->finish()V

    .line 65
    return-void
.end method

.method public onAnalyzeSuccess(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 4
    .param p1, "mBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    .line 50
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/uuzuche/lib_zxing/activity/CaptureActivity$2;->this$0:Lcom/uuzuche/lib_zxing/activity/CaptureActivity;

    const-class v3, Lcom/shishicai/app/activity/ScanResultShow;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 52
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "result"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 54
    iget-object v2, p0, Lcom/uuzuche/lib_zxing/activity/CaptureActivity$2;->this$0:Lcom/uuzuche/lib_zxing/activity/CaptureActivity;

    invoke-virtual {v2, v1}, Lcom/uuzuche/lib_zxing/activity/CaptureActivity;->startActivity(Landroid/content/Intent;)V

    .line 55
    return-void
.end method
