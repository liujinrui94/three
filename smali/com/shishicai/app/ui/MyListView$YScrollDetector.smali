.class Lcom/shishicai/app/ui/MyListView$YScrollDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MyListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/ui/MyListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "YScrollDetector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/ui/MyListView;


# direct methods
.method constructor <init>(Lcom/shishicai/app/ui/MyListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/ui/MyListView;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/shishicai/app/ui/MyListView$YScrollDetector;->this$0:Lcom/shishicai/app/ui/MyListView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 32
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 33
    const/4 v0, 0x1

    .line 35
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
