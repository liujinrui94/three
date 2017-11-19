.class final Lcn/bmob/v3/http/c/This$1;
.super Ljava/lang/Object;
.source "RetryWithDelay.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/bmob/v3/http/c/This;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Ljava/lang/Throwable;",
        "Lrx/Observable",
        "<*>;>;"
    }
.end annotation


# instance fields
.field private synthetic Code:Lcn/bmob/v3/http/c/This;


# direct methods
.method constructor <init>(Lcn/bmob/v3/http/c/This;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcn/bmob/v3/http/c/This$1;->Code:Lcn/bmob/v3/http/c/This;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 26
    check-cast p1, Ljava/lang/Throwable;

    .line 1029
    iget-object v0, p0, Lcn/bmob/v3/http/c/This$1;->Code:Lcn/bmob/v3/http/c/This;

    invoke-static {v0}, Lcn/bmob/v3/http/c/This;->Code(Lcn/bmob/v3/http/c/This;)I

    move-result v0

    iget-object v1, p0, Lcn/bmob/v3/http/c/This$1;->Code:Lcn/bmob/v3/http/c/This;

    invoke-static {v1}, Lcn/bmob/v3/http/c/This;->V(Lcn/bmob/v3/http/c/This;)I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 1030
    iget-object v0, p0, Lcn/bmob/v3/http/c/This$1;->Code:Lcn/bmob/v3/http/c/This;

    invoke-static {v0}, Lcn/bmob/v3/http/c/This;->I(Lcn/bmob/v3/http/c/This;)I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lrx/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1033
    :cond_0
    invoke-static {p1}, Lrx/Observable;->error(Ljava/lang/Throwable;)Lrx/Observable;

    move-result-object v0

    goto :goto_0
.end method
