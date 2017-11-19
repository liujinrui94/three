.class Lcom/shishicai/app/activity/WebActivity$3$2;
.super Ljava/lang/Object;
.source "WebActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/WebActivity$3;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shishicai/app/activity/WebActivity$3;

.field final synthetic val$itemLongClickedPopWindow:Lcom/shishicai/app/ui/ItemLongClickedPopWindow;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/WebActivity$3;Lcom/shishicai/app/ui/ItemLongClickedPopWindow;)V
    .locals 0
    .param p1, "this$1"    # Lcom/shishicai/app/activity/WebActivity$3;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/shishicai/app/activity/WebActivity$3$2;->this$1:Lcom/shishicai/app/activity/WebActivity$3;

    iput-object p2, p0, Lcom/shishicai/app/activity/WebActivity$3$2;->val$itemLongClickedPopWindow:Lcom/shishicai/app/ui/ItemLongClickedPopWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 398
    iget-object v1, p0, Lcom/shishicai/app/activity/WebActivity$3$2;->val$itemLongClickedPopWindow:Lcom/shishicai/app/ui/ItemLongClickedPopWindow;

    invoke-virtual {v1}, Lcom/shishicai/app/ui/ItemLongClickedPopWindow;->dismiss()V

    .line 399
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2

    .line 401
    iget-object v1, p0, Lcom/shishicai/app/activity/WebActivity$3$2;->this$1:Lcom/shishicai/app/activity/WebActivity$3;

    iget-object v1, v1, Lcom/shishicai/app/activity/WebActivity$3;->this$0:Lcom/shishicai/app/activity/WebActivity;

    invoke-static {v1}, Lcom/shishicai/app/activity/WebActivity;->access$900(Lcom/shishicai/app/activity/WebActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "version >= 23"

    invoke-static {v1, v2}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget-object v1, p0, Lcom/shishicai/app/activity/WebActivity$3$2;->this$1:Lcom/shishicai/app/activity/WebActivity$3;

    iget-object v1, v1, Lcom/shishicai/app/activity/WebActivity$3;->this$0:Lcom/shishicai/app/activity/WebActivity;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 405
    iget-object v1, p0, Lcom/shishicai/app/activity/WebActivity$3$2;->this$1:Lcom/shishicai/app/activity/WebActivity$3;

    iget-object v1, v1, Lcom/shishicai/app/activity/WebActivity$3;->this$0:Lcom/shishicai/app/activity/WebActivity;

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v2, v4

    const/16 v3, 0x3e8

    invoke-static {v1, v2, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 429
    :goto_0
    return-void

    .line 410
    :cond_0
    iget-object v1, p0, Lcom/shishicai/app/activity/WebActivity$3$2;->this$1:Lcom/shishicai/app/activity/WebActivity$3;

    iget-object v1, v1, Lcom/shishicai/app/activity/WebActivity$3;->this$0:Lcom/shishicai/app/activity/WebActivity;

    invoke-static {v1}, Lcom/shishicai/app/activity/WebActivity;->access$400(Lcom/shishicai/app/activity/WebActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "data:image/png;base64,"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 412
    iget-object v1, p0, Lcom/shishicai/app/activity/WebActivity$3$2;->this$1:Lcom/shishicai/app/activity/WebActivity$3;

    iget-object v1, v1, Lcom/shishicai/app/activity/WebActivity$3;->this$0:Lcom/shishicai/app/activity/WebActivity;

    invoke-static {v1}, Lcom/shishicai/app/activity/WebActivity;->access$400(Lcom/shishicai/app/activity/WebActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 414
    .local v0, "split":[Ljava/lang/String;
    new-instance v1, Lcom/shishicai/app/activity/WebActivity$MyAsyncTask;

    iget-object v2, p0, Lcom/shishicai/app/activity/WebActivity$3$2;->this$1:Lcom/shishicai/app/activity/WebActivity$3;

    iget-object v2, v2, Lcom/shishicai/app/activity/WebActivity$3;->this$0:Lcom/shishicai/app/activity/WebActivity;

    invoke-direct {v1, v2}, Lcom/shishicai/app/activity/WebActivity$MyAsyncTask;-><init>(Lcom/shishicai/app/activity/WebActivity;)V

    new-array v2, v3, [Ljava/lang/String;

    aget-object v3, v0, v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/shishicai/app/activity/WebActivity$MyAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 416
    .end local v0    # "split":[Ljava/lang/String;
    :cond_1
    new-instance v1, Lcom/shishicai/app/activity/WebActivity$SaveImage;

    iget-object v2, p0, Lcom/shishicai/app/activity/WebActivity$3$2;->this$1:Lcom/shishicai/app/activity/WebActivity$3;

    iget-object v2, v2, Lcom/shishicai/app/activity/WebActivity$3;->this$0:Lcom/shishicai/app/activity/WebActivity;

    invoke-direct {v1, v2, v5}, Lcom/shishicai/app/activity/WebActivity$SaveImage;-><init>(Lcom/shishicai/app/activity/WebActivity;Lcom/shishicai/app/activity/WebActivity$1;)V

    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/shishicai/app/activity/WebActivity$SaveImage;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 420
    :cond_2
    iget-object v1, p0, Lcom/shishicai/app/activity/WebActivity$3$2;->this$1:Lcom/shishicai/app/activity/WebActivity$3;

    iget-object v1, v1, Lcom/shishicai/app/activity/WebActivity$3;->this$0:Lcom/shishicai/app/activity/WebActivity;

    invoke-static {v1}, Lcom/shishicai/app/activity/WebActivity;->access$400(Lcom/shishicai/app/activity/WebActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "data:image/png;base64,"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 422
    iget-object v1, p0, Lcom/shishicai/app/activity/WebActivity$3$2;->this$1:Lcom/shishicai/app/activity/WebActivity$3;

    iget-object v1, v1, Lcom/shishicai/app/activity/WebActivity$3;->this$0:Lcom/shishicai/app/activity/WebActivity;

    invoke-static {v1}, Lcom/shishicai/app/activity/WebActivity;->access$400(Lcom/shishicai/app/activity/WebActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 424
    .restart local v0    # "split":[Ljava/lang/String;
    new-instance v1, Lcom/shishicai/app/activity/WebActivity$MyAsyncTask;

    iget-object v2, p0, Lcom/shishicai/app/activity/WebActivity$3$2;->this$1:Lcom/shishicai/app/activity/WebActivity$3;

    iget-object v2, v2, Lcom/shishicai/app/activity/WebActivity$3;->this$0:Lcom/shishicai/app/activity/WebActivity;

    invoke-direct {v1, v2}, Lcom/shishicai/app/activity/WebActivity$MyAsyncTask;-><init>(Lcom/shishicai/app/activity/WebActivity;)V

    new-array v2, v3, [Ljava/lang/String;

    aget-object v3, v0, v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/shishicai/app/activity/WebActivity$MyAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 426
    .end local v0    # "split":[Ljava/lang/String;
    :cond_3
    new-instance v1, Lcom/shishicai/app/activity/WebActivity$SaveImage;

    iget-object v2, p0, Lcom/shishicai/app/activity/WebActivity$3$2;->this$1:Lcom/shishicai/app/activity/WebActivity$3;

    iget-object v2, v2, Lcom/shishicai/app/activity/WebActivity$3;->this$0:Lcom/shishicai/app/activity/WebActivity;

    invoke-direct {v1, v2, v5}, Lcom/shishicai/app/activity/WebActivity$SaveImage;-><init>(Lcom/shishicai/app/activity/WebActivity;Lcom/shishicai/app/activity/WebActivity$1;)V

    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/shishicai/app/activity/WebActivity$SaveImage;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
