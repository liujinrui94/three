.class public Lcom/shishicai/app/service/HttpMethod;
.super Ljava/lang/Object;
.source "HttpMethod.java"


# static fields
.field private static SESSION_ID:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "HttpMethod"

.field public static sessionValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "ECS_ID"

    sput-object v0, Lcom/shishicai/app/service/HttpMethod;->SESSION_ID:Ljava/lang/String;

    .line 30
    const-string v0, ""

    sput-object v0, Lcom/shishicai/app/service/HttpMethod;->sessionValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetMethod(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 82
    const/4 v2, 0x0

    .line 83
    .local v2, "in":Ljava/io/BufferedReader;
    const/4 v8, 0x0

    .line 85
    .local v8, "result":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 86
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v10

    const-string v11, "http.socket.timeout"

    const/16 v12, 0x4e20

    invoke-interface {v10, v11, v12}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 87
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v10

    const-string v11, "http.connection.timeout"

    const/16 v12, 0x4e20

    invoke-interface {v10, v11, v12}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 88
    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v6, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 89
    .local v6, "request":Lorg/apache/http/client/methods/HttpGet;
    const-string v10, "HttpMethod"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sessionValue="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/shishicai/app/service/HttpMethod;->sessionValue:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    sget-object v10, Lcom/shishicai/app/service/HttpMethod;->sessionValue:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 91
    const-string v10, "cookie"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ECS_ID="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/shishicai/app/service/HttpMethod;->sessionValue:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_0
    invoke-interface {v0, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 94
    .local v7, "response":Lorg/apache/http/HttpResponse;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    const-string v12, "gbk"

    invoke-direct {v10, v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .end local v2    # "in":Ljava/io/BufferedReader;
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 96
    .local v9, "sb":Ljava/lang/StringBuffer;
    const-string v5, ""

    .line 97
    .local v5, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 98
    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 103
    .end local v5    # "line":Ljava/lang/String;
    .end local v9    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 104
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v6    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v7    # "response":Lorg/apache/http/HttpResponse;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    const-string v10, "HttpMethod"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    if-eqz v2, :cond_1

    .line 108
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 114
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    return-object v8

    .line 100
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v0    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "request":Lorg/apache/http/client/methods/HttpGet;
    .restart local v7    # "response":Lorg/apache/http/HttpResponse;
    .restart local v9    # "sb":Ljava/lang/StringBuffer;
    :cond_2
    :try_start_4
    const-string v10, "HttpMethod"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sessionValue="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/shishicai/app/service/HttpMethod;->sessionValue:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 102
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v8

    .line 106
    if-eqz v3, :cond_4

    .line 108
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v2, v3

    .line 111
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_2

    .line 109
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catch_1
    move-exception v4

    .line 110
    .local v4, "ioe":Ljava/io/IOException;
    const-string v10, "HttpMethod"

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 111
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_2

    .line 109
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v4    # "ioe":Ljava/io/IOException;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v7    # "response":Lorg/apache/http/HttpResponse;
    .end local v9    # "sb":Ljava/lang/StringBuffer;
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    .line 110
    .restart local v4    # "ioe":Ljava/io/IOException;
    const-string v10, "HttpMethod"

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 106
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_3
    if-eqz v2, :cond_3

    .line 108
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 111
    :cond_3
    :goto_4
    throw v10

    .line 109
    :catch_3
    move-exception v4

    .line 110
    .restart local v4    # "ioe":Ljava/io/IOException;
    const-string v11, "HttpMethod"

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 106
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v4    # "ioe":Ljava/io/IOException;
    .restart local v0    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "request":Lorg/apache/http/client/methods/HttpGet;
    .restart local v7    # "response":Lorg/apache/http/HttpResponse;
    :catchall_1
    move-exception v10

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_3

    .line 103
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v6    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v7    # "response":Lorg/apache/http/HttpResponse;
    :catch_4
    move-exception v1

    goto :goto_1

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v0    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "request":Lorg/apache/http/client/methods/HttpGet;
    .restart local v7    # "response":Lorg/apache/http/HttpResponse;
    .restart local v9    # "sb":Ljava/lang/StringBuffer;
    :cond_4
    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public static PostMethod(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 20
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v8, 0x0

    .line 34
    .local v8, "in":Ljava/io/BufferedReader;
    const/4 v15, 0x0

    .line 36
    .local v15, "result":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 37
    .local v3, "client":Lorg/apache/http/client/HttpClient;
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v17

    const-string v18, "http.socket.timeout"

    const/16 v19, 0x4e20

    invoke-interface/range {v17 .. v19}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 38
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v17

    const-string v18, "http.connection.timeout"

    const/16 v19, 0x4e20

    invoke-interface/range {v17 .. v19}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 39
    new-instance v13, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 40
    .local v13, "request":Lorg/apache/http/client/methods/HttpPost;
    sget-object v17, Lcom/shishicai/app/service/HttpMethod;->sessionValue:Ljava/lang/String;

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 41
    const-string v17, "Cookie"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ECS_ID="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/shishicai/app/service/HttpMethod;->sessionValue:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_0
    new-instance v17, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v18, "UTF-8"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 44
    invoke-interface {v3, v13}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v14

    .line 46
    .local v14, "response":Lorg/apache/http/HttpResponse;
    check-cast v3, Lorg/apache/http/impl/client/AbstractHttpClient;

    .end local v3    # "client":Lorg/apache/http/client/HttpClient;
    invoke-virtual {v3}, Lorg/apache/http/impl/client/AbstractHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v4

    .line 47
    .local v4, "cookieStore":Lorg/apache/http/client/CookieStore;
    invoke-interface {v4}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v5

    .line 48
    .local v5, "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    .local v11, "leng":I
    :goto_0
    if-ge v7, v11, :cond_1

    .line 50
    sget-object v18, Lcom/shishicai/app/service/HttpMethod;->SESSION_ID:Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/http/cookie/Cookie;

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 52
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/http/cookie/Cookie;

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v17

    sput-object v17, Lcom/shishicai/app/service/HttpMethod;->sessionValue:Ljava/lang/String;

    .line 53
    const-string v17, "HttpMethod"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "sessionValue = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/shishicai/app/service/HttpMethod;->sessionValue:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_1
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v18

    .line 59
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v18

    const-string v19, "utf-8"

    invoke-direct/range {v17 .. v19}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .end local v8    # "in":Ljava/io/BufferedReader;
    .local v9, "in":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 61
    .local v16, "sb":Ljava/lang/StringBuffer;
    const-string v12, ""

    .line 62
    .local v12, "line":Ljava/lang/String;
    :goto_1
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 63
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 67
    .end local v12    # "line":Ljava/lang/String;
    .end local v16    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v6

    move-object v8, v9

    .line 68
    .end local v4    # "cookieStore":Lorg/apache/http/client/CookieStore;
    .end local v5    # "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .end local v7    # "i":I
    .end local v9    # "in":Ljava/io/BufferedReader;
    .end local v11    # "leng":I
    .end local v13    # "request":Lorg/apache/http/client/methods/HttpPost;
    .end local v14    # "response":Lorg/apache/http/HttpResponse;
    .local v6, "e":Ljava/lang/Exception;
    .restart local v8    # "in":Ljava/io/BufferedReader;
    :goto_2
    :try_start_2
    const-string v17, "HttpMethod"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    if-eqz v8, :cond_2

    .line 72
    :try_start_3
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 78
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_3
    return-object v15

    .line 48
    .restart local v4    # "cookieStore":Lorg/apache/http/client/CookieStore;
    .restart local v5    # "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .restart local v7    # "i":I
    .restart local v11    # "leng":I
    .restart local v13    # "request":Lorg/apache/http/client/methods/HttpPost;
    .restart local v14    # "response":Lorg/apache/http/HttpResponse;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 65
    .end local v8    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    .restart local v12    # "line":Ljava/lang/String;
    .restart local v16    # "sb":Ljava/lang/StringBuffer;
    :cond_4
    :try_start_4
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 66
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v15

    .line 70
    if-eqz v9, :cond_6

    .line 72
    :try_start_5
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v8, v9

    .line 75
    .end local v9    # "in":Ljava/io/BufferedReader;
    .restart local v8    # "in":Ljava/io/BufferedReader;
    goto :goto_3

    .line 73
    .end local v8    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    :catch_1
    move-exception v10

    .line 74
    .local v10, "ioe":Ljava/io/IOException;
    const-string v17, "HttpMethod"

    invoke-virtual {v10}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v9

    .line 75
    .end local v9    # "in":Ljava/io/BufferedReader;
    .restart local v8    # "in":Ljava/io/BufferedReader;
    goto :goto_3

    .line 73
    .end local v4    # "cookieStore":Lorg/apache/http/client/CookieStore;
    .end local v5    # "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .end local v7    # "i":I
    .end local v10    # "ioe":Ljava/io/IOException;
    .end local v11    # "leng":I
    .end local v12    # "line":Ljava/lang/String;
    .end local v13    # "request":Lorg/apache/http/client/methods/HttpPost;
    .end local v14    # "response":Lorg/apache/http/HttpResponse;
    .end local v16    # "sb":Ljava/lang/StringBuffer;
    .restart local v6    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v10

    .line 74
    .restart local v10    # "ioe":Ljava/io/IOException;
    const-string v17, "HttpMethod"

    invoke-virtual {v10}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 70
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v10    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v17

    :goto_4
    if-eqz v8, :cond_5

    .line 72
    :try_start_6
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 75
    :cond_5
    :goto_5
    throw v17

    .line 73
    :catch_3
    move-exception v10

    .line 74
    .restart local v10    # "ioe":Ljava/io/IOException;
    const-string v18, "HttpMethod"

    invoke-virtual {v10}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 70
    .end local v8    # "in":Ljava/io/BufferedReader;
    .end local v10    # "ioe":Ljava/io/IOException;
    .restart local v4    # "cookieStore":Lorg/apache/http/client/CookieStore;
    .restart local v5    # "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .restart local v7    # "i":I
    .restart local v9    # "in":Ljava/io/BufferedReader;
    .restart local v11    # "leng":I
    .restart local v13    # "request":Lorg/apache/http/client/methods/HttpPost;
    .restart local v14    # "response":Lorg/apache/http/HttpResponse;
    :catchall_1
    move-exception v17

    move-object v8, v9

    .end local v9    # "in":Ljava/io/BufferedReader;
    .restart local v8    # "in":Ljava/io/BufferedReader;
    goto :goto_4

    .line 67
    .end local v4    # "cookieStore":Lorg/apache/http/client/CookieStore;
    .end local v5    # "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .end local v7    # "i":I
    .end local v11    # "leng":I
    .end local v13    # "request":Lorg/apache/http/client/methods/HttpPost;
    .end local v14    # "response":Lorg/apache/http/HttpResponse;
    :catch_4
    move-exception v6

    goto :goto_2

    .end local v8    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "cookieStore":Lorg/apache/http/client/CookieStore;
    .restart local v5    # "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .restart local v7    # "i":I
    .restart local v9    # "in":Ljava/io/BufferedReader;
    .restart local v11    # "leng":I
    .restart local v12    # "line":Ljava/lang/String;
    .restart local v13    # "request":Lorg/apache/http/client/methods/HttpPost;
    .restart local v14    # "response":Lorg/apache/http/HttpResponse;
    .restart local v16    # "sb":Ljava/lang/StringBuffer;
    :cond_6
    move-object v8, v9

    .end local v9    # "in":Ljava/io/BufferedReader;
    .restart local v8    # "in":Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method public static Toast(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    const-string v0, "\u4eb2\uff0c\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff01"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 131
    return-void
.end method

.method public static Toast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tips"    # Ljava/lang/String;

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 139
    return-void
.end method

.method public static ToastTimeOut(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    const-string v0, "\u4eb2\uff0c\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u67e5\u770b\u7f51\u7edc\uff01"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 135
    return-void
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    if-eqz p0, :cond_0

    .line 119
    const-string v2, "connectivity"

    .line 120
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 121
    .local v0, "mConnectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 122
    .local v1, "mNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 123
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    .line 126
    .end local v0    # "mConnectivityManager":Landroid/net/ConnectivityManager;
    .end local v1    # "mNetworkInfo":Landroid/net/NetworkInfo;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
