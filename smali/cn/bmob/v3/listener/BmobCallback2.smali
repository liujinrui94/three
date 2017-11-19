.class public abstract Lcn/bmob/v3/listener/BmobCallback2;
.super Lcn/bmob/v3/listener/BmobCallback;
.source "BmobCallback2.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        ">",
        "Lcn/bmob/v3/listener/BmobCallback;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcn/bmob/v3/listener/BmobCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract done(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;TT2;)V"
        }
    .end annotation
.end method
