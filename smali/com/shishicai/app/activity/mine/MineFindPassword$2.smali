.class Lcom/shishicai/app/activity/mine/MineFindPassword$2;
.super Ljava/lang/Object;
.source "MineFindPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/mine/MineFindPassword;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/mine/MineFindPassword;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/mine/MineFindPassword;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/mine/MineFindPassword;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineFindPassword$2;->this$0:Lcom/shishicai/app/activity/mine/MineFindPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineFindPassword$2;->this$0:Lcom/shishicai/app/activity/mine/MineFindPassword;

    invoke-virtual {v0}, Lcom/shishicai/app/activity/mine/MineFindPassword;->finish()V

    .line 68
    return-void
.end method
