.class public abstract Lcn/bmob/v3/listener/FindListener;
.super Lcn/bmob/v3/listener/BmobCallback2;
.source "FindListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcn/bmob/v3/listener/BmobCallback2",
        "<",
        "Ljava/util/List",
        "<TT;>;",
        "Lcn/bmob/v3/exception/BmobException;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcn/bmob/v3/listener/BmobCallback2;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    .local p0, "this":Lcn/bmob/v3/listener/FindListener;, "Lcn/bmob/v3/listener/FindListener<TT;>;"
    check-cast p1, Ljava/util/List;

    check-cast p2, Lcn/bmob/v3/exception/BmobException;

    invoke-virtual {p0, p1, p2}, Lcn/bmob/v3/listener/FindListener;->done(Ljava/util/List;Lcn/bmob/v3/exception/BmobException;)V

    return-void
.end method

.method public abstract done(Ljava/util/List;Lcn/bmob/v3/exception/BmobException;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcn/bmob/v3/exception/BmobException;",
            ")V"
        }
    .end annotation
.end method
