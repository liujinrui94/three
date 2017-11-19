.class public abstract Lcn/bmob/v3/listener/BmobCallback1;
.super Lcn/bmob/v3/listener/BmobCallback;
.source "BmobCallback1.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcn/bmob/v3/listener/BmobCallback;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcn/bmob/v3/listener/BmobCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract done(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
