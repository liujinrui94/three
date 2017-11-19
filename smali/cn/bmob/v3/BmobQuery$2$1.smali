.class final Lcn/bmob/v3/BmobQuery$2$1;
.super Lcn/bmob/v3/listener/FindListener;
.source "BmobQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/bmob/v3/BmobQuery$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/bmob/v3/listener/FindListener",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private synthetic Code:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lcn/bmob/v3/BmobQuery$2;Lrx/Subscriber;)V
    .locals 0

    .prologue
    .line 668
    iput-object p2, p0, Lcn/bmob/v3/BmobQuery$2$1;->Code:Lrx/Subscriber;

    invoke-direct {p0}, Lcn/bmob/v3/listener/FindListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic done(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 668
    .local p0, "this":Lcn/bmob/v3/BmobQuery$2$1;, "Lcn/bmob/v3/BmobQuery$2.1;"
    check-cast p1, Ljava/util/List;

    check-cast p2, Lcn/bmob/v3/exception/BmobException;

    invoke-virtual {p0, p1, p2}, Lcn/bmob/v3/BmobQuery$2$1;->done(Ljava/util/List;Lcn/bmob/v3/exception/BmobException;)V

    return-void
.end method

.method public final done(Ljava/util/List;Lcn/bmob/v3/exception/BmobException;)V
    .locals 1
    .param p2, "e"    # Lcn/bmob/v3/exception/BmobException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcn/bmob/v3/exception/BmobException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 671
    .local p0, "this":Lcn/bmob/v3/BmobQuery$2$1;, "Lcn/bmob/v3/BmobQuery$2.1;"
    .local p1, "t":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez p2, :cond_0

    .line 672
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery$2$1;->Code:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 676
    :goto_0
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery$2$1;->Code:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 677
    return-void

    .line 674
    :cond_0
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery$2$1;->Code:Lrx/Subscriber;

    invoke-virtual {v0, p2}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
