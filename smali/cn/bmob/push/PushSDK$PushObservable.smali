.class Lcn/bmob/push/PushSDK$PushObservable;
.super Ljava/util/Observable;
.source "SourceFile"


# direct methods
.method private constructor <init>(Lcn/bmob/push/PushSDK;)V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/bmob/push/PushSDK;B)V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcn/bmob/push/PushSDK$PushObservable;-><init>(Lcn/bmob/push/PushSDK;)V

    return-void
.end method


# virtual methods
.method public final Code(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 169
    invoke-virtual {p0}, Lcn/bmob/push/PushSDK$PushObservable;->setChanged()V

    .line 170
    invoke-virtual {p0, p1}, Lcn/bmob/push/PushSDK$PushObservable;->notifyObservers(Ljava/lang/Object;)V

    .line 171
    return-void
.end method
