.class Lcom/shishicai/app/ui/NiftyDialog$1;
.super Ljava/lang/Object;
.source "NiftyDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/ui/NiftyDialog;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/ui/NiftyDialog;


# direct methods
.method constructor <init>(Lcom/shishicai/app/ui/NiftyDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/ui/NiftyDialog;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/shishicai/app/ui/NiftyDialog$1;->this$0:Lcom/shishicai/app/ui/NiftyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog$1;->this$0:Lcom/shishicai/app/ui/NiftyDialog;

    invoke-virtual {v0}, Lcom/shishicai/app/ui/NiftyDialog;->dismiss()V

    .line 77
    return-void
.end method
