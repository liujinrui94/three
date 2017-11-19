.class Lcom/shishicai/app/activity/ShowImgActivity$1;
.super Ljava/lang/Object;
.source "ShowImgActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/ShowImgActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/ShowImgActivity;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/ShowImgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/ShowImgActivity;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/shishicai/app/activity/ShowImgActivity$1;->this$0:Lcom/shishicai/app/activity/ShowImgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    .line 48
    iget-object v1, p0, Lcom/shishicai/app/activity/ShowImgActivity$1;->this$0:Lcom/shishicai/app/activity/ShowImgActivity;

    invoke-static {v1}, Lcom/shishicai/app/activity/ShowImgActivity;->access$000(Lcom/shishicai/app/activity/ShowImgActivity;)I

    move-result v1

    if-nez v1, :cond_0

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 51
    .local v0, "frame":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/shishicai/app/activity/ShowImgActivity$1;->this$0:Lcom/shishicai/app/activity/ShowImgActivity;

    invoke-virtual {v1}, Lcom/shishicai/app/activity/ShowImgActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 52
    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 53
    iget-object v1, p0, Lcom/shishicai/app/activity/ShowImgActivity$1;->this$0:Lcom/shishicai/app/activity/ShowImgActivity;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v2}, Lcom/shishicai/app/activity/ShowImgActivity;->access$002(Lcom/shishicai/app/activity/ShowImgActivity;I)I

    .line 54
    iget-object v1, p0, Lcom/shishicai/app/activity/ShowImgActivity$1;->this$0:Lcom/shishicai/app/activity/ShowImgActivity;

    invoke-static {v1}, Lcom/shishicai/app/activity/ShowImgActivity;->access$200(Lcom/shishicai/app/activity/ShowImgActivity;)Lcom/shishicai/app/ui/DragImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/shishicai/app/activity/ShowImgActivity$1;->this$0:Lcom/shishicai/app/activity/ShowImgActivity;

    invoke-static {v2}, Lcom/shishicai/app/activity/ShowImgActivity;->access$100(Lcom/shishicai/app/activity/ShowImgActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/shishicai/app/activity/ShowImgActivity$1;->this$0:Lcom/shishicai/app/activity/ShowImgActivity;

    invoke-static {v3}, Lcom/shishicai/app/activity/ShowImgActivity;->access$000(Lcom/shishicai/app/activity/ShowImgActivity;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/shishicai/app/ui/DragImageView;->setScreen_H(I)V

    .line 55
    iget-object v1, p0, Lcom/shishicai/app/activity/ShowImgActivity$1;->this$0:Lcom/shishicai/app/activity/ShowImgActivity;

    invoke-static {v1}, Lcom/shishicai/app/activity/ShowImgActivity;->access$200(Lcom/shishicai/app/activity/ShowImgActivity;)Lcom/shishicai/app/ui/DragImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/shishicai/app/activity/ShowImgActivity$1;->this$0:Lcom/shishicai/app/activity/ShowImgActivity;

    invoke-static {v2}, Lcom/shishicai/app/activity/ShowImgActivity;->access$300(Lcom/shishicai/app/activity/ShowImgActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/shishicai/app/ui/DragImageView;->setScreen_W(I)V

    .line 58
    .end local v0    # "frame":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method
