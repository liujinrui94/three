.class public Lcn/volley/toolbox/JsonObjectRequest;
.super Lcn/volley/toolbox/JsonRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/volley/toolbox/JsonRequest",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/json/JSONObject;Lcn/volley/Response$Listener;Lcn/volley/Response$ErrorListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcn/volley/Response$Listener",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcn/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 48
    invoke-direct/range {v0 .. v5}, Lcn/volley/toolbox/JsonRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcn/volley/Response$Listener;Lcn/volley/Response$ErrorListener;)V

    .line 49
    return-void
.end method


# virtual methods
.method protected final Code(Lcn/volley/NetworkResponse;)Lcn/volley/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/volley/NetworkResponse;",
            ")",
            "Lcn/volley/Response",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcn/volley/NetworkResponse;->data:[B

    iget-object v2, p1, Lcn/volley/NetworkResponse;->bd:Ljava/util/Map;

    invoke-static {v2}, Lcn/volley/toolbox/HttpHeaderParser;->Code(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 68
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-static {p1}, Lcn/volley/toolbox/HttpHeaderParser;->V(Lcn/volley/NetworkResponse;)Lcn/volley/Cache$Entry;

    move-result-object v0

    .line 68
    invoke-static {v1, v0}, Lcn/volley/Response;->Code(Ljava/lang/Object;Lcn/volley/Cache$Entry;)Lcn/volley/Response;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 73
    :goto_0
    return-object v0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    new-instance v1, Lcn/volley/ParseError;

    invoke-direct {v1, v0}, Lcn/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcn/volley/Response;->B(Lcn/volley/VolleyError;)Lcn/volley/Response;

    move-result-object v0

    goto :goto_0

    .line 72
    :catch_1
    move-exception v0

    .line 73
    new-instance v1, Lcn/volley/ParseError;

    invoke-direct {v1, v0}, Lcn/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcn/volley/Response;->B(Lcn/volley/VolleyError;)Lcn/volley/Response;

    move-result-object v0

    goto :goto_0
.end method
