.class public Lcn/volley/toolbox/BasicNetwork;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/volley/Network;


# static fields
.field protected static final DEBUG:Z

.field private static DEFAULT_POOL_SIZE:I

.field private static SLOW_REQUEST_THRESHOLD_MS:I


# instance fields
.field private bI:Lcn/volley/toolbox/HttpStack;

.field private bJ:Lcn/volley/toolbox/ByteArrayPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcn/volley/VolleyLog;->DEBUG:Z

    sput-boolean v0, Lcn/volley/toolbox/BasicNetwork;->DEBUG:Z

    .line 56
    const/16 v0, 0xbb8

    sput v0, Lcn/volley/toolbox/BasicNetwork;->SLOW_REQUEST_THRESHOLD_MS:I

    .line 58
    const/16 v0, 0x1000

    sput v0, Lcn/volley/toolbox/BasicNetwork;->DEFAULT_POOL_SIZE:I

    return-void
.end method

.method public constructor <init>(Lcn/volley/toolbox/HttpStack;)V
    .locals 2

    .prologue
    .line 72
    new-instance v0, Lcn/volley/toolbox/ByteArrayPool;

    sget v1, Lcn/volley/toolbox/BasicNetwork;->DEFAULT_POOL_SIZE:I

    invoke-direct {v0, v1}, Lcn/volley/toolbox/ByteArrayPool;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcn/volley/toolbox/BasicNetwork;-><init>(Lcn/volley/toolbox/HttpStack;Lcn/volley/toolbox/ByteArrayPool;)V

    .line 73
    return-void
.end method

