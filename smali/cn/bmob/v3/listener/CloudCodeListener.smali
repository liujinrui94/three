.class public abstract Lcn/bmob/v3/listener/CloudCodeListener;
.super Lcn/bmob/v3/listener/BmobCallback2;
.source "CloudCodeListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/bmob/v3/listener/BmobCallback2",
        "<",
        "Ljava/lang/Object;",
        "Lcn/bmob/v3/exception/BmobException;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcn/bmob/v3/listener/BmobCallback2;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract done(Ljava/lang/Object;Lcn/bmob/v3/exception/BmobException;)V
.end method

.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 9
    check-cast p2, Lcn/bmob/v3/exception/BmobException;

    invoke-virtual {p0, p1, p2}, Lcn/bmob/v3/listener/CloudCodeListener;->done(Ljava/lang/Object;Lcn/bmob/v3/exception/BmobException;)V

    return-void
.end method
