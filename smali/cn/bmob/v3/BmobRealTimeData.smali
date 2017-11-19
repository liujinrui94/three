.class public Lcn/bmob/v3/BmobRealTimeData;
.super Ljava/lang/Object;
.source "BmobRealTimeData.java"


# static fields
.field public static final ACTION_DELETEROW:Ljava/lang/String; = "deleteRow"

.field public static final ACTION_DELETETABLE:Ljava/lang/String; = "deleteTable"

.field public static final ACTION_UPDATEROW:Ljava/lang/String; = "updateRow"

.field public static final ACTION_UPDATETABLE:Ljava/lang/String; = "updateTable"

.field public static final TAG:Ljava/lang/String; = "BmobRealTimeData"


# instance fields
.field private Code:Lcn/bmob/v3/socketio/acknowledge;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic Code(Lcn/bmob/v3/BmobRealTimeData;Lcn/bmob/v3/socketio/acknowledge;)Lcn/bmob/v3/socketio/acknowledge;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcn/bmob/v3/BmobRealTimeData;->Code:Lcn/bmob/v3/socketio/acknowledge;

    return-object p1
.end method

.method private static Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 171
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 173
    :try_start_0
    const-string v0, "appKey"

    invoke-static {}, Lcn/bmob/v3/http/I;->V()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    const-string v0, "tableName"

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    const-string v0, "objectId"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    const-string v0, "action"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    return-object v1

    .line 177
    :catch_0
    move-exception v0

    .line 178
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public isConnected()Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcn/bmob/v3/BmobRealTimeData;->Code:Lcn/bmob/v3/socketio/acknowledge;

    if-nez v0, :cond_0

    .line 80
    const/4 v0, 0x0

    .line 82
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/bmob/v3/BmobRealTimeData;->Code:Lcn/bmob/v3/socketio/acknowledge;

    invoke-virtual {v0}, Lcn/bmob/v3/socketio/acknowledge;->Code()Z

    move-result v0

    goto :goto_0
.end method

.method public start(Lcn/bmob/v3/listener/ValueEventListener;)V
    .locals 4
    .param p1, "listener"    # Lcn/bmob/v3/listener/ValueEventListener;

    .prologue
    .line 38
    new-instance v0, Lcn/bmob/v3/b/The;

    invoke-direct {v0}, Lcn/bmob/v3/b/The;-><init>()V

    .line 39
    const-string v1, "io"

    const-string v2, "http://io.bmob.cn:3010"

    invoke-virtual {v0, v1, v2}, Lcn/bmob/v3/b/The;->V(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    new-instance v1, Lcn/bmob/v3/BmobRealTimeData$1;

    invoke-direct {v1, p0, p1}, Lcn/bmob/v3/BmobRealTimeData$1;-><init>(Lcn/bmob/v3/BmobRealTimeData;Lcn/bmob/v3/listener/ValueEventListener;)V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 1058
    new-instance v3, Lcn/bmob/v3/socketio/thing$This;

    invoke-direct {v3, v0}, Lcn/bmob/v3/socketio/thing$This;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v1, v2}, Lcn/bmob/v3/socketio/acknowledge;->Code(Lcn/bmob/v3/socketio/thing$This;Lcn/bmob/v3/socketio/callback/ConnectCallback;Landroid/os/Handler;)V

    .line 72
    return-void
.end method

