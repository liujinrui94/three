.class public abstract Lcn/bmob/v3/listener/SQLQueryListener;
.super Lcn/bmob/v3/listener/BmobCallback2;
.source "SQLQueryListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcn/bmob/v3/listener/BmobCallback2",
        "<",
        "Lcn/bmob/v3/datatype/BmobQueryResult",
        "<TT;>;",
        "Lcn/bmob/v3/exception/BmobException;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcn/bmob/v3/listener/BmobCallback2;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract done(Lcn/bmob/v3/datatype/BmobQueryResult;Lcn/bmob/v3/exception/BmobException;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/bmob/v3/datatype/BmobQueryResult",
            "<TT;>;",
            "Lcn/bmob/v3/exception/BmobException;",
            ")V"
        }
    .end annotation
.end method

.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    .local p0, "this":Lcn/bmob/v3/listener/SQLQueryListener;, "Lcn/bmob/v3/listener/SQLQueryListener<TT;>;"
    check-cast p1, Lcn/bmob/v3/datatype/BmobQueryResult;

    check-cast p2, Lcn/bmob/v3/exception/BmobException;

    invoke-virtual {p0, p1, p2}, Lcn/bmob/v3/listener/SQLQueryListener;->done(Lcn/bmob/v3/datatype/BmobQueryResult;Lcn/bmob/v3/exception/BmobException;)V

    return-void
.end method
