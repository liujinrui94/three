.class Lcn/bmob/push/lib/service/PushService$MyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private synthetic aD:Lcn/bmob/push/lib/service/PushService;


# direct methods
.method private constructor <init>(Lcn/bmob/push/lib/service/PushService;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcn/bmob/push/lib/service/PushService$MyBroadcastReceiver;->aD:Lcn/bmob/push/lib/service/PushService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/bmob/push/lib/service/PushService;B)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcn/bmob/push/lib/service/PushService$MyBroadcastReceiver;-><init>(Lcn/bmob/push/lib/service/PushService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 54
    const/4 v1, 0x0

    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcn/bmob/push/lib/service/PushService$MyBroadcastReceiver;->aD:Lcn/bmob/push/lib/service/PushService;

    invoke-virtual {v0}, Lcn/bmob/push/lib/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 58
    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 57
    check-cast v0, Landroid/app/ActivityManager;

    .line 60
    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 59
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 66
    if-nez v1, :cond_3

    .line 67
    const-string v0, "PushService\u670d\u52a1\u672a\u542f\u52a8\u6216\u5df2\u5173\u95ed,\u6b63\u5728\u542f\u52a8\u4e2d..."

    invoke-static {v0}, Lcn/bmob/push/lib/util/LogUtil;->C(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcn/bmob/push/lib/service/PushService$MyBroadcastReceiver;->aD:Lcn/bmob/push/lib/service/PushService;

    invoke-virtual {v0}, Lcn/bmob/push/lib/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/bmob/push/PushSDK;->Code(Landroid/content/Context;)Lcn/bmob/push/PushSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/push/PushSDK;->V()Z

    .line 73
    :goto_1
    iget-object v0, p0, Lcn/bmob/push/lib/service/PushService$MyBroadcastReceiver;->aD:Lcn/bmob/push/lib/service/PushService;

    invoke-virtual {v0}, Lcn/bmob/push/lib/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/bmob/push/PushSDK;->Code(Landroid/content/Context;)Lcn/bmob/push/PushSDK;

    move-result-object v0

    iget-object v1, p0, Lcn/bmob/push/lib/service/PushService$MyBroadcastReceiver;->aD:Lcn/bmob/push/lib/service/PushService;

    invoke-static {v1}, Lcn/bmob/push/lib/service/PushService;->I(Lcn/bmob/push/lib/service/PushService;)Ljava/util/Observer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/bmob/push/PushSDK;->Code(Ljava/util/Observer;)V

    .line 75
    :cond_1
    return-void

    .line 60
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 61
    const-class v3, Lcn/bmob/push/lib/service/PushService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 62
    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 62
    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    .line 70
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/bmob/push/lib/service/PushService$MyBroadcastReceiver;->aD:Lcn/bmob/push/lib/service/PushService;

    invoke-virtual {v1}, Lcn/bmob/push/lib/service/PushService;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "-->PushService\u670d\u52a1\u6b63\u5728\u8fd0\u884c\u4e2d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/bmob/push/lib/util/LogUtil;->C(Ljava/lang/String;)V

    goto :goto_1
.end method
