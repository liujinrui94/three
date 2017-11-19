.class final Lcn/bmob/v3/socketio/thing$1;
.super Landroid/os/AsyncTask;
.source "AsyncHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/bmob/v3/socketio/thing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic Code:Lcn/bmob/v3/socketio/thing$This;

.field private synthetic I:Lcn/bmob/v3/socketio/thing;

.field private synthetic V:Lcn/bmob/v3/socketio/thing$thing;


# direct methods
.method constructor <init>(Lcn/bmob/v3/socketio/thing;Lcn/bmob/v3/socketio/thing$This;Lcn/bmob/v3/socketio/thing$thing;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcn/bmob/v3/socketio/thing$1;->I:Lcn/bmob/v3/socketio/thing;

    iput-object p2, p0, Lcn/bmob/v3/socketio/thing$1;->Code:Lcn/bmob/v3/socketio/thing$This;

    iput-object p3, p0, Lcn/bmob/v3/socketio/thing$1;->V:Lcn/bmob/v3/socketio/thing$thing;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs Code()Ljava/lang/Void;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 76
    const-string v0, "android-websockets-2.0"

    invoke-static {v0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v1

    .line 77
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    iget-object v2, p0, Lcn/bmob/v3/socketio/thing$1;->Code:Lcn/bmob/v3/socketio/thing$This;

    invoke-virtual {v2}, Lcn/bmob/v3/socketio/thing$This;->Code()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 78
    iget-object v2, p0, Lcn/bmob/v3/socketio/thing$1;->Code:Lcn/bmob/v3/socketio/thing$This;

    invoke-virtual {v2}, Lcn/bmob/v3/socketio/thing$This;->I()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/bmob/v3/socketio/thing$1;->Code(Lorg/apache/http/HttpRequest;Ljava/util/List;)V

    .line 81
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 82
    iget-object v2, p0, Lcn/bmob/v3/socketio/thing$1;->I:Lcn/bmob/v3/socketio/thing;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/bmob/v3/socketio/thing;->Code(Lcn/bmob/v3/socketio/thing;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 84
    iget-object v2, p0, Lcn/bmob/v3/socketio/thing$1;->V:Lcn/bmob/v3/socketio/thing$thing;

    if-eqz v2, :cond_0

    .line 85
    iget-object v2, p0, Lcn/bmob/v3/socketio/thing$1;->V:Lcn/bmob/v3/socketio/thing$thing;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v0}, Lcn/bmob/v3/socketio/thing$thing;->Code(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_0
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 97
    :goto_0
    return-object v4

    .line 88
    :catch_0
    move-exception v0

    .line 90
    :try_start_1
    iget-object v2, p0, Lcn/bmob/v3/socketio/thing$1;->V:Lcn/bmob/v3/socketio/thing$thing;

    if-eqz v2, :cond_1

    .line 91
    iget-object v2, p0, Lcn/bmob/v3/socketio/thing$1;->V:Lcn/bmob/v3/socketio/thing$thing;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcn/bmob/v3/socketio/thing$thing;->Code(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    :cond_1
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 95
    throw v0
.end method

.method private static Code(Lorg/apache/http/HttpRequest;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpRequest;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    if-eqz p1, :cond_0

    .line 102
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 103
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/message/BasicNameValuePair;

    .line 105
    invoke-virtual {v0}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_0
    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcn/bmob/v3/socketio/thing$1;->Code()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
