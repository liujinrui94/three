.class final Lcn/bmob/v3/http/a/From$1;
.super Ljava/lang/Object;
.source "PolicyQuery.java"

# interfaces
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/http/a/From;->Code(Lrx/Observable;Lcn/bmob/v3/listener/QueryListener;)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observer",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic Code:Lcn/bmob/v3/listener/QueryListener;

.field private synthetic V:Lcn/bmob/v3/http/a/From;


# direct methods
.method constructor <init>(Lcn/bmob/v3/http/a/From;Lcn/bmob/v3/listener/QueryListener;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcn/bmob/v3/http/a/From$1;->V:Lcn/bmob/v3/http/a/From;

    iput-object p2, p0, Lcn/bmob/v3/http/a/From$1;->Code:Lcn/bmob/v3/listener/QueryListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcn/bmob/v3/http/a/From$1;->Code:Lcn/bmob/v3/listener/QueryListener;

    invoke-virtual {v0}, Lcn/bmob/v3/listener/QueryListener;->onFinish()V

    .line 81
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 85
    .local p0, "this":Lcn/bmob/v3/http/a/From$1;, "Lcn/bmob/v3/http/a/From.1;"
    iget-object v0, p0, Lcn/bmob/v3/http/a/From$1;->Code:Lcn/bmob/v3/listener/QueryListener;

    invoke-static {p1, v0}, Lcn/bmob/v3/http/a/From;->Code(Ljava/lang/Throwable;Lcn/bmob/v3/listener/BmobCallback;)V

    .line 86
    return-void
.end method

.method public final synthetic onNext(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 77
    .local p0, "this":Lcn/bmob/v3/http/a/From$1;, "Lcn/bmob/v3/http/a/From.1;"
    check-cast p1, Ljava/lang/String;

    .line 1090
    iget-object v0, p0, Lcn/bmob/v3/http/a/From$1;->Code:Lcn/bmob/v3/listener/QueryListener;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcn/bmob/v3/listener/QueryListener;->done(Ljava/lang/Object;Lcn/bmob/v3/exception/BmobException;)V

    .line 77
    return-void
.end method
