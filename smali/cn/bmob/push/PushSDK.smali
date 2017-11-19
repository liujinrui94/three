.class public Lcn/bmob/push/PushSDK;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile INSTANCE:Lcn/bmob/push/PushSDK;

.field private static INSTANCE_LOCK:Ljava/lang/Object;


# instance fields
.field private B:Lcn/bmob/push/lib/service/ISocketServiceCallback;

.field private I:Lcn/bmob/push/PushSDK$PushObservable;

.field private V:Lcn/bmob/push/lib/service/ISocketService;

.field private Z:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/bmob/push/PushSDK;->INSTANCE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v2, p0, Lcn/bmob/push/PushSDK;->V:Lcn/bmob/push/lib/service/ISocketService;

    .line 26
    new-instance v0, Lcn/bmob/push/PushSDK$PushObservable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/bmob/push/PushSDK$PushObservable;-><init>(Lcn/bmob/push/PushSDK;B)V

    iput-object v0, p0, Lcn/bmob/push/PushSDK;->I:Lcn/bmob/push/PushSDK$PushObservable;

    .line 27
    iput-object v2, p0, Lcn/bmob/push/PushSDK;->mContext:Landroid/content/Context;

    .line 99
    new-instance v0, Lcn/bmob/push/PushSDK$1;

    invoke-direct {v0, p0}, Lcn/bmob/push/PushSDK$1;-><init>(Lcn/bmob/push/PushSDK;)V

    iput-object v0, p0, Lcn/bmob/push/PushSDK;->Z:Landroid/content/ServiceConnection;

    .line 128
    new-instance v0, Lcn/bmob/push/PushSDK$2;

    invoke-direct {v0, p0}, Lcn/bmob/push/PushSDK$2;-><init>(Lcn/bmob/push/PushSDK;)V

    iput-object v0, p0, Lcn/bmob/push/PushSDK;->B:Lcn/bmob/push/lib/service/ISocketServiceCallback;

    .line 23
    return-void
.end method

.method public static Code()Lcn/bmob/push/PushSDK;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcn/bmob/push/PushSDK;->INSTANCE:Lcn/bmob/push/PushSDK;

    return-object v0
.end method

.method public static Code(Landroid/content/Context;)Lcn/bmob/push/PushSDK;
    .locals 3

    .prologue
    .line 41
    sget-object v0, Lcn/bmob/push/PushSDK;->INSTANCE:Lcn/bmob/push/PushSDK;

    if-nez v0, :cond_1

    .line 42
    sget-object v1, Lcn/bmob/push/PushSDK;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 43
    :try_start_0
    sget-object v0, Lcn/bmob/push/PushSDK;->INSTANCE:Lcn/bmob/push/PushSDK;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcn/bmob/push/PushSDK;

    invoke-direct {v0}, Lcn/bmob/push/PushSDK;-><init>()V

    sput-object v0, Lcn/bmob/push/PushSDK;->INSTANCE:Lcn/bmob/push/PushSDK;

    .line 46
    :cond_0
    sget-object v0, Lcn/bmob/push/PushSDK;->INSTANCE:Lcn/bmob/push/PushSDK;

    .line 1052
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, v0, Lcn/bmob/push/PushSDK;->mContext:Landroid/content/Context;

    .line 42
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_1
    sget-object v0, Lcn/bmob/push/PushSDK;->INSTANCE:Lcn/bmob/push/PushSDK;

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic Code(Lcn/bmob/push/PushSDK;)Lcn/bmob/push/lib/service/ISocketService;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcn/bmob/push/PushSDK;->V:Lcn/bmob/push/lib/service/ISocketService;

    return-object v0
.end method

.method static synthetic Code(Lcn/bmob/push/PushSDK;Lcn/bmob/push/lib/service/ISocketService;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcn/bmob/push/PushSDK;->V:Lcn/bmob/push/lib/service/ISocketService;

    return-void
.end method

.method static synthetic I(Lcn/bmob/push/PushSDK;)Lcn/bmob/push/PushSDK$PushObservable;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcn/bmob/push/PushSDK;->I:Lcn/bmob/push/PushSDK$PushObservable;

    return-object v0
.end method

.method static synthetic V(Lcn/bmob/push/PushSDK;)Lcn/bmob/push/lib/service/ISocketServiceCallback;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcn/bmob/push/PushSDK;->B:Lcn/bmob/push/lib/service/ISocketServiceCallback;

    return-object v0
.end method


# virtual methods
.method public final Code(Ljava/util/Observer;)V
    .locals 1

    .prologue
    .line 149
    if-nez p1, :cond_0

    .line 153
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcn/bmob/push/PushSDK;->I:Lcn/bmob/push/PushSDK$PushObservable;

    invoke-virtual {v0, p1}, Lcn/bmob/push/PushSDK$PushObservable;->addObserver(Ljava/util/Observer;)V

    goto :goto_0
.end method

.method public final I()V
    .locals 3

    .prologue
    .line 83
    :try_start_0
    iget-object v0, p0, Lcn/bmob/push/PushSDK;->V:Lcn/bmob/push/lib/service/ISocketService;

    if-eqz v0, :cond_1

    .line 84
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/bmob/push/lib/service/PushService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_0

    .line 87
    iget-object v1, p0, Lcn/bmob/push/PushSDK;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    :cond_0
    iget-object v1, p0, Lcn/bmob/push/PushSDK;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 90
    iget-object v0, p0, Lcn/bmob/push/PushSDK;->V:Lcn/bmob/push/lib/service/ISocketService;

    const/4 v1, 0x0

    iget-object v2, p0, Lcn/bmob/push/PushSDK;->B:Lcn/bmob/push/lib/service/ISocketServiceCallback;

    invoke-interface {v0, v1, v2}, Lcn/bmob/push/lib/service/ISocketService;->V(Landroid/os/Bundle;Lcn/bmob/push/lib/service/ISocketServiceCallback;)V

    .line 91
    iget-object v0, p0, Lcn/bmob/push/PushSDK;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/bmob/push/PushSDK;->Z:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/bmob/push/PushSDK;->V:Lcn/bmob/push/lib/service/ISocketService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_1
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final V()Z
    .locals 4

    .prologue
    .line 61
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 64
    const-class v1, Lcn/bmob/push/lib/service/PushService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_0

    .line 67
    iget-object v1, p0, Lcn/bmob/push/PushSDK;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    :cond_0
    iget-object v1, p0, Lcn/bmob/push/PushSDK;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 70
    iget-object v1, p0, Lcn/bmob/push/PushSDK;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/bmob/push/PushSDK;->Z:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 73
    :goto_0
    return v0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    const/4 v0, 0x0

    goto :goto_0
.end method
