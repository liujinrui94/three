.class Lcom/uuzuche/lib_zxing/activity/CaptureActivity$1;
.super Ljava/lang/Object;
.source "CaptureActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uuzuche/lib_zxing/activity/CaptureActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 36
    iput-object p1, p0, Lcom/uuzuche/lib_zxing/activity/CaptureActivity$1;->this$0:Lcom/uuzuche/lib_zxing/activity/CaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureActivity$1;->this$0:Lcom/uuzuche/lib_zxing/activity/CaptureActivity;

    invoke-virtual {v0}, Lcom/uuzuche/lib_zxing/activity/CaptureActivity;->finish()V

    .line 40
    return-void
.end method
