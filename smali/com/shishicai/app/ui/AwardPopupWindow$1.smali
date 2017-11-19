.class Lcom/shishicai/app/ui/AwardPopupWindow$1;
.super Ljava/lang/Object;
.source "AwardPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/ui/AwardPopupWindow;-><init>(Landroid/app/Activity;Landroid/view/View$OnClickListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/ui/AwardPopupWindow;

.field final synthetic val$mMenuView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/shishicai/app/ui/AwardPopupWindow;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/ui/AwardPopupWindow;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/shishicai/app/ui/AwardPopupWindow$1;->this$0:Lcom/shishicai/app/ui/AwardPopupWindow;

    iput-object p2, p0, Lcom/shishicai/app/ui/AwardPopupWindow$1;->val$mMenuView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const v6, 0x7f09005f

    const/4 v5, 0x1

    .line 70
    iget-object v4, p0, Lcom/shishicai/app/ui/AwardPopupWindow$1;->val$mMenuView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v0

    .line 71
    .local v0, "height":I
    iget-object v4, p0, Lcom/shishicai/app/ui/AwardPopupWindow$1;->val$mMenuView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v1

    .line 72
    .local v1, "right":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 73
    .local v3, "y":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 74
    .local v2, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v5, :cond_1

    .line 75
    if-gt v3, v0, :cond_0

    if-ge v2, v1, :cond_1

    .line 76
    :cond_0
    iget-object v4, p0, Lcom/shishicai/app/ui/AwardPopupWindow$1;->this$0:Lcom/shishicai/app/ui/AwardPopupWindow;

    invoke-virtual {v4}, Lcom/shishicai/app/ui/AwardPopupWindow;->dismiss()V

    .line 79
    :cond_1
    return v5
.end method
