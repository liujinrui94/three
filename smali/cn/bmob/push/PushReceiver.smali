.class public Lcn/bmob/push/PushReceiver;
.super Lcn/bmob/push/lib/util/WakefulBroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcn/bmob/push/lib/util/WakefulBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 14
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 15
    invoke-static {p1}, Lcn/bmob/push/PushSDK;->Code(Landroid/content/Context;)Lcn/bmob/push/PushSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/push/PushSDK;->V()Z

    .line 27
    :cond_0
    :goto_0
    return-void

    .line 16
    :cond_1
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 17
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 18
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 19
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20
    invoke-static {p1}, Lcn/bmob/push/PushSDK;->Code(Landroid/content/Context;)Lcn/bmob/push/PushSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/push/PushSDK;->V()Z

    goto :goto_0

    .line 22
    :cond_2
    invoke-static {p1}, Lcn/bmob/push/PushSDK;->Code(Landroid/content/Context;)Lcn/bmob/push/PushSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/push/PushSDK;->I()V

    goto :goto_0

    .line 24
    :cond_3
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-static {p1}, Lcn/bmob/push/PushSDK;->Code(Landroid/content/Context;)Lcn/bmob/push/PushSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/push/PushSDK;->V()Z

    goto :goto_0
.end method
