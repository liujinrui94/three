.class final Lcn/bmob/v3/BmobQuery$1;
.super Ljava/lang/Object;
.source "BmobQuery.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/BmobQuery;->hasCachedResultObservable(Ljava/lang/Class;)Lrx/Observable;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic Code:Ljava/lang/Class;

.field private synthetic V:Lcn/bmob/v3/BmobQuery;


# direct methods
.method constructor <init>(Lcn/bmob/v3/BmobQuery;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcn/bmob/v3/BmobQuery$1;->V:Lcn/bmob/v3/BmobQuery;

    iput-object p2, p0, Lcn/bmob/v3/BmobQuery$1;->Code:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 478
    .local p0, "this":Lcn/bmob/v3/BmobQuery$1;, "Lcn/bmob/v3/BmobQuery.1;"
    check-cast p1, Lrx/Subscriber;

    .line 1481
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery$1;->V:Lcn/bmob/v3/BmobQuery;

    iget-object v1, p0, Lcn/bmob/v3/BmobQuery$1;->Code:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcn/bmob/v3/BmobQuery;->hasCachedResult(Ljava/lang/Class;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 478
    return-void
.end method
