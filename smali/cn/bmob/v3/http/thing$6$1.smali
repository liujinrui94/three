.class final Lcn/bmob/v3/http/thing$6$1;
.super Lcn/bmob/v3/listener/UpdateListener;
.source "BmobFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/bmob/v3/http/thing$6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic Code:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lcn/bmob/v3/http/thing$6;Lrx/Subscriber;)V
    .locals 0

    .prologue
    .line 423
    iput-object p2, p0, Lcn/bmob/v3/http/thing$6$1;->Code:Lrx/Subscriber;

    invoke-direct {p0}, Lcn/bmob/v3/listener/UpdateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final done(Lcn/bmob/v3/exception/BmobException;)V
    .locals 2
    .param p1, "e"    # Lcn/bmob/v3/exception/BmobException;

    .prologue
    .line 426
    if-nez p1, :cond_0

    .line 427
    const-string v0, "saveCDN success"

    invoke-static {v0}, Lcn/bmob/v3/b/This;->V(Ljava/lang/String;)V

    .line 431
    :goto_0
    iget-object v0, p0, Lcn/bmob/v3/http/thing$6$1;->Code:Lrx/Subscriber;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 432
    iget-object v0, p0, Lcn/bmob/v3/http/thing$6$1;->Code:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 433
    return-void

    .line 429
    :cond_0
    invoke-virtual {p1}, Lcn/bmob/v3/exception/BmobException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/bmob/v3/b/This;->Code(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final bridge synthetic done(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 423
    check-cast p1, Lcn/bmob/v3/exception/BmobException;

    invoke-virtual {p0, p1}, Lcn/bmob/v3/http/thing$6$1;->done(Lcn/bmob/v3/exception/BmobException;)V

    return-void
.end method
