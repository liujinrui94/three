.class Lcom/shishicai/app/activity/TwoStartActivity$1;
.super Ljava/lang/Object;
.source "TwoStartActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/TwoStartActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/TwoStartActivity;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/TwoStartActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/TwoStartActivity;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/shishicai/app/activity/TwoStartActivity$1;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/shishicai/app/activity/TwoStartActivity$1;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    invoke-virtual {v0}, Lcom/shishicai/app/activity/TwoStartActivity;->finish()V

    .line 57
    return-void
.end method
