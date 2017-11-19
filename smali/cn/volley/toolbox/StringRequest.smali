.class public Lcn/volley/toolbox/StringRequest;
.super Lcn/volley/Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/volley/Request",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final cm:Lcn/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/volley/Response$Listener",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method protected final synthetic C(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    .line 1060
    iget-object v0, p0, Lcn/volley/toolbox/StringRequest;->cm:Lcn/volley/Response$Listener;

    invoke-interface {v0, p1}, Lcn/volley/Response$Listener;->Z(Ljava/lang/Object;)V

    .line 1
    return-void
.end method

.method protected final Code(Lcn/volley/NetworkResponse;)Lcn/volley/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/volley/NetworkResponse;",
            ")",
            "Lcn/volley/Response",
            "<",
            "Ljava/lang/String;",
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
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    invoke-static {p1}, Lcn/volley/toolbox/HttpHeaderParser;->V(Lcn/volley/NetworkResponse;)Lcn/volley/Cache$Entry;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/volley/Response;->Code(Ljava/lang/Object;Lcn/volley/Cache$Entry;)Lcn/volley/Response;

    move-result-object v0

    return-object v0

    .line 69
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcn/volley/NetworkResponse;->data:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method
