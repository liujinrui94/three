.class public final Lcn/bmob/v3/socketio/acknowledge;
.super Lcn/bmob/v3/socketio/of;
.source "SocketIOClient.java"


# instance fields
.field B:Ljava/lang/String;

.field private C:Lcn/bmob/v3/socketio/mine;

.field I:Z

.field V:Z

.field Z:Lcn/bmob/v3/socketio/callback/ConnectCallback;


# direct methods
.method private constructor <init>(Lcn/bmob/v3/socketio/mine;Ljava/lang/String;Lcn/bmob/v3/socketio/callback/ConnectCallback;)V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Lcn/bmob/v3/socketio/of;-><init>()V

    .line 153
    iput-object p2, p0, Lcn/bmob/v3/socketio/acknowledge;->B:Ljava/lang/String;

    .line 154
    iput-object p1, p0, Lcn/bmob/v3/socketio/acknowledge;->C:Lcn/bmob/v3/socketio/mine;

    .line 155
    iput-object p3, p0, Lcn/bmob/v3/socketio/acknowledge;->Z:Lcn/bmob/v3/socketio/callback/ConnectCallback;

    .line 156
    return-void
.end method

.method public static Code(Lcn/bmob/v3/socketio/thing$This;Lcn/bmob/v3/socketio/callback/ConnectCallback;Landroid/os/Handler;)V
    .locals 5

    .prologue
    .line 65
    new-instance v0, Lcn/bmob/v3/socketio/mine;

    new-instance v1, Lcn/bmob/v3/socketio/thing;

    invoke-direct {v1}, Lcn/bmob/v3/socketio/thing;-><init>()V

    invoke-direct {v0, p2, v1, p0}, Lcn/bmob/v3/socketio/mine;-><init>(Landroid/os/Handler;Lcn/bmob/v3/socketio/thing;Lcn/bmob/v3/socketio/thing$This;)V

    .line 67
    new-instance v1, Lcn/bmob/v3/socketio/acknowledge$1;

    invoke-direct {v1, p0, p2, p1, v0}, Lcn/bmob/v3/socketio/acknowledge$1;-><init>(Lcn/bmob/v3/socketio/thing$This;Landroid/os/Handler;Lcn/bmob/v3/socketio/callback/ConnectCallback;Lcn/bmob/v3/socketio/mine;)V

    .line 93
    iget-object v2, v0, Lcn/bmob/v3/socketio/mine;->V:Ljava/util/ArrayList;

    new-instance v3, Lcn/bmob/v3/socketio/acknowledge;

    const-string v4, ""

    invoke-direct {v3, v0, v4, v1}, Lcn/bmob/v3/socketio/acknowledge;-><init>(Lcn/bmob/v3/socketio/mine;Ljava/lang/String;Lcn/bmob/v3/socketio/callback/ConnectCallback;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-virtual {v0}, Lcn/bmob/v3/socketio/mine;->V()V

    .line 96
    return-void
.end method


# virtual methods
.method public final Code(Ljava/lang/String;Lcn/bmob/v3/socketio/callback/ConnectCallback;)V
    .locals 5

    .prologue
    .line 178
    iget-object v0, p0, Lcn/bmob/v3/socketio/acknowledge;->C:Lcn/bmob/v3/socketio/mine;

    new-instance v1, Lcn/bmob/v3/socketio/acknowledge;

    iget-object v2, p0, Lcn/bmob/v3/socketio/acknowledge;->C:Lcn/bmob/v3/socketio/mine;

    invoke-direct {v1, v2, p1, p2}, Lcn/bmob/v3/socketio/acknowledge;-><init>(Lcn/bmob/v3/socketio/mine;Ljava/lang/String;Lcn/bmob/v3/socketio/callback/ConnectCallback;)V

    .line 2066
    iget-object v2, v0, Lcn/bmob/v3/socketio/mine;->V:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2067
    iget-object v0, v0, Lcn/bmob/v3/socketio/mine;->I:Lcn/bmob/v3/socketio/From;

    const-string v2, "1::%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v1, v1, Lcn/bmob/v3/socketio/acknowledge;->B:Ljava/lang/String;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/bmob/v3/socketio/From;->Code(Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public final Code(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 7

    .prologue
    .line 28
    .line 1040
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1042
    :try_start_0
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1043
    const-string v1, "args"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1044
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 2024
    iget-object v3, p0, Lcn/bmob/v3/socketio/acknowledge;->C:Lcn/bmob/v3/socketio/mine;

    const/4 v4, 0x5

    .line 2056
    const-string v0, ""

    .line 2057
    if-eqz v2, :cond_0

    .line 2058
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v3, Lcn/bmob/v3/socketio/mine;->C:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v3, Lcn/bmob/v3/socketio/mine;->C:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2059
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "+"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2060
    iget-object v6, v3, Lcn/bmob/v3/socketio/mine;->B:Ljava/util/Hashtable;

    invoke-virtual {v6, v5, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2062
    :cond_0
    iget-object v2, v3, Lcn/bmob/v3/socketio/mine;->I:Lcn/bmob/v3/socketio/From;

    const-string v3, "%d:%s:%s:%s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v6

    const/4 v4, 0x1

    aput-object v0, v5, v4

    const/4 v0, 0x2

    iget-object v4, p0, Lcn/bmob/v3/socketio/acknowledge;->B:Ljava/lang/String;

    aput-object v4, v5, v0

    const/4 v0, 0x3

    aput-object v1, v5, v0

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/bmob/v3/socketio/From;->Code(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1046
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final Code()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcn/bmob/v3/socketio/acknowledge;->V:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/bmob/v3/socketio/acknowledge;->I:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/bmob/v3/socketio/acknowledge;->C:Lcn/bmob/v3/socketio/mine;

    invoke-virtual {v0}, Lcn/bmob/v3/socketio/mine;->Code()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
