.class public final Lcn/bmob/v3/http/acknowledge;
.super Ljava/lang/Object;
.source "RxBmob.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/bmob/v3/http/acknowledge$This;
    }
.end annotation


# instance fields
.field final Code:Lrx/Observable;

.field final V:Lrx/Subscription;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcn/bmob/v3/http/acknowledge$This;

    invoke-direct {v0}, Lcn/bmob/v3/http/acknowledge$This;-><init>()V

    invoke-direct {p0, v0}, Lcn/bmob/v3/http/acknowledge;-><init>(Lcn/bmob/v3/http/acknowledge$This;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lcn/bmob/v3/http/acknowledge$This;)V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iget-object v0, p1, Lcn/bmob/v3/http/acknowledge$This;->Code:Lrx/Observable;

    invoke-static {}, Lcn/bmob/v3/http/This;->V()Lrx/Observable$Transformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/http/acknowledge;->Code:Lrx/Observable;

    .line 67
    iget-object v0, p1, Lcn/bmob/v3/http/acknowledge$This;->V:Lrx/Subscription;

    iput-object v0, p0, Lcn/bmob/v3/http/acknowledge;->V:Lrx/Subscription;

    .line 68
    return-void
.end method


# virtual methods
.method public final Code()Lrx/Observable;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcn/bmob/v3/http/acknowledge;->Code:Lrx/Observable;

    invoke-virtual {v0}, Lrx/Observable;->asObservable()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final V()Lrx/Subscription;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcn/bmob/v3/http/acknowledge;->V:Lrx/Subscription;

    return-object v0
.end method
