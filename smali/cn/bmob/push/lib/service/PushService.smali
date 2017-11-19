.class public Lcn/bmob/push/lib/service/PushService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private aA:Ljava/util/Observer;

.field private final aB:Lcn/bmob/push/lib/service/PushService$CusRemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/bmob/push/lib/service/PushService$CusRemoteCallbackList",
            "<",
            "Lcn/bmob/push/lib/service/ISocketServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private aC:Lcn/bmob/push/lib/service/ISocketService$Stub;

.field private as:Lcn/bmob/push/lib/service/ISocketResponse;

.field private ay:Lcn/bmob/push/lib/service/Client;

.field private az:Lcn/bmob/push/lib/service/PushService$MyBroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/bmob/push/lib/service/PushService;->ay:Lcn/bmob/push/lib/service/Client;

    .line 42
    new-instance v0, Lcn/bmob/push/lib/service/PushService$MyBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcn/bmob/push/lib/service/PushService$MyBroadcastReceiver;-><init>(Lcn/bmob/push/lib/service/PushService;B)V

    iput-object v0, p0, Lcn/bmob/push/lib/service/PushService;->az:Lcn/bmob/push/lib/service/PushService$MyBroadcastReceiver;

    .line 78
    new-instance v0, Lcn/bmob/push/lib/service/PushService$1;

    invoke-direct {v0, p0}, Lcn/bmob/push/lib/service/PushService$1;-><init>(Lcn/bmob/push/lib/service/PushService;)V

    iput-object v0, p0, Lcn/bmob/push/lib/service/PushService;->aA:Ljava/util/Observer;

    .line 152
    new-instance v0, Lcn/bmob/push/lib/service/PushService$2;

    invoke-direct {v0, p0}, Lcn/bmob/push/lib/service/PushService$2;-><init>(Lcn/bmob/push/lib/service/PushService;)V

    iput-object v0, p0, Lcn/bmob/push/lib/service/PushService;->as:Lcn/bmob/push/lib/service/ISocketResponse;

    .line 170
    new-instance v0, Lcn/bmob/push/lib/service/PushService$CusRemoteCallbackList;

    invoke-direct {v0, p0, v1}, Lcn/bmob/push/lib/service/PushService$CusRemoteCallbackList;-><init>(Lcn/bmob/push/lib/service/PushService;B)V

    iput-object v0, p0, Lcn/bmob/push/lib/service/PushService;->aB:Lcn/bmob/push/lib/service/PushService$CusRemoteCallbackList;

    .line 172
    new-instance v0, Lcn/bmob/push/lib/service/PushService$3;

    invoke-direct {v0, p0}, Lcn/bmob/push/lib/service/PushService$3;-><init>(Lcn/bmob/push/lib/service/PushService;)V

    iput-object v0, p0, Lcn/bmob/push/lib/service/PushService;->aC:Lcn/bmob/push/lib/service/ISocketService$Stub;

    .line 29
    return-void
.end method

.method static synthetic Code(Lcn/bmob/push/lib/service/PushService;)Lcn/bmob/push/lib/service/PushService$CusRemoteCallbackList;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcn/bmob/push/lib/service/PushService;->aB:Lcn/bmob/push/lib/service/PushService$CusRemoteCallbackList;

    return-object v0
.end method

.method private Code(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 120
    if-nez p1, :cond_0

    .line 121
    const-string v0, "PushService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleCommand() pid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 123
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-static {v0, v1}, Lcn/bmob/push/lib/util/LogUtil;->Code(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcn/bmob/push/lib/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/bmob/push/lib/util/NetworkUtil;->Z(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcn/bmob/push/lib/service/PushService;->ay:Lcn/bmob/push/lib/service/Client;

    iget-object v1, p0, Lcn/bmob/push/lib/service/PushService;->as:Lcn/bmob/push/lib/service/ISocketResponse;

    invoke-virtual {v0, v1}, Lcn/bmob/push/lib/service/Client;->Code(Lcn/bmob/push/lib/service/ISocketResponse;)V

    .line 128
    :cond_1
    return-void
.end method

.method static synthetic I(Lcn/bmob/push/lib/service/PushService;)Ljava/util/Observer;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcn/bmob/push/lib/service/PushService;->aA:Ljava/util/Observer;

    return-object v0
.end method

.method static synthetic V(Lcn/bmob/push/lib/service/PushService;)Lcn/bmob/push/lib/service/Client;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcn/bmob/push/lib/service/PushService;->ay:Lcn/bmob/push/lib/service/Client;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 132
    const-class v0, Lcn/bmob/push/lib/service/PushService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-direct {p0, p1}, Lcn/bmob/push/lib/service/PushService;->Code(Landroid/content/Intent;)V

    .line 134
    iget-object v0, p0, Lcn/bmob/push/lib/service/PushService;->aC:Lcn/bmob/push/lib/service/ISocketService$Stub;

    .line 136
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 35
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 36
    new-instance v0, Lcn/bmob/push/lib/service/Client;

    invoke-virtual {p0}, Lcn/bmob/push/lib/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/bmob/push/lib/service/Client;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/bmob/push/lib/service/PushService;->ay:Lcn/bmob/push/lib/service/Client;

    .line 38
    invoke-virtual {p0}, Lcn/bmob/push/lib/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/bmob/push/PushSDK;->Code(Landroid/content/Context;)Lcn/bmob/push/PushSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/push/PushSDK;->V()Z

    .line 39
    invoke-virtual {p0}, Lcn/bmob/push/lib/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/bmob/push/PushSDK;->Code(Landroid/content/Context;)Lcn/bmob/push/PushSDK;

    move-result-object v0

    iget-object v1, p0, Lcn/bmob/push/lib/service/PushService;->aA:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Lcn/bmob/push/PushSDK;->Code(Ljava/util/Observer;)V

    .line 40
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcn/bmob/push/lib/service/PushService;->ay:Lcn/bmob/push/lib/service/Client;

    invoke-virtual {v0}, Lcn/bmob/push/lib/service/Client;->close()V

    .line 142
    iget-object v0, p0, Lcn/bmob/push/lib/service/PushService;->aB:Lcn/bmob/push/lib/service/PushService$CusRemoteCallbackList;

    invoke-virtual {v0}, Lcn/bmob/push/lib/service/PushService$CusRemoteCallbackList;->kill()V

    .line 143
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 146
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 147
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .prologue
    .line 114
    .line 1046
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1047
    iget-object v1, p0, Lcn/bmob/push/lib/service/PushService;->az:Lcn/bmob/push/lib/service/PushService$MyBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcn/bmob/push/lib/service/PushService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    invoke-direct {p0, p1}, Lcn/bmob/push/lib/service/PushService;->Code(Landroid/content/Intent;)V

    .line 116
    const/4 v0, 0x1

    return v0
.end method
