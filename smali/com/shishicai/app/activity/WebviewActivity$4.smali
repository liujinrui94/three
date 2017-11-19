.class Lcom/shishicai/app/activity/WebviewActivity$4;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "WebviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/WebviewActivity;->getHtml(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/WebviewActivity;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/WebviewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/WebviewActivity;

    .prologue
    .line 692
    iput-object p1, p0, Lcom/shishicai/app/activity/WebviewActivity$4;->this$0:Lcom/shishicai/app/activity/WebviewActivity;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 4
    .param p1, "arg0"    # I
    .param p2, "arg1"    # [Lorg/apache/http/Header;
    .param p3, "arg2"    # [B
    .param p4, "arg3"    # Ljava/lang/Throwable;

    .prologue
    const/4 v3, 0x0

    .line 696
    iget-object v0, p0, Lcom/shishicai/app/activity/WebviewActivity$4;->this$0:Lcom/shishicai/app/activity/WebviewActivity;

    invoke-static {v0}, Lcom/shishicai/app/activity/WebviewActivity;->access$1400(Lcom/shishicai/app/activity/WebviewActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "err="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    iget-object v0, p0, Lcom/shishicai/app/activity/WebviewActivity$4;->this$0:Lcom/shishicai/app/activity/WebviewActivity;

    invoke-static {v0}, Lcom/shishicai/app/activity/WebviewActivity;->access$1500(Lcom/shishicai/app/activity/WebviewActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 698
    iget-object v0, p0, Lcom/shishicai/app/activity/WebviewActivity$4;->this$0:Lcom/shishicai/app/activity/WebviewActivity;

    invoke-static {v0}, Lcom/shishicai/app/activity/WebviewActivity;->access$1600(Lcom/shishicai/app/activity/WebviewActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 699
    iget-object v0, p0, Lcom/shishicai/app/activity/WebviewActivity$4;->this$0:Lcom/shishicai/app/activity/WebviewActivity;

    const-string v1, "\u7f51\u7edc\u5f02\u5e38!"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 700
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 8
    .param p1, "arg0"    # I
    .param p2, "arg1"    # [Lorg/apache/http/Header;
    .param p3, "arg2"    # [B

    .prologue
    .line 705
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, p3}, Ljava/lang/String;-><init>([B)V

    .line 706
    .local v7, "str":Ljava/lang/String;
    iget-object v0, p0, Lcom/shishicai/app/activity/WebviewActivity$4;->this$0:Lcom/shishicai/app/activity/WebviewActivity;

    invoke-static {v0}, Lcom/shishicai/app/activity/WebviewActivity;->access$1500(Lcom/shishicai/app/activity/WebviewActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 707
    iget-object v0, p0, Lcom/shishicai/app/activity/WebviewActivity$4;->this$0:Lcom/shishicai/app/activity/WebviewActivity;

    invoke-static {v0}, Lcom/shishicai/app/activity/WebviewActivity;->access$1600(Lcom/shishicai/app/activity/WebviewActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 708
    iget-object v0, p0, Lcom/shishicai/app/activity/WebviewActivity$4;->this$0:Lcom/shishicai/app/activity/WebviewActivity;

    invoke-static {v0}, Lcom/shishicai/app/activity/WebviewActivity;->access$1700(Lcom/shishicai/app/activity/WebviewActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 710
    const-string v0, "<article"

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "</article>"

    invoke-virtual {v7, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 711
    .local v6, "body":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<html><body>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</article></body></html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 712
    .local v2, "html":Ljava/lang/String;
    iget-object v0, p0, Lcom/shishicai/app/activity/WebviewActivity$4;->this$0:Lcom/shishicai/app/activity/WebviewActivity;

    invoke-static {v0}, Lcom/shishicai/app/activity/WebviewActivity;->access$1800(Lcom/shishicai/app/activity/WebviewActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "html="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    iget-object v0, p0, Lcom/shishicai/app/activity/WebviewActivity$4;->this$0:Lcom/shishicai/app/activity/WebviewActivity;

    invoke-static {v0}, Lcom/shishicai/app/activity/WebviewActivity;->access$2000(Lcom/shishicai/app/activity/WebviewActivity;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/shishicai/app/activity/WebviewActivity$4;->this$0:Lcom/shishicai/app/activity/WebviewActivity;

    invoke-static {v1}, Lcom/shishicai/app/activity/WebviewActivity;->access$1900(Lcom/shishicai/app/activity/WebviewActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    .end local v2    # "html":Ljava/lang/String;
    .end local v6    # "body":Ljava/lang/String;
    :cond_0
    return-void
.end method
