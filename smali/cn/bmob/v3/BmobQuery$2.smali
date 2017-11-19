.class final Lcn/bmob/v3/BmobQuery$2;
.super Ljava/lang/Object;
.source "BmobQuery.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/BmobQuery;->findObjectsObservable(Ljava/lang/Class;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Ljava/util/List",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private synthetic Code:Ljava/lang/Class;

.field private synthetic V:Lcn/bmob/v3/BmobQuery;


# direct methods
.method constructor <init>(Lcn/bmob/v3/BmobQuery;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 661
    iput-object p1, p0, Lcn/bmob/v3/BmobQuery$2;->V:Lcn/bmob/v3/BmobQuery;

    iput-object p2, p0, Lcn/bmob/v3/BmobQuery$2;->Code:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 661
    .local p0, "this":Lcn/bmob/v3/BmobQuery$2;, "Lcn/bmob/v3/BmobQuery.2;"
    check-cast p1, Lrx/Subscriber;

    .line 1664
    invoke-virtual {p1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1665
    const-string v0, "bmob"

    const-string v1, "findObjectsObservable: subscriber is unsubscribed "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    :goto_0
    return-void

    .line 1668
    :cond_0
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery$2;->V:Lcn/bmob/v3/BmobQuery;

    const/4 v1, 0x0

    iget-object v2, p0, Lcn/bmob/v3/BmobQuery$2;->Code:Ljava/lang/Class;

    new-instance v3, Lcn/bmob/v3/BmobQuery$2$1;

    invoke-direct {v3, p0, p1}, Lcn/bmob/v3/BmobQuery$2$1;-><init>(Lcn/bmob/v3/BmobQuery$2;Lrx/Subscriber;)V

    invoke-static {v0, v1, v2, v3}, Lcn/bmob/v3/BmobQuery;->Code(Lcn/bmob/v3/BmobQuery;Ljava/lang/String;Ljava/lang/Class;Lcn/bmob/v3/listener/BmobCallback;)Lrx/Subscription;

    goto :goto_0
.end method
