.class public Lcn/volley/NetworkError;
.super Lcn/volley/VolleyError;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcn/volley/VolleyError;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcn/volley/NetworkResponse;)V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/volley/VolleyError;-><init>(Lcn/volley/NetworkResponse;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcn/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    .line 33
    return-void
.end method
