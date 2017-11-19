.class Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/activity/WelcomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadMainTabTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/WelcomeActivity;


# direct methods
.method private constructor <init>(Lcom/shishicai/app/activity/WelcomeActivity;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask;->this$0:Lcom/shishicai/app/activity/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/shishicai/app/activity/WelcomeActivity;Lcom/shishicai/app/activity/WelcomeActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/shishicai/app/activity/WelcomeActivity;
    .param p2, "x1"    # Lcom/shishicai/app/activity/WelcomeActivity$1;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask;-><init>(Lcom/shishicai/app/activity/WelcomeActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 55
    const-string v0, "WelcomeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/shishicai/app/Constant;->URL_JUDGE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    sget-object v0, Lcom/shishicai/app/Constant;->URL_JUDGE:Ljava/lang/String;

    new-instance v1, Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask$1;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask$1;-><init>(Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask;)V

    invoke-static {v0, v1}, Lcom/shishicai/app/service/HttpUser;->get(Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 122
    return-void
.end method
