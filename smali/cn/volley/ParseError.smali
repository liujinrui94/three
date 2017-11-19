.class public Lcn/volley/ParseError;
.super Lcn/volley/VolleyError;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcn/volley/VolleyError;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcn/volley/NetworkResponse;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcn/volley/VolleyError;-><init>(Lcn/volley/NetworkResponse;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcn/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    .line 35
    return-void
.end method
