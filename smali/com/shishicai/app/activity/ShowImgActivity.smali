.class public Lcom/shishicai/app/activity/ShowImgActivity;
.super Lcom/shishicai/app/utils/Base2Activity;
.source "ShowImgActivity.java"


# instance fields
.field private dragImageView:Lcom/shishicai/app/ui/DragImageView;

.field private state_height:I

.field private viewTreeObserver:Landroid/view/ViewTreeObserver;

.field private window_height:I

.field private window_width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/shishicai/app/utils/Base2Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/shishicai/app/activity/ShowImgActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/ShowImgActivity;

    .prologue
    .line 18
    iget v0, p0, Lcom/shishicai/app/activity/ShowImgActivity;->state_height:I

    return v0
.end method

.method static synthetic access$002(Lcom/shishicai/app/activity/ShowImgActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/ShowImgActivity;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/shishicai/app/activity/ShowImgActivity;->state_height:I

    return p1
.end method

.method static synthetic access$100(Lcom/shishicai/app/activity/ShowImgActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/ShowImgActivity;

    .prologue
    .line 18
    iget v0, p0, Lcom/shishicai/app/activity/ShowImgActivity;->window_height:I

    return v0
.end method

.method static synthetic access$200(Lcom/shishicai/app/activity/ShowImgActivity;)Lcom/shishicai/app/ui/DragImageView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/ShowImgActivity;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/shishicai/app/activity/ShowImgActivity;->dragImageView:Lcom/shishicai/app/ui/DragImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/shishicai/app/activity/ShowImgActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/ShowImgActivity;

    .prologue
    .line 18
    iget v0, p0, Lcom/shishicai/app/activity/ShowImgActivity;->window_width:I

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/shishicai/app/utils/Base2Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/shishicai/app/activity/ShowImgActivity;->requestWindowFeature(I)Z

    .line 28
    const v3, 0x7f03000c

    invoke-virtual {p0, v3}, Lcom/shishicai/app/activity/ShowImgActivity;->setContentView(I)V

    .line 29
    const-string v3, "ShowImgActivity"

    iput-object v3, p0, Lcom/shishicai/app/activity/ShowImgActivity;->TAG:Ljava/lang/String;

    .line 31
    invoke-virtual {p0}, Lcom/shishicai/app/activity/ShowImgActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    .line 32
    .local v1, "manager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/shishicai/app/activity/ShowImgActivity;->window_width:I

    .line 33
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/shishicai/app/activity/ShowImgActivity;->window_height:I

    .line 35
    const v3, 0x7f09003e

    invoke-virtual {p0, v3}, Lcom/shishicai/app/activity/ShowImgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/shishicai/app/ui/DragImageView;

    iput-object v3, p0, Lcom/shishicai/app/activity/ShowImgActivity;->dragImageView:Lcom/shishicai/app/ui/DragImageView;

    .line 36
    invoke-virtual {p0}, Lcom/shishicai/app/activity/ShowImgActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "path"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, "path":Ljava/lang/String;
    iget-object v3, p0, Lcom/shishicai/app/activity/ShowImgActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 40
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/shishicai/app/activity/ShowImgActivity;->dragImageView:Lcom/shishicai/app/ui/DragImageView;

    invoke-virtual {v3, v0}, Lcom/shishicai/app/ui/DragImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 41
    iget-object v3, p0, Lcom/shishicai/app/activity/ShowImgActivity;->dragImageView:Lcom/shishicai/app/ui/DragImageView;

    invoke-virtual {v3, p0}, Lcom/shishicai/app/ui/DragImageView;->setmActivity(Landroid/app/Activity;)V

    .line 43
    iget-object v3, p0, Lcom/shishicai/app/activity/ShowImgActivity;->dragImageView:Lcom/shishicai/app/ui/DragImageView;

    invoke-virtual {v3}, Lcom/shishicai/app/ui/DragImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    iput-object v3, p0, Lcom/shishicai/app/activity/ShowImgActivity;->viewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 44
    iget-object v3, p0, Lcom/shishicai/app/activity/ShowImgActivity;->viewTreeObserver:Landroid/view/ViewTreeObserver;

    new-instance v4, Lcom/shishicai/app/activity/ShowImgActivity$1;

    invoke-direct {v4, p0}, Lcom/shishicai/app/activity/ShowImgActivity$1;-><init>(Lcom/shishicai/app/activity/ShowImgActivity;)V

    .line 45
    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 60
    return-void
.end method
