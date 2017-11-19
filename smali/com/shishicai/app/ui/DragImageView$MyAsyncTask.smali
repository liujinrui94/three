.class Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;
.super Landroid/os/AsyncTask;
.source "DragImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/ui/DragImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private STEP:F

.field private bottom:I

.field private current_Height:I

.field private current_Width:I

.field private left:I

.field private right:I

.field private scale_WH:F

.field private screen_W:I

.field private step_H:F

.field private step_V:F

.field final synthetic this$0:Lcom/shishicai/app/ui/DragImageView;

.field private top:I


# direct methods
.method public constructor <init>(Lcom/shishicai/app/ui/DragImageView;III)V
    .locals 2
    .param p1, "this$0"    # Lcom/shishicai/app/ui/DragImageView;
    .param p2, "screen_W"    # I
    .param p3, "current_Width"    # I
    .param p4, "current_Height"    # I

    .prologue
    .line 384
    iput-object p1, p0, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->this$0:Lcom/shishicai/app/ui/DragImageView;

    .line 385
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 380
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->STEP:F

    .line 386
    iput p2, p0, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->screen_W:I

    .line 387
    iput p3, p0, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->current_Width:I

    .line 388
    iput p4, p0, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->current_Height:I

    .line 389
    int-to-float v0, p4

    int-to-float v1, p3

    div-float/2addr v0, v1

    iput v0, p0, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->scale_WH:F

    .line 390
    iget v0, p0, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->STEP:F

    iput v0, p0, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->step_H:F

    .line 391
    iget v0, p0, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->scale_WH:F

    iget v1, p0, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->STEP:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->step_V:F

    .line 392
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 365
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 397
    :goto_0
    iget v1, p0, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->current_Width:I

    iget v2, p0, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->screen_W:I

    if-gt v1, v2, :cond_0

    .line 399
    iget v1, p0, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->step_H:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->left:I

    .line 400
    iget v1, p0, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->top:I

    int-to-float v1, v1

    iget v2, p0, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->step_V:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->top:I

    .line 401
    iget v1, p0, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->right:I

    int-to-float v1, v1

    iget v2, p0, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->step_H:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->right:I

    .line 402
    iget v1, p0, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->bottom:I

    int-to-float v1, v1

    iget v2, p0, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->step_V:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->bottom:I

    .line 404
    iget v1, p0, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->current_Width:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    iget v3, p0, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->step_H:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->current_Width:I

    .line 406
    iget v1, p0, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->left:I

    iget-object v2, p0, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->this$0:Lcom/shishicai/app/ui/DragImageView;

    invoke-static {v2}, Lcom/shishicai/app/ui/DragImageView;->access$000(Lcom/shishicai/app/ui/DragImageView;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->left:I

    .line 407
    iget v1, p0, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->top:I

    iget-object v2, p0, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->this$0:Lcom/shishicai/app/ui/DragImageView;

    invoke-static {v2}, Lcom/shishicai/app/ui/DragImageView;->access$100(Lcom/shishicai/app/ui/DragImageView;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->top:I

    .line 408
    iget v1, p0, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->right:I

    iget-object v2, p0, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->this$0:Lcom/shishicai/app/ui/DragImageView;

    invoke-static {v2}, Lcom/shishicai/app/ui/DragImageView;->access$200(Lcom/shishicai/app/ui/DragImageView;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->right:I

    .line 409
    iget v1, p0, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->bottom:I

    iget-object v2, p0, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->this$0:Lcom/shishicai/app/ui/DragImageView;

    invoke-static {v2}, Lcom/shishicai/app/ui/DragImageView;->access$300(Lcom/shishicai/app/ui/DragImageView;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->bottom:I

    .line 410
    const-string v1, "DragImageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "top="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->top:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",bottom="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->bottom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",left="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->left:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",right="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->right:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    iget v3, p0, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->left:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->top:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->right:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->bottom:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 413
    const-wide/16 v2, 0xa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 419
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .param p1, "values"    # [Ljava/lang/Integer;

    .prologue
    .line 424
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 425
    iget-object v0, p0, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->this$0:Lcom/shishicai/app/ui/DragImageView;

    invoke-static {v0}, Lcom/shishicai/app/ui/DragImageView;->access$500(Lcom/shishicai/app/ui/DragImageView;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask$1;

    invoke-direct {v1, p0, p1}, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask$1;-><init>(Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;[Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 432
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 365
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public setLTRB(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 374
    iput p1, p0, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->left:I

    .line 375
    iput p2, p0, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->top:I

    .line 376
    iput p3, p0, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->right:I

    .line 377
    iput p4, p0, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->bottom:I

    .line 378
    return-void
.end method
