.class public Lcn/volley/toolbox/JsonArrayRequest;
.super Lcn/volley/toolbox/JsonRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/volley/toolbox/JsonRequest",
        "<",
        "Lorg/json/JSONArray;",
        ">;"
    }
.end annotation


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
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcn/volley/NetworkResponse;->data:[B

    iget-object v2, p1, Lcn/volley/NetworkResponse;->bd:Ljava/util/Map;

    invoke-static {v2}, Lcn/volley/toolbox/HttpHeaderParser;->Code(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 50
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-static {p1}, Lcn/volley/toolbox/HttpHeaderParser;->V(Lcn/volley/NetworkResponse;)Lcn/volley/Cache$Entry;

    move-result-object v0

    .line 50
    invoke-static {v1, v0}, Lcn/volley/Response;->Code(Ljava/lang/Object;Lcn/volley/Cache$Entry;)Lcn/volley/Response;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 55
    :goto_0
    return-object v0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    new-instance v1, Lcn/volley/ParseError;

    invoke-direct {v1, v0}, Lcn/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcn/volley/Response;->B(Lcn/volley/VolleyError;)Lcn/volley/Response;

    move-result-object v0

    goto :goto_0

    .line 54
    :catch_1
    move-exception v0

    .line 55
    new-instance v1, Lcn/volley/ParseError;

    invoke-direct {v1, v0}, Lcn/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcn/volley/Response;->B(Lcn/volley/VolleyError;)Lcn/volley/Response;

    move-result-object v0

    goto :goto_0
.end method
