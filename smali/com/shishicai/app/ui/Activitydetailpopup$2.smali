.class Lcom/shishicai/app/ui/Activitydetailpopup$2;
.super Ljava/lang/Object;
.source "Activitydetailpopup.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/ui/Activitydetailpopup;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/ui/Activitydetailpopup;


# direct methods
.method constructor <init>(Lcom/shishicai/app/ui/Activitydetailpopup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/ui/Activitydetailpopup;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/shishicai/app/ui/Activitydetailpopup$2;->this$0:Lcom/shishicai/app/ui/Activitydetailpopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 68
    iget-object v2, p0, Lcom/shishicai/app/ui/Activitydetailpopup$2;->this$0:Lcom/shishicai/app/ui/Activitydetailpopup;

    invoke-static {v2}, Lcom/shishicai/app/ui/Activitydetailpopup;->access$000(Lcom/shishicai/app/ui/Activitydetailpopup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090095

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 69
    .local v0, "height":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 70
    .local v1, "y":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 71
    if-ge v1, v0, :cond_0

    .line 72
    iget-object v2, p0, Lcom/shishicai/app/ui/Activitydetailpopup$2;->this$0:Lcom/shishicai/app/ui/Activitydetailpopup;

    invoke-virtual {v2}, Lcom/shishicai/app/ui/Activitydetailpopup;->dismiss()V

    .line 75
    :cond_0
    return v4
.end method
