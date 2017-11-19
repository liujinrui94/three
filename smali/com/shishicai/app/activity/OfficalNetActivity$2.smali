.class Lcom/shishicai/app/activity/OfficalNetActivity$2;
.super Landroid/webkit/WebViewClient;
.source "OfficalNetActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/OfficalNetActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/OfficalNetActivity;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/OfficalNetActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/OfficalNetActivity;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/shishicai/app/activity/OfficalNetActivity$2;->this$0:Lcom/shishicai/app/activity/OfficalNetActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 59
    const-string v1, "http:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    :cond_0
    const/4 v1, 0x0

    .line 67
    :goto_0
    return v1

    .line 63
    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 64
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/shishicai/app/activity/OfficalNetActivity$2;->this$0:Lcom/shishicai/app/activity/OfficalNetActivity;

    invoke-virtual {v1, v0}, Lcom/shishicai/app/activity/OfficalNetActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 65
    :catch_0
    move-exception v1

    goto :goto_1
.end method