.method private constructor <init>(Lcn/volley/toolbox/HttpStack;Lcn/volley/toolbox/ByteArrayPool;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcn/volley/toolbox/BasicNetwork;->bI:Lcn/volley/toolbox/HttpStack;

    .line 83
    iput-object p2, p0, Lcn/volley/toolbox/BasicNetwork;->bJ:Lcn/volley/toolbox/ByteArrayPool;

    .line 84
    return-void
.end method

.method private static Code([Lorg/apache/http/Header;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/http/Header;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 269
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 272
    return-object v1

    .line 270
    :cond_0
    aget-object v2, p0, v0

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static Code(Ljava/lang/String;Lcn/volley/Request;Lcn/volley/VolleyError;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/volley/Request",
            "<*>;",
            "Lcn/volley/VolleyError;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 195
    invoke-virtual {p1}, Lcn/volley/Request;->z()Lcn/volley/RetryPolicy;

    move-result-object v0

    .line 196
    invoke-virtual {p1}, Lcn/volley/Request;->y()I

    move-result v1

    .line 199
    :try_start_0
    invoke-interface {v0, p2}, Lcn/volley/RetryPolicy;->V(Lcn/volley/VolleyError;)V
    :try_end_0
    .catch Lcn/volley/VolleyError; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    const-string v0, "%s-retry [timeout=%s]"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v4

    .line 206
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    .line 205
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/volley/Request;->F(Ljava/lang/String;)V

    .line 207
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    const-string v2, "%s-timeout-giveup [timeout=%s]"

    new-array v3, v3, [Ljava/lang/Object;

    .line 202
    aput-object p0, v3, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    .line 201
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/volley/Request;->F(Ljava/lang/String;)V

    .line 203
    throw v0
.end method

.method private Code(Lorg/apache/http/HttpEntity;)[B
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 234
    new-instance v2, Lcn/volley/toolbox/PoolingByteArrayOutputStream;

    .line 235
    iget-object v0, p0, Lcn/volley/toolbox/BasicNetwork;->bJ:Lcn/volley/toolbox/ByteArrayPool;

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    long-to-int v1, v4

    .line 234
    invoke-direct {v2, v0, v1}, Lcn/volley/toolbox/PoolingByteArrayOutputStream;-><init>(Lcn/volley/toolbox/ByteArrayPool;I)V

    .line 236
    const/4 v1, 0x0

    .line 238
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 239
    if-nez v0, :cond_0

    .line 240
    new-instance v0, Lcn/volley/ServerError;

    invoke-direct {v0}, Lcn/volley/ServerError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    :catchall_0
    move-exception v0

    .line 252
    :try_start_1
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 259
    :goto_0
    iget-object v3, p0, Lcn/volley/toolbox/BasicNetwork;->bJ:Lcn/volley/toolbox/ByteArrayPool;

    invoke-virtual {v3, v1}, Lcn/volley/toolbox/ByteArrayPool;->V([B)V

    .line 260
    invoke-virtual {v2}, Lcn/volley/toolbox/PoolingByteArrayOutputStream;->close()V

    .line 261
    throw v0

    .line 242
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcn/volley/toolbox/BasicNetwork;->bJ:Lcn/volley/toolbox/ByteArrayPool;

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Lcn/volley/toolbox/ByteArrayPool;->I(I)[B

    move-result-object v1

    .line 244
    :goto_1
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 247
    invoke-virtual {v2}, Lcn/volley/toolbox/PoolingByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 252
    :try_start_3
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 259
    :goto_2
    iget-object v3, p0, Lcn/volley/toolbox/BasicNetwork;->bJ:Lcn/volley/toolbox/ByteArrayPool;

    invoke-virtual {v3, v1}, Lcn/volley/toolbox/ByteArrayPool;->V([B)V

    .line 260
    invoke-virtual {v2}, Lcn/volley/toolbox/PoolingByteArrayOutputStream;->close()V

    .line 247
    return-object v0

    .line 245
    :cond_1
    const/4 v4, 0x0

    :try_start_4
    invoke-virtual {v2, v1, v4, v3}, Lcn/volley/toolbox/PoolingByteArrayOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 257
    :catch_0
    move-exception v3

    const-string v3, "Error occured when calling consumingContent"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcn/volley/VolleyLog;->Code(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :catch_1
    move-exception v3

    const-string v3, "Error occured when calling consumingContent"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcn/volley/VolleyLog;->Code(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final Code(Lcn/volley/Request;)Lcn/volley/NetworkResponse;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/volley/Request",
            "<*>;)",
            "Lcn/volley/NetworkResponse;"
        }
    .end annotation

    .prologue
    .line 89
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 91
    :goto_0
    const/4 v3, 0x0

    .line 92
    const/4 v2, 0x0

    .line 93
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 96
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 97
    invoke-virtual {p1}, Lcn/volley/Request;->r()Lcn/volley/Cache$Entry;

    move-result-object v4

    .line 1211
    if-eqz v4, :cond_1

    .line 1215
    iget-object v5, v4, Lcn/volley/Cache$Entry;->aG:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 1216
    const-string v5, "If-None-Match"

    iget-object v8, v4, Lcn/volley/Cache$Entry;->aG:Ljava/lang/String;

    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    :cond_0
    iget-wide v8, v4, Lcn/volley/Cache$Entry;->aH:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-lez v5, :cond_1

    .line 1220
    new-instance v5, Ljava/util/Date;

    iget-wide v8, v4, Lcn/volley/Cache$Entry;->aH:J

    invoke-direct {v5, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 1221
    const-string v4, "If-Modified-Since"

    invoke-static {v5}, Lorg/apache/http/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_1
    iget-object v4, p0, Lcn/volley/toolbox/BasicNetwork;->bI:Lcn/volley/toolbox/HttpStack;

    invoke-interface {v4, p1, v0}, Lcn/volley/toolbox/HttpStack;->Code(Lcn/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 99
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    .line 100
    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 102
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    invoke-static {v0}, Lcn/volley/toolbox/BasicNetwork;->Code([Lorg/apache/http/Header;)Ljava/util/Map;

    move-result-object v1

    .line 104
    const/16 v0, 0x130

    if-ne v5, v0, :cond_3

    .line 105
    new-instance v0, Lcn/volley/NetworkResponse;

    const/16 v5, 0x130

    .line 106
    invoke-virtual {p1}, Lcn/volley/Request;->r()Lcn/volley/Cache$Entry;

    move-result-object v4

    if-nez v4, :cond_2

    const/4 v4, 0x0

    .line 108
    :goto_1
    const/4 v8, 0x1

    .line 105
    invoke-direct {v0, v5, v4, v1, v8}, Lcn/volley/NetworkResponse;-><init>(I[BLjava/util/Map;Z)V

    .line 132
    :goto_2
    return-object v0

    .line 107
    :cond_2
    invoke-virtual {p1}, Lcn/volley/Request;->r()Lcn/volley/Cache$Entry;

    move-result-object v4

    iget-object v4, v4, Lcn/volley/Cache$Entry;->data:[B

    goto :goto_1

    .line 113
    :cond_3
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 114
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/volley/toolbox/BasicNetwork;->Code(Lorg/apache/http/HttpEntity;)[B

    move-result-object v2

    .line 122
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v6

    .line 2174
    sget-boolean v0, Lcn/volley/toolbox/BasicNetwork;->DEBUG:Z

    if-nez v0, :cond_4

    sget v0, Lcn/volley/toolbox/BasicNetwork;->SLOW_REQUEST_THRESHOLD_MS:I

    int-to-long v10, v0

    cmp-long v0, v8, v10

    if-lez v0, :cond_5

    .line 2176
    :cond_4
    const-string v10, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    const/4 v0, 0x5

    new-array v11, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2177
    aput-object p1, v11, v0

    const/4 v0, 0x1

    .line 2178
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v11, v0

    const/4 v8, 0x2

    .line 2179
    if-eqz v2, :cond_8

    array-length v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2180
    :goto_4
    aput-object v0, v11, v8

    const/4 v0, 0x3

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v11, v0

    const/4 v0, 0x4

    .line 2181
    invoke-virtual {p1}, Lcn/volley/Request;->z()Lcn/volley/RetryPolicy;

    move-result-object v4

    invoke-interface {v4}, Lcn/volley/RetryPolicy;->o()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v11, v0

    .line 2176
    invoke-static {v10, v11}, Lcn/volley/VolleyLog;->V(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    :cond_5
    const/16 v0, 0xc8

    if-lt v5, v0, :cond_6

    const/16 v0, 0x12b

    if-le v5, v0, :cond_9

    .line 128
    :cond_6
    const/16 v0, 0x190

    if-eq v5, v0, :cond_9

    .line 129
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 135
    :catch_0
    move-exception v0

    const-string v0, "socket"

    new-instance v1, Lcn/volley/TimeoutError;

    invoke-direct {v1}, Lcn/volley/TimeoutError;-><init>()V

    invoke-static {v0, p1, v1}, Lcn/volley/toolbox/BasicNetwork;->Code(Ljava/lang/String;Lcn/volley/Request;Lcn/volley/VolleyError;)V

    goto/16 :goto_0

    .line 118
    :cond_7
    const/4 v0, 0x0

    :try_start_1
    new-array v2, v0, [B

    goto :goto_3

    .line 2180
    :cond_8
    const-string v0, "null"

    goto :goto_4

    .line 132
    :cond_9
    new-instance v0, Lcn/volley/NetworkResponse;

    .line 133
    const/4 v4, 0x0

    .line 132
    invoke-direct {v0, v5, v2, v1, v4}, Lcn/volley/NetworkResponse;-><init>(I[BLjava/util/Map;Z)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_2

    .line 137
    :catch_1
    move-exception v0

    const-string v0, "connection"

    .line 138
    new-instance v1, Lcn/volley/TimeoutError;

    invoke-direct {v1}, Lcn/volley/TimeoutError;-><init>()V

    .line 137
    invoke-static {v0, p1, v1}, Lcn/volley/toolbox/BasicNetwork;->Code(Ljava/lang/String;Lcn/volley/Request;Lcn/volley/VolleyError;)V

    goto/16 :goto_0

    .line 139
    :catch_2
    move-exception v0

    .line 140
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bad URL "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 141
    :catch_3
    move-exception v0

    .line 144
    if-eqz v3, :cond_b

    .line 145
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 149
    const-string v3, "Unexpected response code %d for %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x1

    .line 150
    invoke-virtual {p1}, Lcn/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    .line 149
    invoke-static {v3, v4}, Lcn/volley/VolleyLog;->I(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    if-eqz v2, :cond_d

    .line 152
    new-instance v3, Lcn/volley/NetworkResponse;

    .line 153
    const/4 v4, 0x0

    .line 152
    invoke-direct {v3, v0, v2, v1, v4}, Lcn/volley/NetworkResponse;-><init>(I[BLjava/util/Map;Z)V

    .line 154
    const/16 v1, 0x191

    if-eq v0, v1, :cond_a

    .line 155
    const/16 v1, 0x193

    if-ne v0, v1, :cond_c

    .line 156
    :cond_a
    const-string v0, "auth"

    .line 157
    new-instance v1, Lcn/volley/AuthFailureError;

    invoke-direct {v1, v3}, Lcn/volley/AuthFailureError;-><init>(Lcn/volley/NetworkResponse;)V

    .line 156
    invoke-static {v0, p1, v1}, Lcn/volley/toolbox/BasicNetwork;->Code(Ljava/lang/String;Lcn/volley/Request;Lcn/volley/VolleyError;)V

    goto/16 :goto_0

    .line 147
    :cond_b
    new-instance v1, Lcn/volley/NoConnectionError;

    invoke-direct {v1, v0}, Lcn/volley/NoConnectionError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 160
    :cond_c
    new-instance v0, Lcn/volley/ServerError;

    invoke-direct {v0, v3}, Lcn/volley/ServerError;-><init>(Lcn/volley/NetworkResponse;)V

    throw v0

    .line 163
    :cond_d
    new-instance v0, Lcn/volley/NetworkError;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/volley/NetworkError;-><init>(Lcn/volley/NetworkResponse;)V

    throw v0
.end method
