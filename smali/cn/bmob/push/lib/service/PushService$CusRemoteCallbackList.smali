.class Lcn/bmob/push/lib/service/PushService$CusRemoteCallbackList;
.super Landroid/os/RemoteCallbackList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Landroid/os/IInterface;",
        ">",
        "Landroid/os/RemoteCallbackList",
        "<TE;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcn/bmob/push/lib/service/PushService;)V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/bmob/push/lib/service/PushService;B)V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcn/bmob/push/lib/service/PushService$CusRemoteCallbackList;-><init>(Lcn/bmob/push/lib/service/PushService;)V

    return-void
.end method


# virtual methods
.method public onCallbackDied(Landroid/os/IInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 212
    invoke-super {p0, p1}, Landroid/os/RemoteCallbackList;->onCallbackDied(Landroid/os/IInterface;)V

    .line 214
    return-void
.end method

.method public onCallbackDied(Landroid/os/IInterface;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 218
    invoke-super {p0, p1, p2}, Landroid/os/RemoteCallbackList;->onCallbackDied(Landroid/os/IInterface;Ljava/lang/Object;)V

    .line 219
    return-void
.end method
