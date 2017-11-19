.class public abstract Lcn/bmob/v3/listener/PushListener;
.super Lcn/bmob/v3/listener/BmobCallback1;
.source "PushListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/bmob/v3/listener/BmobCallback1",
        "<",
        "Lcn/bmob/v3/exception/BmobException;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcn/bmob/v3/listener/BmobCallback1;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract done(Lcn/bmob/v3/exception/BmobException;)V
.end method

.method public bridge synthetic done(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lcn/bmob/v3/exception/BmobException;

    invoke-virtual {p0, p1}, Lcn/bmob/v3/listener/PushListener;->done(Lcn/bmob/v3/exception/BmobException;)V

    return-void
.end method
