.class final Lcn/bmob/v3/BmobQuery$3;
.super Ljava/lang/Object;
.source "BmobQuery.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/BmobQuery;->getObjectObservable(Ljava/lang/Class;Ljava/lang/String;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private synthetic Code:Ljava/lang/String;

.field private synthetic I:Lcn/bmob/v3/BmobQuery;

.field private synthetic V:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcn/bmob/v3/BmobQuery;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 712
    iput-object p1, p0, Lcn/bmob/v3/BmobQuery$3;->I:Lcn/bmob/v3/BmobQuery;

    iput-object p2, p0, Lcn/bmob/v3/BmobQuery$3;->Code:Ljava/lang/String;

    iput-object p3, p0, Lcn/bmob/v3/BmobQuery$3;->V:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 712
    .local p0, "this":Lcn/bmob/v3/BmobQuery$3;, "Lcn/bmob/v3/BmobQuery.3;"
    check-cast p1, Lrx/Subscriber;

    .line 1715
    invoke-virtual {p1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1716
    const-string v0, "bmob"

    const-string v1, "getObjectObservable: subscriber is unsubscribed "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    :goto_0
    return-void

    .line 1719
    :cond_0
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery$3;->I:Lcn/bmob/v3/BmobQuery;

    iget-object v1, p0, Lcn/bmob/v3/BmobQuery$3;->Code:Ljava/lang/String;

    iget-object v2, p0, Lcn/bmob/v3/BmobQuery$3;->V:Ljava/lang/Class;

    new-instance v3, Lcn/bmob/v3/BmobQuery$3$1;

    invoke-direct {v3, p0, p1}, Lcn/bmob/v3/BmobQuery$3$1;-><init>(Lcn/bmob/v3/BmobQuery$3;Lrx/Subscriber;)V

    invoke-static {v0, v1, v2, v3}, Lcn/bmob/v3/BmobQuery;->Code(Lcn/bmob/v3/BmobQuery;Ljava/lang/String;Ljava/lang/Class;Lcn/bmob/v3/listener/BmobCallback;)Lrx/Subscription;

    goto :goto_0
.end method
