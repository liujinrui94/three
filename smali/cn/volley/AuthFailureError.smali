.class public Lcn/volley/AuthFailureError;
.super Lcn/volley/VolleyError;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcn/volley/VolleyError;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcn/volley/NetworkResponse;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcn/volley/VolleyError;-><init>(Lcn/volley/NetworkResponse;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Lcn/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
