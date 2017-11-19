.class public Lcom/shishicai/app/ui/DragImageView;
.super Landroid/widget/ImageView;
.source "DragImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;,
        Lcom/shishicai/app/ui/DragImageView$MODE;
    }
.end annotation


# instance fields
.field private MAX_H:I

.field private MAX_W:I

.field private MIN_H:I

.field private MIN_W:I

.field private afterLenght:F

.field private beforeLenght:F

.field private bitmap_H:I

.field private bitmap_W:I

.field private current_Bottom:I

.field private current_Left:I

.field private current_Right:I

.field private current_Top:I

.field private current_x:I

.field private current_y:I

.field private isControl_H:Z

.field private isControl_V:Z

.field private isScaleAnim:Z

.field private mActivity:Landroid/app/Activity;

.field private mode:Lcom/shishicai/app/ui/DragImageView$MODE;

.field private myAsyncTask:Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;

.field private scaleAnimation:Landroid/view/animation/ScaleAnimation;

.field private scale_temp:F

.field private screen_H:I

.field private screen_W:I

.field private start_Bottom:I

.field private start_Left:I

.field private start_Right:I

.field private start_Top:I

.field private start_x:I

.field private start_y:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 72
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 38
    iput v0, p0, Lcom/shishicai/app/ui/DragImageView;->start_Top:I

    iput v0, p0, Lcom/shishicai/app/ui/DragImageView;->start_Right:I

    iput v0, p0, Lcom/shishicai/app/ui/DragImageView;->start_Bottom:I

    iput v0, p0, Lcom/shishicai/app/ui/DragImageView;->start_Left:I

    .line 58
    sget-object v0, Lcom/shishicai/app/ui/DragImageView$MODE;->NONE:Lcom/shishicai/app/ui/DragImageView$MODE;

    iput-object v0, p0, Lcom/shishicai/app/ui/DragImageView;->mode:Lcom/shishicai/app/ui/DragImageView$MODE;

    .line 60
    iput-boolean v1, p0, Lcom/shishicai/app/ui/DragImageView;->isControl_V:Z

    .line 62
    iput-boolean v1, p0, Lcom/shishicai/app/ui/DragImageView;->isControl_H:Z

    .line 66
    iput-boolean v1, p0, Lcom/shishicai/app/ui/DragImageView;->isScaleAnim:Z

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 90
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput v0, p0, Lcom/shishicai/app/ui/DragImageView;->start_Top:I

    iput v0, p0, Lcom/shishicai/app/ui/DragImageView;->start_Right:I

    iput v0, p0, Lcom/shishicai/app/ui/DragImageView;->start_Bottom:I

    iput v0, p0, Lcom/shishicai/app/ui/DragImageView;->start_Left:I

    .line 58
    sget-object v0, Lcom/shishicai/app/ui/DragImageView$MODE;->NONE:Lcom/shishicai/app/ui/DragImageView$MODE;

    iput-object v0, p0, Lcom/shishicai/app/ui/DragImageView;->mode:Lcom/shishicai/app/ui/DragImageView$MODE;

    .line 60
    iput-boolean v1, p0, Lcom/shishicai/app/ui/DragImageView;->isControl_V:Z

    .line 62
    iput-boolean v1, p0, Lcom/shishicai/app/ui/DragImageView;->isControl_H:Z

    .line 66
    iput-boolean v1, p0, Lcom/shishicai/app/ui/DragImageView;->isScaleAnim:Z

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/shishicai/app/ui/DragImageView;)I
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/ui/DragImageView;

    .prologue
    .line 26
    iget v0, p0, Lcom/shishicai/app/ui/DragImageView;->start_Left:I

    return v0
.end method

.method static synthetic access$100(Lcom/shishicai/app/ui/DragImageView;)I
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/ui/DragImageView;

    .prologue
    .line 26
    iget v0, p0, Lcom/shishicai/app/ui/DragImageView;->start_Top:I

    return v0
.end method

.method static synthetic access$200(Lcom/shishicai/app/ui/DragImageView;)I
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/ui/DragImageView;

    .prologue
    .line 26
    iget v0, p0, Lcom/shishicai/app/ui/DragImageView;->start_Right:I

    return v0
