.class Lcom/shishicai/app/activity/TwoSideLongActivity$1;
.super Ljava/lang/Object;
.source "TwoSideLongActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/TwoSideLongActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/TwoSideLongActivity;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/TwoSideLongActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/TwoSideLongActivity;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/shishicai/app/activity/TwoSideLongActivity$1;->this$0:Lcom/shishicai/app/activity/TwoSideLongActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/shishicai/app/activity/TwoSideLongActivity$1;->this$0:Lcom/shishicai/app/activity/TwoSideLongActivity;

    invoke-virtual {v0}, Lcom/shishicai/app/activity/TwoSideLongActivity;->finish()V

    .line 35
    return-void
.end method
