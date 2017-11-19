.class Lcom/shishicai/app/utils/UpdateManager$4;
.super Ljava/lang/Object;
.source "UpdateManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/utils/UpdateManager;->getUpdate(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/utils/UpdateManager;


# direct methods
.method constructor <init>(Lcom/shishicai/app/utils/UpdateManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/utils/UpdateManager;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/shishicai/app/utils/UpdateManager$4;->this$0:Lcom/shishicai/app/utils/UpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/shishicai/app/utils/UpdateManager$4;->this$0:Lcom/shishicai/app/utils/UpdateManager;

    iget-object v0, v0, Lcom/shishicai/app/utils/UpdateManager;->mUpdateDialog:Lcom/shishicai/app/ui/NiftyDialog;

    invoke-virtual {v0}, Lcom/shishicai/app/ui/NiftyDialog;->dismiss()V

    .line 163
    iget-object v0, p0, Lcom/shishicai/app/utils/UpdateManager$4;->this$0:Lcom/shishicai/app/utils/UpdateManager;

    iget-object v0, v0, Lcom/shishicai/app/utils/UpdateManager;->operationListener:Lcom/shishicai/app/ui/IDialogClick;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/shishicai/app/utils/UpdateManager$4;->this$0:Lcom/shishicai/app/utils/UpdateManager;

    iget-object v0, v0, Lcom/shishicai/app/utils/UpdateManager;->operationListener:Lcom/shishicai/app/ui/IDialogClick;

    invoke-interface {v0, p1}, Lcom/shishicai/app/ui/IDialogClick;->onRightClick(Landroid/view/View;)V

    .line 165
    :cond_0
    return-void
.end method
