.class public Lcn/bmob/push/BmobPush;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setDebugMode(Z)V
    .locals 0

    .prologue
    .line 15
    sput-boolean p0, Lcn/bmob/push/config/Constant;->DEBUG_MODE:Z

    .line 16
    return-void
.end method

.method public static startWork(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lcn/bmob/push/lib/service/Client;

    invoke-direct {v0, p0}, Lcn/bmob/push/lib/service/Client;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v1, Lcn/bmob/push/BmobPush$1;

    invoke-direct {v1, p0}, Lcn/bmob/push/BmobPush$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcn/bmob/push/lib/service/Client;->Code(Lcn/bmob/push/lib/service/Client$VolleyListener;)V

    .line 32
    return-void
.end method

.method public static stopWork()V
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcn/bmob/push/PushSDK;->Code()Lcn/bmob/push/PushSDK;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Lcn/bmob/push/PushSDK;->I()V

    .line 43
    :cond_0
    return-void
.end method
