.class public Lcn/volley/ServerError;
.super Lcn/volley/VolleyError;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcn/volley/VolleyError;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcn/volley/NetworkResponse;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcn/volley/VolleyError;-><init>(Lcn/volley/NetworkResponse;)V

    .line 29
    return-void
.end method