.end method

.method static synthetic access$300(Lcom/shishicai/app/ui/DragImageView;)I
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/ui/DragImageView;

    .prologue
    .line 26
    iget v0, p0, Lcom/shishicai/app/ui/DragImageView;->start_Bottom:I

    return v0
.end method

.method static synthetic access$400(Lcom/shishicai/app/ui/DragImageView;IIII)Z
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/ui/DragImageView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shishicai/app/ui/DragImageView;->setFrame(IIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/shishicai/app/ui/DragImageView;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/ui/DragImageView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/shishicai/app/ui/DragImageView;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private setPosition(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 257
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shishicai/app/ui/DragImageView;->layout(IIII)V

    .line 258
    return-void
.end method


# virtual methods
.method public doScaleAnim()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 354
    new-instance v0, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;

    iget v1, p0, Lcom/shishicai/app/ui/DragImageView;->screen_W:I

    invoke-virtual {p0}, Lcom/shishicai/app/ui/DragImageView;->getWidth()I

    move-result v2

    .line 355
    invoke-virtual {p0}, Lcom/shishicai/app/ui/DragImageView;->getHeight()I

    move-result v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;-><init>(Lcom/shishicai/app/ui/DragImageView;III)V

    iput-object v0, p0, Lcom/shishicai/app/ui/DragImageView;->myAsyncTask:Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;

    .line 356
    iget-object v0, p0, Lcom/shishicai/app/ui/DragImageView;->myAsyncTask:Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;

    invoke-virtual {p0}, Lcom/shishicai/app/ui/DragImageView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/shishicai/app/ui/DragImageView;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/shishicai/app/ui/DragImageView;->getRight()I

    move-result v3

    .line 357
    invoke-virtual {p0}, Lcom/shishicai/app/ui/DragImageView;->getBottom()I

    move-result v4

    .line 356
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->setLTRB(IIII)V

    .line 358
    iget-object v0, p0, Lcom/shishicai/app/ui/DragImageView;->myAsyncTask:Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/shishicai/app/ui/DragImageView$MyAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 359
    iput-boolean v5, p0, Lcom/shishicai/app/ui/DragImageView;->isScaleAnim:Z

    .line 360
    return-void
.end method

.method getDistance(Landroid/view/MotionEvent;)F
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 249
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    sub-float v0, v4, v5

    .line 250
    .local v0, "x":F
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    sub-float v1, v4, v5

    .line 251
    .local v1, "y":F
    mul-float v4, v0, v0

    mul-float v5, v1, v1

    add-float/2addr v4, v5

    float-to-double v2, v4

    .line 252
    .local v2, "xy":D
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    return v4
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 114
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 115
    iget v0, p0, Lcom/shishicai/app/ui/DragImageView;->start_Top:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 116
    iput p3, p0, Lcom/shishicai/app/ui/DragImageView;->start_Top:I

    .line 117
    iput p2, p0, Lcom/shishicai/app/ui/DragImageView;->start_Left:I

    .line 118
    iput p5, p0, Lcom/shishicai/app/ui/DragImageView;->start_Bottom:I

    .line 119
    iput p4, p0, Lcom/shishicai/app/ui/DragImageView;->start_Right:I

    .line 122
    :cond_0
    return-void
.end method

.method onPointerDown(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 173
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 174
    sget-object v0, Lcom/shishicai/app/ui/DragImageView$MODE;->ZOOM:Lcom/shishicai/app/ui/DragImageView$MODE;

    iput-object v0, p0, Lcom/shishicai/app/ui/DragImageView;->mode:Lcom/shishicai/app/ui/DragImageView$MODE;

    .line 175
    invoke-virtual {p0, p1}, Lcom/shishicai/app/ui/DragImageView;->getDistance(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/shishicai/app/ui/DragImageView;->beforeLenght:F

    .line 177
    :cond_0
    return-void
.end method

.method onTouchDown(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 161
    sget-object v0, Lcom/shishicai/app/ui/DragImageView$MODE;->DRAG:Lcom/shishicai/app/ui/DragImageView$MODE;

    iput-object v0, p0, Lcom/shishicai/app/ui/DragImageView;->mode:Lcom/shishicai/app/ui/DragImageView$MODE;

    .line 163
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/shishicai/app/ui/DragImageView;->current_x:I

    .line 164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/shishicai/app/ui/DragImageView;->current_y:I

    .line 166
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/shishicai/app/ui/DragImageView;->start_x:I

    .line 167
    iget v0, p0, Lcom/shishicai/app/ui/DragImageView;->current_y:I

    invoke-virtual {p0}, Lcom/shishicai/app/ui/DragImageView;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/shishicai/app/ui/DragImageView;->start_y:I

    .line 169
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 156
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 132
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/shishicai/app/ui/DragImageView;->onTouchDown(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 136
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/shishicai/app/ui/DragImageView;->onPointerDown(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 140
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/shishicai/app/ui/DragImageView;->onTouchMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 143
    :pswitch_4
    sget-object v0, Lcom/shishicai/app/ui/DragImageView$MODE;->NONE:Lcom/shishicai/app/ui/DragImageView$MODE;

    iput-object v0, p0, Lcom/shishicai/app/ui/DragImageView;->mode:Lcom/shishicai/app/ui/DragImageView$MODE;

    goto :goto_0

    .line 148
    :pswitch_5
    sget-object v0, Lcom/shishicai/app/ui/DragImageView$MODE;->NONE:Lcom/shishicai/app/ui/DragImageView$MODE;

    iput-object v0, p0, Lcom/shishicai/app/ui/DragImageView;->mode:Lcom/shishicai/app/ui/DragImageView$MODE;

    .line 150
    iget-boolean v0, p0, Lcom/shishicai/app/ui/DragImageView;->isScaleAnim:Z

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/shishicai/app/ui/DragImageView;->doScaleAnim()V

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method onTouchMove(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 181
    const/4 v2, 0x0

    .local v2, "left":I
    const/4 v4, 0x0

    .local v4, "top":I
    const/4 v3, 0x0

    .local v3, "right":I
    const/4 v0, 0x0

    .line 183
    .local v0, "bottom":I
    iget-object v5, p0, Lcom/shishicai/app/ui/DragImageView;->mode:Lcom/shishicai/app/ui/DragImageView$MODE;

    sget-object v6, Lcom/shishicai/app/ui/DragImageView$MODE;->DRAG:Lcom/shishicai/app/ui/DragImageView$MODE;

    if-ne v5, v6, :cond_9

    .line 188
    iget v5, p0, Lcom/shishicai/app/ui/DragImageView;->current_x:I

    iget v6, p0, Lcom/shishicai/app/ui/DragImageView;->start_x:I

    sub-int v2, v5, v6

    .line 189
    iget v5, p0, Lcom/shishicai/app/ui/DragImageView;->current_x:I

    invoke-virtual {p0}, Lcom/shishicai/app/ui/DragImageView;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/shishicai/app/ui/DragImageView;->start_x:I

    sub-int v3, v5, v6

    .line 190
    iget v5, p0, Lcom/shishicai/app/ui/DragImageView;->current_y:I

    iget v6, p0, Lcom/shishicai/app/ui/DragImageView;->start_y:I

    sub-int v4, v5, v6

    .line 191
    iget v5, p0, Lcom/shishicai/app/ui/DragImageView;->current_y:I

    iget v6, p0, Lcom/shishicai/app/ui/DragImageView;->start_y:I

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/shishicai/app/ui/DragImageView;->getHeight()I

    move-result v6

    add-int v0, v5, v6

    .line 194
    iget-boolean v5, p0, Lcom/shishicai/app/ui/DragImageView;->isControl_H:Z

    if-eqz v5, :cond_7

    .line 195
    if-ltz v2, :cond_0

    .line 196
    const/4 v2, 0x0

    .line 197
    invoke-virtual {p0}, Lcom/shishicai/app/ui/DragImageView;->getWidth()I

    move-result v3

    .line 199
    :cond_0
    iget v5, p0, Lcom/shishicai/app/ui/DragImageView;->screen_W:I

    if-gt v3, v5, :cond_1

    .line 200
    iget v5, p0, Lcom/shishicai/app/ui/DragImageView;->screen_W:I

    invoke-virtual {p0}, Lcom/shishicai/app/ui/DragImageView;->getWidth()I

    move-result v6

    sub-int v2, v5, v6

    .line 201
    iget v3, p0, Lcom/shishicai/app/ui/DragImageView;->screen_W:I

    .line 208
    :cond_1
    :goto_0
    iget-boolean v5, p0, Lcom/shishicai/app/ui/DragImageView;->isControl_V:Z

    if-eqz v5, :cond_8

    .line 209
    if-ltz v4, :cond_2

    .line 210
    const/4 v4, 0x0

    .line 211
    invoke-virtual {p0}, Lcom/shishicai/app/ui/DragImageView;->getHeight()I

    move-result v0

    .line 214
    :cond_2
    iget v5, p0, Lcom/shishicai/app/ui/DragImageView;->screen_H:I

    if-gt v0, v5, :cond_3

    .line 215
    iget v5, p0, Lcom/shishicai/app/ui/DragImageView;->screen_H:I

    invoke-virtual {p0}, Lcom/shishicai/app/ui/DragImageView;->getHeight()I

    move-result v6

    sub-int v4, v5, v6

    .line 216
    iget v0, p0, Lcom/shishicai/app/ui/DragImageView;->screen_H:I

    .line 222
    :cond_3
    :goto_1
    iget-boolean v5, p0, Lcom/shishicai/app/ui/DragImageView;->isControl_H:Z

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/shishicai/app/ui/DragImageView;->isControl_V:Z

    if-eqz v5, :cond_5

    .line 223
    :cond_4
    invoke-direct {p0, v2, v4, v3, v0}, Lcom/shishicai/app/ui/DragImageView;->setPosition(IIII)V

    .line 225
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/shishicai/app/ui/DragImageView;->current_x:I

    .line 226
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/shishicai/app/ui/DragImageView;->current_y:I

    .line 245
    :cond_6
    :goto_2
    return-void

    .line 204
    :cond_7
    invoke-virtual {p0}, Lcom/shishicai/app/ui/DragImageView;->getLeft()I

    move-result v2

    .line 205
    invoke-virtual {p0}, Lcom/shishicai/app/ui/DragImageView;->getRight()I

    move-result v3

    goto :goto_0

    .line 219
    :cond_8
    invoke-virtual {p0}, Lcom/shishicai/app/ui/DragImageView;->getTop()I

    move-result v4

    .line 220
    invoke-virtual {p0}, Lcom/shishicai/app/ui/DragImageView;->getBottom()I

    move-result v0

    goto :goto_1

    .line 230
    :cond_9
    iget-object v5, p0, Lcom/shishicai/app/ui/DragImageView;->mode:Lcom/shishicai/app/ui/DragImageView$MODE;

    sget-object v6, Lcom/shishicai/app/ui/DragImageView$MODE;->ZOOM:Lcom/shishicai/app/ui/DragImageView$MODE;

    if-ne v5, v6, :cond_6

    .line 232
    invoke-virtual {p0, p1}, Lcom/shishicai/app/ui/DragImageView;->getDistance(Landroid/view/MotionEvent;)F

    move-result v5

    iput v5, p0, Lcom/shishicai/app/ui/DragImageView;->afterLenght:F

    .line 234
    iget v5, p0, Lcom/shishicai/app/ui/DragImageView;->afterLenght:F

    iget v6, p0, Lcom/shishicai/app/ui/DragImageView;->beforeLenght:F

    sub-float v1, v5, v6

    .line 236
    .local v1, "gapLenght":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x40a00000    # 5.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_6

    .line 237
    iget v5, p0, Lcom/shishicai/app/ui/DragImageView;->afterLenght:F

    iget v6, p0, Lcom/shishicai/app/ui/DragImageView;->beforeLenght:F

    div-float/2addr v5, v6

    iput v5, p0, Lcom/shishicai/app/ui/DragImageView;->scale_temp:F

    .line 239
    iget v5, p0, Lcom/shishicai/app/ui/DragImageView;->scale_temp:F

    invoke-virtual {p0, v5}, Lcom/shishicai/app/ui/DragImageView;->setScale(F)V

    .line 241
    iget v5, p0, Lcom/shishicai/app/ui/DragImageView;->afterLenght:F

    iput v5, p0, Lcom/shishicai/app/ui/DragImageView;->beforeLenght:F

    goto :goto_2
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 100
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/shishicai/app/ui/DragImageView;->bitmap_W:I

    .line 101
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/shishicai/app/ui/DragImageView;->bitmap_H:I

    .line 103
    iget v0, p0, Lcom/shishicai/app/ui/DragImageView;->bitmap_W:I

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/shishicai/app/ui/DragImageView;->MAX_W:I

    .line 104
    iget v0, p0, Lcom/shishicai/app/ui/DragImageView;->bitmap_H:I

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/shishicai/app/ui/DragImageView;->MAX_H:I

    .line 106
    iget v0, p0, Lcom/shishicai/app/ui/DragImageView;->bitmap_W:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/shishicai/app/ui/DragImageView;->MIN_W:I

    .line 107
    iget v0, p0, Lcom/shishicai/app/ui/DragImageView;->bitmap_H:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/shishicai/app/ui/DragImageView;->MIN_H:I

    .line 109
    return-void
.end method

.method setScale(F)V
    .locals 8
    .param p1, "scale"    # F

    .prologue
    const/4 v7, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 262
    invoke-virtual {p0}, Lcom/shishicai/app/ui/DragImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float v3, v4, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    div-int/lit8 v0, v2, 0x4

    .line 263
    .local v0, "disX":I
    invoke-virtual {p0}, Lcom/shishicai/app/ui/DragImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float v3, v4, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    div-int/lit8 v1, v2, 0x4

    .line 266
    .local v1, "disY":I
    cmpl-float v2, p1, v4

    if-lez v2, :cond_3

    invoke-virtual {p0}, Lcom/shishicai/app/ui/DragImageView;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/shishicai/app/ui/DragImageView;->MAX_W:I

    if-gt v2, v3, :cond_3

    .line 267
    invoke-virtual {p0}, Lcom/shishicai/app/ui/DragImageView;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/shishicai/app/ui/DragImageView;->current_Left:I

    .line 268
    invoke-virtual {p0}, Lcom/shishicai/app/ui/DragImageView;->getTop()I

    move-result v2

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/shishicai/app/ui/DragImageView;->current_Top:I

    .line 269
    invoke-virtual {p0}, Lcom/shishicai/app/ui/DragImageView;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/shishicai/app/ui/DragImageView;->current_Right:I

    .line 270
    invoke-virtual {p0}, Lcom/shishicai/app/ui/DragImageView;->getBottom()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, p0, Lcom/shishicai/app/ui/DragImageView;->current_Bottom:I

    .line 272
    iget v2, p0, Lcom/shishicai/app/ui/DragImageView;->current_Left:I

    iget v3, p0, Lcom/shishicai/app/ui/DragImageView;->current_Top:I

    iget v4, p0, Lcom/shishicai/app/ui/DragImageView;->current_Right:I

    iget v5, p0, Lcom/shishicai/app/ui/DragImageView;->current_Bottom:I

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/shishicai/app/ui/DragImageView;->setFrame(IIII)Z

    .line 277
    iget v2, p0, Lcom/shishicai/app/ui/DragImageView;->current_Top:I

    if-gtz v2, :cond_1

    iget v2, p0, Lcom/shishicai/app/ui/DragImageView;->current_Bottom:I

    iget v3, p0, Lcom/shishicai/app/ui/DragImageView;->screen_H:I

    if-lt v2, v3, :cond_1

    .line 279
    iput-boolean v7, p0, Lcom/shishicai/app/ui/DragImageView;->isControl_V:Z

    .line 283
    :goto_0
    iget v2, p0, Lcom/shishicai/app/ui/DragImageView;->current_Left:I

    if-gtz v2, :cond_2

    iget v2, p0, Lcom/shishicai/app/ui/DragImageView;->current_Right:I

    iget v3, p0, Lcom/shishicai/app/ui/DragImageView;->screen_W:I

    if-lt v2, v3, :cond_2

    .line 284
    iput-boolean v7, p0, Lcom/shishicai/app/ui/DragImageView;->isControl_H:Z

    .line 348
    :cond_0
    :goto_1
    return-void

    .line 281
    :cond_1
    iput-boolean v6, p0, Lcom/shishicai/app/ui/DragImageView;->isControl_V:Z

    goto :goto_0

    .line 286
    :cond_2
    iput-boolean v6, p0, Lcom/shishicai/app/ui/DragImageView;->isControl_H:Z

    goto :goto_1

    .line 291
    :cond_3
    cmpg-float v2, p1, v4

    if-gez v2, :cond_0

    invoke-virtual {p0}, Lcom/shishicai/app/ui/DragImageView;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/shishicai/app/ui/DragImageView;->MIN_W:I

    if-lt v2, v3, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/shishicai/app/ui/DragImageView;->getLeft()I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/shishicai/app/ui/DragImageView;->current_Left:I

    .line 293
    invoke-virtual {p0}, Lcom/shishicai/app/ui/DragImageView;->getTop()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, p0, Lcom/shishicai/app/ui/DragImageView;->current_Top:I

    .line 294
    invoke-virtual {p0}, Lcom/shishicai/app/ui/DragImageView;->getRight()I

    move-result v2

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/shishicai/app/ui/DragImageView;->current_Right:I

    .line 295
    invoke-virtual {p0}, Lcom/shishicai/app/ui/DragImageView;->getBottom()I

    move-result v2

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/shishicai/app/ui/DragImageView;->current_Bottom:I

    .line 300
    iget-boolean v2, p0, Lcom/shishicai/app/ui/DragImageView;->isControl_V:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/shishicai/app/ui/DragImageView;->current_Top:I

    if-lez v2, :cond_4

    .line 301
    iput v6, p0, Lcom/shishicai/app/ui/DragImageView;->current_Top:I

    .line 302
    invoke-virtual {p0}, Lcom/shishicai/app/ui/DragImageView;->getBottom()I

    move-result v2

    mul-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/shishicai/app/ui/DragImageView;->current_Bottom:I

    .line 303
    iget v2, p0, Lcom/shishicai/app/ui/DragImageView;->current_Bottom:I

    iget v3, p0, Lcom/shishicai/app/ui/DragImageView;->screen_H:I

    if-ge v2, v3, :cond_4

    .line 304
    iget v2, p0, Lcom/shishicai/app/ui/DragImageView;->screen_H:I

    iput v2, p0, Lcom/shishicai/app/ui/DragImageView;->current_Bottom:I

    .line 305
    iput-boolean v6, p0, Lcom/shishicai/app/ui/DragImageView;->isControl_V:Z

    .line 309
    :cond_4
    iget-boolean v2, p0, Lcom/shishicai/app/ui/DragImageView;->isControl_V:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/shishicai/app/ui/DragImageView;->current_Bottom:I

    iget v3, p0, Lcom/shishicai/app/ui/DragImageView;->screen_H:I

    if-ge v2, v3, :cond_5

    .line 310
    iget v2, p0, Lcom/shishicai/app/ui/DragImageView;->screen_H:I

    iput v2, p0, Lcom/shishicai/app/ui/DragImageView;->current_Bottom:I

    .line 311
    invoke-virtual {p0}, Lcom/shishicai/app/ui/DragImageView;->getTop()I

    move-result v2

    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    iput v2, p0, Lcom/shishicai/app/ui/DragImageView;->current_Top:I

    .line 312
    iget v2, p0, Lcom/shishicai/app/ui/DragImageView;->current_Top:I

    if-lez v2, :cond_5

    .line 313
    iput v6, p0, Lcom/shishicai/app/ui/DragImageView;->current_Top:I

    .line 314
    iput-boolean v6, p0, Lcom/shishicai/app/ui/DragImageView;->isControl_V:Z

    .line 319
    :cond_5
    iget-boolean v2, p0, Lcom/shishicai/app/ui/DragImageView;->isControl_H:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/shishicai/app/ui/DragImageView;->current_Left:I

    if-ltz v2, :cond_6

    .line 320
    iput v6, p0, Lcom/shishicai/app/ui/DragImageView;->current_Left:I

    .line 321
    invoke-virtual {p0}, Lcom/shishicai/app/ui/DragImageView;->getRight()I

    move-result v2

    mul-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/shishicai/app/ui/DragImageView;->current_Right:I

    .line 322
    iget v2, p0, Lcom/shishicai/app/ui/DragImageView;->current_Right:I

    iget v3, p0, Lcom/shishicai/app/ui/DragImageView;->screen_W:I

    if-gt v2, v3, :cond_6

    .line 323
    iget v2, p0, Lcom/shishicai/app/ui/DragImageView;->screen_W:I

    iput v2, p0, Lcom/shishicai/app/ui/DragImageView;->current_Right:I

    .line 324
    iput-boolean v6, p0, Lcom/shishicai/app/ui/DragImageView;->isControl_H:Z

    .line 328
    :cond_6
    iget-boolean v2, p0, Lcom/shishicai/app/ui/DragImageView;->isControl_H:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/shishicai/app/ui/DragImageView;->current_Right:I

    iget v3, p0, Lcom/shishicai/app/ui/DragImageView;->screen_W:I

    if-gt v2, v3, :cond_7

    .line 329
    iget v2, p0, Lcom/shishicai/app/ui/DragImageView;->screen_W:I

    iput v2, p0, Lcom/shishicai/app/ui/DragImageView;->current_Right:I

    .line 330
    invoke-virtual {p0}, Lcom/shishicai/app/ui/DragImageView;->getLeft()I

    move-result v2

    mul-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    iput v2, p0, Lcom/shishicai/app/ui/DragImageView;->current_Left:I

    .line 331
    iget v2, p0, Lcom/shishicai/app/ui/DragImageView;->current_Left:I

    if-ltz v2, :cond_7

    .line 332
    iput v6, p0, Lcom/shishicai/app/ui/DragImageView;->current_Left:I

    .line 333
    iput-boolean v6, p0, Lcom/shishicai/app/ui/DragImageView;->isControl_H:Z

    .line 337
    :cond_7
    iget-boolean v2, p0, Lcom/shishicai/app/ui/DragImageView;->isControl_H:Z

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lcom/shishicai/app/ui/DragImageView;->isControl_V:Z

    if-eqz v2, :cond_9

    .line 338
    :cond_8
    iget v2, p0, Lcom/shishicai/app/ui/DragImageView;->current_Left:I

    iget v3, p0, Lcom/shishicai/app/ui/DragImageView;->current_Top:I

    iget v4, p0, Lcom/shishicai/app/ui/DragImageView;->current_Right:I

    iget v5, p0, Lcom/shishicai/app/ui/DragImageView;->current_Bottom:I

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/shishicai/app/ui/DragImageView;->setFrame(IIII)Z

    goto/16 :goto_1

    .line 341
    :cond_9
    iget v2, p0, Lcom/shishicai/app/ui/DragImageView;->current_Left:I

    iget v3, p0, Lcom/shishicai/app/ui/DragImageView;->current_Top:I

    iget v4, p0, Lcom/shishicai/app/ui/DragImageView;->current_Right:I

    iget v5, p0, Lcom/shishicai/app/ui/DragImageView;->current_Bottom:I

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/shishicai/app/ui/DragImageView;->setFrame(IIII)Z

    .line 343
    iput-boolean v7, p0, Lcom/shishicai/app/ui/DragImageView;->isScaleAnim:Z

    goto/16 :goto_1
.end method

.method public setScreen_H(I)V
    .locals 0
    .param p1, "screen_H"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/shishicai/app/ui/DragImageView;->screen_H:I

    .line 87
    return-void
.end method

.method public setScreen_W(I)V
    .locals 0
    .param p1, "screen_W"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/shishicai/app/ui/DragImageView;->screen_W:I

    .line 82
    return-void
.end method

.method public setmActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "mActivity"    # Landroid/app/Activity;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/shishicai/app/ui/DragImageView;->mActivity:Landroid/app/Activity;

    .line 77
    return-void
.end method
