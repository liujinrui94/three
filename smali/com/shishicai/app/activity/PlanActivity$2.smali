.class Lcom/shishicai/app/activity/PlanActivity$2;
.super Ljava/lang/Object;
.source "PlanActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/PlanActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/PlanActivity;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/PlanActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/PlanActivity;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/shishicai/app/activity/PlanActivity$2;->this$0:Lcom/shishicai/app/activity/PlanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 75
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/shishicai/app/activity/PlanActivity$2;->this$0:Lcom/shishicai/app/activity/PlanActivity;

    invoke-static {v0}, Lcom/shishicai/app/activity/PlanActivity;->access$200(Lcom/shishicai/app/activity/PlanActivity;)Lcom/shishicai/app/ui/LineEditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/shishicai/app/ui/LineEditText;->setCursorVisible(Z)V

    .line 78
    iget-object v0, p0, Lcom/shishicai/app/activity/PlanActivity$2;->this$0:Lcom/shishicai/app/activity/PlanActivity;

    invoke-static {v0}, Lcom/shishicai/app/activity/PlanActivity;->access$100(Lcom/shishicai/app/activity/PlanActivity;)V

    .line 80
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