.method public subRowDelete(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "objectId"    # Ljava/lang/String;

    .prologue
    .line 154
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 155
    const-string v1, "deleteRow"

    invoke-static {p1, p2, v1}, Lcn/bmob/v3/BmobRealTimeData;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 156
    iget-object v1, p0, Lcn/bmob/v3/BmobRealTimeData;->Code:Lcn/bmob/v3/socketio/acknowledge;

    const-string v2, "client_sub"

    invoke-virtual {v1, v2, v0}, Lcn/bmob/v3/socketio/acknowledge;->Code(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 157
    return-void
.end method

.method public subRowUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "objectId"    # Ljava/lang/String;

    .prologue
    .line 132
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 133
    const-string v1, "updateRow"

    invoke-static {p1, p2, v1}, Lcn/bmob/v3/BmobRealTimeData;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 134
    iget-object v1, p0, Lcn/bmob/v3/BmobRealTimeData;->Code:Lcn/bmob/v3/socketio/acknowledge;

    const-string v2, "client_sub"

    invoke-virtual {v1, v2, v0}, Lcn/bmob/v3/socketio/acknowledge;->Code(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 135
    return-void
.end method

.method public subTableDelete(Ljava/lang/String;)V
    .locals 3
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 111
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 112
    const-string v1, ""

    const-string v2, "deleteTable"

    invoke-static {p1, v1, v2}, Lcn/bmob/v3/BmobRealTimeData;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 113
    iget-object v1, p0, Lcn/bmob/v3/BmobRealTimeData;->Code:Lcn/bmob/v3/socketio/acknowledge;

    const-string v2, "client_sub"

    invoke-virtual {v1, v2, v0}, Lcn/bmob/v3/socketio/acknowledge;->Code(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 114
    return-void
.end method

.method public subTableUpdate(Ljava/lang/String;)V
    .locals 3
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 91
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 92
    const-string v1, ""

    const-string v2, "updateTable"

    invoke-static {p1, v1, v2}, Lcn/bmob/v3/BmobRealTimeData;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 93
    iget-object v1, p0, Lcn/bmob/v3/BmobRealTimeData;->Code:Lcn/bmob/v3/socketio/acknowledge;

    const-string v2, "client_sub"

    invoke-virtual {v1, v2, v0}, Lcn/bmob/v3/socketio/acknowledge;->Code(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 94
    return-void
.end method

.method public unsubRowDelete(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "objectId"    # Ljava/lang/String;

    .prologue
    .line 165
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 166
    const-string v1, "unsub_deleteRow"

    invoke-static {p1, p2, v1}, Lcn/bmob/v3/BmobRealTimeData;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 167
    iget-object v1, p0, Lcn/bmob/v3/BmobRealTimeData;->Code:Lcn/bmob/v3/socketio/acknowledge;

    const-string v2, "client_unsub"

    invoke-virtual {v1, v2, v0}, Lcn/bmob/v3/socketio/acknowledge;->Code(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 168
    return-void
.end method

.method public unsubRowUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "objectId"    # Ljava/lang/String;

    .prologue
    .line 143
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 144
    const-string v1, "unsub_updateRow"

    invoke-static {p1, p2, v1}, Lcn/bmob/v3/BmobRealTimeData;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 145
    iget-object v1, p0, Lcn/bmob/v3/BmobRealTimeData;->Code:Lcn/bmob/v3/socketio/acknowledge;

    const-string v2, "client_unsub"

    invoke-virtual {v1, v2, v0}, Lcn/bmob/v3/socketio/acknowledge;->Code(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 146
    return-void
.end method

.method public unsubTableDelete(Ljava/lang/String;)V
    .locals 3
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 121
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 122
    const-string v1, ""

    const-string v2, "unsub_deleteTable"

    invoke-static {p1, v1, v2}, Lcn/bmob/v3/BmobRealTimeData;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 123
    iget-object v1, p0, Lcn/bmob/v3/BmobRealTimeData;->Code:Lcn/bmob/v3/socketio/acknowledge;

    const-string v2, "client_unsub"

    invoke-virtual {v1, v2, v0}, Lcn/bmob/v3/socketio/acknowledge;->Code(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 124
    return-void
.end method

.method public unsubTableUpdate(Ljava/lang/String;)V
    .locals 3
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 101
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 102
    const-string v1, ""

    const-string v2, "unsub_updateTable"

    invoke-static {p1, v1, v2}, Lcn/bmob/v3/BmobRealTimeData;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 103
    iget-object v1, p0, Lcn/bmob/v3/BmobRealTimeData;->Code:Lcn/bmob/v3/socketio/acknowledge;

    const-string v2, "client_unsub"

    invoke-virtual {v1, v2, v0}, Lcn/bmob/v3/socketio/acknowledge;->Code(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 104
    return-void
.end method
