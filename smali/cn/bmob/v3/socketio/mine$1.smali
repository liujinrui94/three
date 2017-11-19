.class final Lcn/bmob/v3/socketio/mine$1;
.super Ljava/lang/Object;
.source "SocketIOConnection.java"

# interfaces
.implements Lcn/bmob/v3/socketio/thing$thing;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/socketio/mine;->V()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Code:Lcn/bmob/v3/socketio/mine;


# direct methods
.method constructor <init>(Lcn/bmob/v3/socketio/mine;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcn/bmob/v3/socketio/mine$1;->Code:Lcn/bmob/v3/socketio/mine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Code(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 106
    if-eqz p1, :cond_0

    .line 107
    iget-object v0, p0, Lcn/bmob/v3/socketio/mine$1;->Code:Lcn/bmob/v3/socketio/mine;

    invoke-static {v0, p1}, Lcn/bmob/v3/socketio/mine;->Code(Lcn/bmob/v3/socketio/mine;Ljava/lang/Exception;)V

    .line 230
    :goto_0
    return-void

    .line 112
    :cond_0
    :try_start_0
    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 113
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 114
    const-string v2, ""

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 115
    iget-object v2, p0, Lcn/bmob/v3/socketio/mine$1;->Code:Lcn/bmob/v3/socketio/mine;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    mul-int/lit16 v3, v3, 0x3e8

    iput v3, v2, Lcn/bmob/v3/socketio/mine;->Code:I

    .line 119
    :goto_1
    const/4 v2, 0x3

    aget-object v0, v0, v2

    .line 120
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 121
    new-instance v2, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 122
    const-string v0, "websocket"

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 123
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "websocket not supported"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    iget-object v1, p0, Lcn/bmob/v3/socketio/mine$1;->Code:Lcn/bmob/v3/socketio/mine;

    invoke-static {v1, v0}, Lcn/bmob/v3/socketio/mine;->Code(Lcn/bmob/v3/socketio/mine;Ljava/lang/Exception;)V

    goto :goto_0

    .line 117
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcn/bmob/v3/socketio/mine$1;->Code:Lcn/bmob/v3/socketio/mine;

    const/4 v3, 0x0

    iput v3, v2, Lcn/bmob/v3/socketio/mine;->Code:I

    goto :goto_1

    .line 125
    :cond_2
    iget-object v0, p0, Lcn/bmob/v3/socketio/mine$1;->Code:Lcn/bmob/v3/socketio/mine;

    iget-object v0, v0, Lcn/bmob/v3/socketio/mine;->Z:Lcn/bmob/v3/socketio/thing$This;

    invoke-virtual {v0}, Lcn/bmob/v3/socketio/thing$This;->Code()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "websocket"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcn/bmob/v3/socketio/mine$1;->Code:Lcn/bmob/v3/socketio/mine;

    new-instance v2, Lcn/bmob/v3/socketio/From;

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    new-instance v3, Lcn/bmob/v3/socketio/mine$1$1;

    invoke-direct {v3, p0}, Lcn/bmob/v3/socketio/mine$1$1;-><init>(Lcn/bmob/v3/socketio/mine$1;)V

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4}, Lcn/bmob/v3/socketio/From;-><init>(Ljava/net/URI;Lcn/bmob/v3/socketio/From$This;Ljava/util/List;)V

    iput-object v2, v1, Lcn/bmob/v3/socketio/mine;->I:Lcn/bmob/v3/socketio/From;

    .line 225
    iget-object v0, p0, Lcn/bmob/v3/socketio/mine$1;->Code:Lcn/bmob/v3/socketio/mine;

    iget-object v0, v0, Lcn/bmob/v3/socketio/mine;->I:Lcn/bmob/v3/socketio/From;

    invoke-virtual {v0}, Lcn/bmob/v3/socketio/From;->V()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
