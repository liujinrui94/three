.class Lcom/shishicai/app/activity/SplashActivity$2;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/SplashActivity;->initM()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/SplashActivity;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/SplashActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/SplashActivity;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/shishicai/app/activity/SplashActivity$2;->this$0:Lcom/shishicai/app/activity/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 48
    invoke-static {}, Lcom/shishicai/app/activity/HttpUtils;->getInstance()Lcom/shishicai/app/activity/HttpUtils;

    move-result-object v0

    const-string v1, "http://115.126.65.150/Lottery_server/check_and_get_url.php?type=android&show_url=1&appid=no30704"

    new-instance v2, Lcom/shishicai/app/activity/SplashActivity$2$1;

    invoke-direct {v2, p0}, Lcom/shishicai/app/activity/SplashActivity$2$1;-><init>(Lcom/shishicai/app/activity/SplashActivity$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/shishicai/app/activity/HttpUtils;->get(Ljava/lang/String;Lcom/shishicai/app/activity/HttpUtils$HttpCallback;)V

    .line 91
    return-void
.end method
