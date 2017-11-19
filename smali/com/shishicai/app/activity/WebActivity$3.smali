.class Lcom/shishicai/app/activity/WebActivity$3;
.super Ljava/lang/Object;
.source "WebActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/WebActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/WebActivity;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/WebActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/WebActivity;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/shishicai/app/activity/WebActivity$3;->this$0:Lcom/shishicai/app/activity/WebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 346
    move-object v3, p1

    check-cast v3, Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v1

    .line 347
    .local v1, "result":Landroid/webkit/WebView$HitTestResult;
    if-nez v1, :cond_0

    move v3, v4

    .line 431
    :goto_0
    return v3

    .line 349
    :cond_0
    invoke-virtual {v1}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v2

    .line 356
    .local v2, "type":I
    new-instance v0, Lcom/shishicai/app/ui/ItemLongClickedPopWindow;

    iget-object v3, p0, Lcom/shishicai/app/activity/WebActivity$3;->this$0:Lcom/shishicai/app/activity/WebActivity;

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/shishicai/app/activity/WebActivity$3;->this$0:Lcom/shishicai/app/activity/WebActivity;

    const/high16 v7, 0x42f00000    # 120.0f

    invoke-static {v6, v7}, Lcom/shishicai/app/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iget-object v7, p0, Lcom/shishicai/app/activity/WebActivity$3;->this$0:Lcom/shishicai/app/activity/WebActivity;

    const/high16 v8, 0x42b40000    # 90.0f

    invoke-static {v7, v8}, Lcom/shishicai/app/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v0, v3, v5, v6, v7}, Lcom/shishicai/app/ui/ItemLongClickedPopWindow;-><init>(Landroid/content/Context;III)V

    .line 358
    .local v0, "itemLongClickedPopWindow":Lcom/shishicai/app/ui/ItemLongClickedPopWindow;
    packed-switch v2, :pswitch_data_0

    .line 380
    :goto_1
    :pswitch_0
    const v3, 0x7f0900eb

    invoke-virtual {v0, v3}, Lcom/shishicai/app/ui/ItemLongClickedPopWindow;->getView(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/shishicai/app/activity/WebActivity$3$1;

    invoke-direct {v4, p0, v0}, Lcom/shishicai/app/activity/WebActivity$3$1;-><init>(Lcom/shishicai/app/activity/WebActivity$3;Lcom/shishicai/app/ui/ItemLongClickedPopWindow;)V

    .line 381
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    const v3, 0x7f0900ec

    invoke-virtual {v0, v3}, Lcom/shishicai/app/ui/ItemLongClickedPopWindow;->getView(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/shishicai/app/activity/WebActivity$3$2;

    invoke-direct {v4, p0, v0}, Lcom/shishicai/app/activity/WebActivity$3$2;-><init>(Lcom/shishicai/app/activity/WebActivity$3;Lcom/shishicai/app/ui/ItemLongClickedPopWindow;)V

    .line 395
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    const/4 v3, 0x1

    goto :goto_0

    .line 371
    :pswitch_1
    iget-object v3, p0, Lcom/shishicai/app/activity/WebActivity$3;->this$0:Lcom/shishicai/app/activity/WebActivity;

    invoke-virtual {v1}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/shishicai/app/activity/WebActivity;->access$402(Lcom/shishicai/app/activity/WebActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 372
    iget-object v3, p0, Lcom/shishicai/app/activity/WebActivity$3;->this$0:Lcom/shishicai/app/activity/WebActivity;

    invoke-static {v3}, Lcom/shishicai/app/activity/WebActivity;->access$500(Lcom/shishicai/app/activity/WebActivity;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "imgUrl="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/shishicai/app/activity/WebActivity$3;->this$0:Lcom/shishicai/app/activity/WebActivity;

    invoke-static {v6}, Lcom/shishicai/app/activity/WebActivity;->access$400(Lcom/shishicai/app/activity/WebActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v3, p0, Lcom/shishicai/app/activity/WebActivity$3;->this$0:Lcom/shishicai/app/activity/WebActivity;

    invoke-static {v3}, Lcom/shishicai/app/activity/WebActivity;->access$600(Lcom/shishicai/app/activity/WebActivity;)I

    move-result v3

    iget-object v5, p0, Lcom/shishicai/app/activity/WebActivity$3;->this$0:Lcom/shishicai/app/activity/WebActivity;

    invoke-static {v5}, Lcom/shishicai/app/activity/WebActivity;->access$700(Lcom/shishicai/app/activity/WebActivity;)I

    move-result v5

    add-int/lit8 v5, v5, 0xa

    invoke-virtual {v0, p1, v4, v3, v5}, Lcom/shishicai/app/ui/ItemLongClickedPopWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1

    .line 358
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
