.class public final Lcn/bmob/v3/http/b/thing;
.super Ljava/lang/Object;
.source "HttpLoggingInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/bmob/v3/http/b/thing$thing;,
        Lcn/bmob/v3/http/b/thing$This;
    }
.end annotation


# static fields
.field private static final Code:Ljava/nio/charset/Charset;


# instance fields
.field private volatile I:I

.field private final V:Lcn/bmob/v3/http/b/thing$thing;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcn/bmob/v3/http/b/thing;->Code:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcn/bmob/v3/http/b/thing$thing;->Code:Lcn/bmob/v3/http/b/thing$thing;

    invoke-direct {p0, v0}, Lcn/bmob/v3/http/b/thing;-><init>(Lcn/bmob/v3/http/b/thing$thing;)V

    .line 101
    return-void
.end method

.method private constructor <init>(Lcn/bmob/v3/http/b/thing$thing;)V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    sget v0, Lcn/bmob/v3/http/b/thing$This;->Code:I

    iput v0, p0, Lcn/bmob/v3/http/b/thing;->I:I

    .line 104
    iput-object p1, p0, Lcn/bmob/v3/http/b/thing;->V:Lcn/bmob/v3/http/b/thing$thing;

    .line 105
    return-void
.end method

.method private static Code(Lokhttp3/Headers;)Z
    .locals 2

    .prologue
    .line 233
    const-string v0, "Content-Encoding"

    invoke-virtual {p0, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_0

    const-string v1, "identity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final Code(I)Lcn/bmob/v3/http/b/thing;
    .locals 2

    .prologue
    .line 113
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "level == null. Use Level.NONE instead."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    iput p1, p0, Lcn/bmob/v3/http/b/thing;->I:I

    .line 115
    return-object p0
.end method

.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 12
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    iget v1, p0, Lcn/bmob/v3/http/b/thing;->I:I

    .line 125
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v4

    .line 126
    sget v0, Lcn/bmob/v3/http/b/thing$This;->Code:I

    if-ne v1, v0, :cond_0

    .line 127
    invoke-interface {p1, v4}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    .line 229
    :goto_0
    return-object v0

    .line 130
    :cond_0
    sget v0, Lcn/bmob/v3/http/b/thing$This;->I:I

    if-ne v1, v0, :cond_6

    const/4 v0, 0x1

    move v3, v0

    .line 131
    :goto_1
    if-nez v3, :cond_1

    sget v0, Lcn/bmob/v3/http/b/thing$This;->V:I

    if-ne v1, v0, :cond_7

    :cond_1
    const/4 v0, 0x1

    .line 133
    :goto_2
    invoke-virtual {v4}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v5

    .line 134
    if-eqz v5, :cond_8

    const/4 v1, 0x1

    .line 136
    :goto_3
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->connection()Lokhttp3/Connection;

    move-result-object v2

    .line 137
    if-eqz v2, :cond_9

    invoke-interface {v2}, Lokhttp3/Connection;->protocol()Lokhttp3/Protocol;

    move-result-object v2

    .line 138
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "--> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1238
    sget-object v7, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    if-ne v2, v7, :cond_a

    const-string v2, "HTTP/1.0"

    .line 138
    :goto_5
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 140
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 141
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " ("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "-byte body)"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 143
    :cond_2
    iget-object v6, p0, Lcn/bmob/v3/http/b/thing;->V:Lcn/bmob/v3/http/b/thing$thing;

    invoke-interface {v6, v2}, Lcn/bmob/v3/http/b/thing$thing;->Code(Ljava/lang/String;)V

    .line 145
    if-eqz v0, :cond_d

    .line 146
    if-eqz v1, :cond_4

    .line 149
    invoke-virtual {v5}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 150
    iget-object v2, p0, Lcn/bmob/v3/http/b/thing;->V:Lcn/bmob/v3/http/b/thing$thing;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Content-Type: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lcn/bmob/v3/http/b/thing$thing;->Code(Ljava/lang/String;)V

    .line 152
    :cond_3
    invoke-virtual {v5}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v2, v6, v8

    if-eqz v2, :cond_4

    .line 153
    iget-object v2, p0, Lcn/bmob/v3/http/b/thing;->V:Lcn/bmob/v3/http/b/thing$thing;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Content-Length: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lcn/bmob/v3/http/b/thing$thing;->Code(Ljava/lang/String;)V

    .line 157
    :cond_4
    invoke-virtual {v4}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v6

    .line 158
    const/4 v2, 0x0

    invoke-virtual {v6}, Lokhttp3/Headers;->size()I

    move-result v7

    :goto_6
    if-ge v2, v7, :cond_b

    .line 159
    invoke-virtual {v6, v2}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v8

    .line 161
    const-string v9, "Content-Type"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "Content-Length"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 162
    iget-object v9, p0, Lcn/bmob/v3/http/b/thing;->V:Lcn/bmob/v3/http/b/thing$thing;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ": "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6, v2}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9, v8}, Lcn/bmob/v3/http/b/thing$thing;->Code(Ljava/lang/String;)V

    .line 158
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 130
    :cond_6
    const/4 v0, 0x0

    move v3, v0

    goto/16 :goto_1

    .line 131
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 134
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 137
    :cond_9
    sget-object v2, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    goto/16 :goto_4

    .line 1238
    :cond_a
    const-string v2, "HTTP/1.1"

    goto/16 :goto_5

    .line 166
    :cond_b
    if-eqz v3, :cond_c

    if-nez v1, :cond_e

    .line 167
    :cond_c
    iget-object v1, p0, Lcn/bmob/v3/http/b/thing;->V:Lcn/bmob/v3/http/b/thing$thing;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "--> END "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcn/bmob/v3/http/b/thing$thing;->Code(Ljava/lang/String;)V

    .line 188
    :cond_d
    :goto_7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 189
    invoke-interface {p1, v4}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v2

    .line 190
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 192
    invoke-virtual {v2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v6

    .line 193
    invoke-virtual {v6}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v8

    .line 194
    const-wide/16 v10, -0x1

    cmp-long v1, v8, v10

    if-eqz v1, :cond_11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "-byte"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 195
    :goto_8
    iget-object v7, p0, Lcn/bmob/v3/http/b/thing;->V:Lcn/bmob/v3/http/b/thing$thing;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "<-- "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lokhttp3/Response;->code()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v11

    invoke-virtual {v11}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v0, :cond_12

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " body"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_9
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v4, 0x29

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Lcn/bmob/v3/http/b/thing$thing;->Code(Ljava/lang/String;)V

    .line 199
    if-eqz v0, :cond_15

    .line 200
    invoke-virtual {v2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v1

    .line 201
    const/4 v0, 0x0

    invoke-virtual {v1}, Lokhttp3/Headers;->size()I

    move-result v4

    :goto_a
    if-ge v0, v4, :cond_13

    .line 202
    iget-object v5, p0, Lcn/bmob/v3/http/b/thing;->V:Lcn/bmob/v3/http/b/thing$thing;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ": "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1, v0}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Lcn/bmob/v3/http/b/thing$thing;->Code(Ljava/lang/String;)V

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 168
    :cond_e
    invoke-virtual {v4}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v1

    invoke-static {v1}, Lcn/bmob/v3/http/b/thing;->Code(Lokhttp3/Headers;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 169
    iget-object v1, p0, Lcn/bmob/v3/http/b/thing;->V:Lcn/bmob/v3/http/b/thing$thing;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "--> END "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " (encoded body omitted)"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcn/bmob/v3/http/b/thing$thing;->Code(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 171
    :cond_f
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    .line 172
    invoke-virtual {v5, v2}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 174
    sget-object v1, Lcn/bmob/v3/http/b/thing;->Code:Ljava/nio/charset/Charset;

    .line 175
    invoke-virtual {v5}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v6

    .line 176
    if-eqz v6, :cond_10

    .line 177
    sget-object v1, Lcn/bmob/v3/http/b/thing;->Code:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v1}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 180
    :cond_10
    iget-object v6, p0, Lcn/bmob/v3/http/b/thing;->V:Lcn/bmob/v3/http/b/thing$thing;

    const-string v7, ""

    invoke-interface {v6, v7}, Lcn/bmob/v3/http/b/thing$thing;->Code(Ljava/lang/String;)V

    .line 181
    iget-object v6, p0, Lcn/bmob/v3/http/b/thing;->V:Lcn/bmob/v3/http/b/thing$thing;

    invoke-virtual {v2, v1}, Lokio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Lcn/bmob/v3/http/b/thing$thing;->Code(Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcn/bmob/v3/http/b/thing;->V:Lcn/bmob/v3/http/b/thing$thing;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "--> END "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " ("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "-byte body)"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcn/bmob/v3/http/b/thing$thing;->Code(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 194
    :cond_11
    const-string v1, "unknown-length"

    goto/16 :goto_8

    .line 195
    :cond_12
    const-string v1, ""

    goto/16 :goto_9

    .line 205
    :cond_13
    if-eqz v3, :cond_14

    invoke-static {v2}, Lokhttp3/internal/http/HttpEngine;->hasBody(Lokhttp3/Response;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 206
    :cond_14
    iget-object v0, p0, Lcn/bmob/v3/http/b/thing;->V:Lcn/bmob/v3/http/b/thing$thing;

    const-string v1, "<-- END HTTP"

    invoke-interface {v0, v1}, Lcn/bmob/v3/http/b/thing$thing;->Code(Ljava/lang/String;)V

    :cond_15
    :goto_b
    move-object v0, v2

    .line 229
    goto/16 :goto_0

    .line 207
    :cond_16
    invoke-virtual {v2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-static {v0}, Lcn/bmob/v3/http/b/thing;->Code(Lokhttp3/Headers;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 208
    iget-object v0, p0, Lcn/bmob/v3/http/b/thing;->V:Lcn/bmob/v3/http/b/thing$thing;

    const-string v1, "<-- END HTTP (encoded body omitted)"

    invoke-interface {v0, v1}, Lcn/bmob/v3/http/b/thing$thing;->Code(Ljava/lang/String;)V

    goto :goto_b

    .line 210
    :cond_17
    invoke-virtual {v6}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    .line 211
    const-wide v4, 0x7fffffffffffffffL

    invoke-interface {v0, v4, v5}, Lokio/BufferedSource;->request(J)Z

    .line 212
    invoke-interface {v0}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v1

    .line 214
    sget-object v0, Lcn/bmob/v3/http/b/thing;->Code:Ljava/nio/charset/Charset;

    .line 215
    invoke-virtual {v6}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v3

    .line 216
    if-eqz v3, :cond_18

    .line 217
    sget-object v0, Lcn/bmob/v3/http/b/thing;->Code:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v0}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 220
    :cond_18
    const-wide/16 v4, 0x0

    cmp-long v3, v8, v4

    if-eqz v3, :cond_19

    .line 221
    iget-object v3, p0, Lcn/bmob/v3/http/b/thing;->V:Lcn/bmob/v3/http/b/thing$thing;

    const-string v4, ""

    invoke-interface {v3, v4}, Lcn/bmob/v3/http/b/thing$thing;->Code(Ljava/lang/String;)V

    .line 222
    iget-object v3, p0, Lcn/bmob/v3/http/b/thing;->V:Lcn/bmob/v3/http/b/thing$thing;

    invoke-virtual {v1}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Lokio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcn/bmob/v3/http/b/thing$thing;->Code(Ljava/lang/String;)V

    .line 225
    :cond_19
    iget-object v0, p0, Lcn/bmob/v3/http/b/thing;->V:Lcn/bmob/v3/http/b/thing$thing;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<-- END HTTP ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "-byte body)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/bmob/v3/http/b/thing$thing;->Code(Ljava/lang/String;)V

    goto :goto_b
.end method
