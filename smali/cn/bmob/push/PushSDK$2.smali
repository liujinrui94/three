.class Lcn/bmob/push/PushSDK$2;
.super Lcn/bmob/push/lib/service/ISocketServiceCallback$Stub;
.source "SourceFile"


# instance fields
.field private synthetic C:Lcn/bmob/push/PushSDK;


# direct methods
.method constructor <init>(Lcn/bmob/push/PushSDK;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/bmob/push/PushSDK$2;->C:Lcn/bmob/push/PushSDK;

    .line 128
    invoke-direct {p0}, Lcn/bmob/push/lib/service/ISocketServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final Code(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 133
    :try_start_0
    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcn/bmob/push/PushSDK$2;->C:Lcn/bmob/push/PushSDK;

    invoke-static {v1}, Lcn/bmob/push/PushSDK;->I(Lcn/bmob/push/PushSDK;)Lcn/bmob/push/PushSDK$PushObservable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcn/bmob/push/PushSDK$2;->C:Lcn/bmob/push/PushSDK;

    invoke-static {v1}, Lcn/bmob/push/PushSDK;->I(Lcn/bmob/push/PushSDK;)Lcn/bmob/push/PushSDK$PushObservable;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Lcn/bmob/push/PushSDK$PushObservable;->Code(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 139
    iget-object v0, p0, Lcn/bmob/push/PushSDK$2;->C:Lcn/bmob/push/PushSDK;

    invoke-virtual {v0}, Lcn/bmob/push/PushSDK;->V()Z

    goto :goto_0
.end method
