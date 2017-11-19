.class final Lcn/bmob/v3/socketio/mine$1$1;
.super Ljava/lang/Object;
.source "SocketIOConnection.java"

# interfaces
.implements Lcn/bmob/v3/socketio/From$This;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/socketio/mine$1;->Code(Ljava/lang/Exception;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic Code:Lcn/bmob/v3/socketio/mine$1;


# direct methods
.method constructor <init>(Lcn/bmob/v3/socketio/mine$1;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcn/bmob/v3/socketio/mine$1$1;->Code:Lcn/bmob/v3/socketio/mine$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Code()V
    .locals 4

    .prologue
    .line 220
    iget-object v0, p0, Lcn/bmob/v3/socketio/mine$1$1;->Code:Lcn/bmob/v3/socketio/mine$1;

    iget-object v0, v0, Lcn/bmob/v3/socketio/mine$1;->Code:Lcn/bmob/v3/socketio/mine;

    const-wide/16 v2, 0x3e8

    iput-wide v2, v0, Lcn/bmob/v3/socketio/mine;->S:J

    .line 221
    iget-object v0, p0, Lcn/bmob/v3/socketio/mine$1$1;->Code:Lcn/bmob/v3/socketio/mine$1;

    iget-object v0, v0, Lcn/bmob/v3/socketio/mine$1;->Code:Lcn/bmob/v3/socketio/mine;

    .line 1236
    iget-object v1, v0, Lcn/bmob/v3/socketio/mine;->I:Lcn/bmob/v3/socketio/From;

    .line 1237
    new-instance v2, Lcn/bmob/v3/socketio/mine$3;

    invoke-direct {v2, v0, v1}, Lcn/bmob/v3/socketio/mine$3;-><init>(Lcn/bmob/v3/socketio/mine;Lcn/bmob/v3/socketio/From;)V

    .line 1248
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 223
    return-void
.end method

.method public final Code(ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 215
    iget-object v0, p0, Lcn/bmob/v3/socketio/mine$1$1;->Code:Lcn/bmob/v3/socketio/mine$1;

    iget-object v0, v0, Lcn/bmob/v3/socketio/mine$1;->Code:Lcn/bmob/v3/socketio/mine;

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Disconnected code %d for reason %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcn/bmob/v3/socketio/mine;->Code(Lcn/bmob/v3/socketio/mine;Ljava/lang/Exception;)V

    .line 216
    return-void
.end method

.method public final Code(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcn/bmob/v3/socketio/mine$1$1;->Code:Lcn/bmob/v3/socketio/mine$1;

    iget-object v0, v0, Lcn/bmob/v3/socketio/mine$1;->Code:Lcn/bmob/v3/socketio/mine;

    invoke-static {v0, p1}, Lcn/bmob/v3/socketio/mine;->Code(Lcn/bmob/v3/socketio/mine;Ljava/lang/Exception;)V

    .line 210
    return-void
.end method

.method public final Code(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x2

    .line 141
    :try_start_0
    const-string v0, ":"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 142
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 143
    packed-switch v1, :pswitch_data_0

    .line 196
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "unknown code"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    iget-object v1, p0, Lcn/bmob/v3/socketio/mine$1$1;->Code:Lcn/bmob/v3/socketio/mine$1;

    iget-object v1, v1, Lcn/bmob/v3/socketio/mine$1;->Code:Lcn/bmob/v3/socketio/mine;

    iget-object v1, v1, Lcn/bmob/v3/socketio/mine;->I:Lcn/bmob/v3/socketio/From;

    invoke-virtual {v1}, Lcn/bmob/v3/socketio/From;->I()V

    .line 200
    iget-object v1, p0, Lcn/bmob/v3/socketio/mine$1$1;->Code:Lcn/bmob/v3/socketio/mine$1;

    iget-object v1, v1, Lcn/bmob/v3/socketio/mine$1;->Code:Lcn/bmob/v3/socketio/mine;

    iput-object v2, v1, Lcn/bmob/v3/socketio/mine;->I:Lcn/bmob/v3/socketio/From;

    .line 201
    iget-object v1, p0, Lcn/bmob/v3/socketio/mine$1$1;->Code:Lcn/bmob/v3/socketio/mine$1;

    iget-object v1, v1, Lcn/bmob/v3/socketio/mine$1;->Code:Lcn/bmob/v3/socketio/mine;

    invoke-static {v1, v0}, Lcn/bmob/v3/socketio/mine;->Code(Lcn/bmob/v3/socketio/mine;Ljava/lang/Exception;)V

    .line 205
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 146
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcn/bmob/v3/socketio/mine$1$1;->Code:Lcn/bmob/v3/socketio/mine$1;

    iget-object v0, v0, Lcn/bmob/v3/socketio/mine$1;->Code:Lcn/bmob/v3/socketio/mine;

    iget-object v0, v0, Lcn/bmob/v3/socketio/mine;->I:Lcn/bmob/v3/socketio/From;

    invoke-virtual {v0}, Lcn/bmob/v3/socketio/From;->I()V

    .line 147
    iget-object v0, p0, Lcn/bmob/v3/socketio/mine$1$1;->Code:Lcn/bmob/v3/socketio/mine$1;

    iget-object v0, v0, Lcn/bmob/v3/socketio/mine$1;->Code:Lcn/bmob/v3/socketio/mine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/bmob/v3/socketio/mine;->Code(Lcn/bmob/v3/socketio/mine;Ljava/lang/Exception;)V

    goto :goto_0

    .line 151
    :pswitch_2
    iget-object v1, p0, Lcn/bmob/v3/socketio/mine$1$1;->Code:Lcn/bmob/v3/socketio/mine$1;

    iget-object v1, v1, Lcn/bmob/v3/socketio/mine$1;->Code:Lcn/bmob/v3/socketio/mine;

    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-static {v1, v0}, Lcn/bmob/v3/socketio/mine;->Code(Lcn/bmob/v3/socketio/mine;Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :pswitch_3
    iget-object v0, p0, Lcn/bmob/v3/socketio/mine$1$1;->Code:Lcn/bmob/v3/socketio/mine$1;

    iget-object v0, v0, Lcn/bmob/v3/socketio/mine$1;->Code:Lcn/bmob/v3/socketio/mine;

    iget-object v0, v0, Lcn/bmob/v3/socketio/mine;->I:Lcn/bmob/v3/socketio/From;

    const-string v1, "2::"

    invoke-virtual {v0, v1}, Lcn/bmob/v3/socketio/From;->Code(Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :pswitch_4
    iget-object v1, p0, Lcn/bmob/v3/socketio/mine$1$1;->Code:Lcn/bmob/v3/socketio/mine$1;

    iget-object v1, v1, Lcn/bmob/v3/socketio/mine$1;->Code:Lcn/bmob/v3/socketio/mine;

    const/4 v3, 0x2

    aget-object v3, v0, v3

    const/4 v4, 0x3

    aget-object v4, v0, v4

    iget-object v5, p0, Lcn/bmob/v3/socketio/mine$1$1;->Code:Lcn/bmob/v3/socketio/mine$1;

    iget-object v5, v5, Lcn/bmob/v3/socketio/mine$1;->Code:Lcn/bmob/v3/socketio/mine;

    const/4 v6, 0x1

    aget-object v0, v0, v6

    invoke-static {v5, v0}, Lcn/bmob/v3/socketio/mine;->V(Lcn/bmob/v3/socketio/mine;Ljava/lang/String;)Lcn/bmob/v3/socketio/This;

    move-result-object v0

    invoke-static {v1, v3, v4, v0}, Lcn/bmob/v3/socketio/mine;->Code(Lcn/bmob/v3/socketio/mine;Ljava/lang/String;Ljava/lang/String;Lcn/bmob/v3/socketio/This;)V

    goto :goto_0

    .line 164
    :pswitch_5
    const/4 v1, 0x3

    aget-object v1, v0, v1

    .line 165
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcn/bmob/v3/socketio/mine$1$1;->Code:Lcn/bmob/v3/socketio/mine$1;

    iget-object v1, v1, Lcn/bmob/v3/socketio/mine$1;->Code:Lcn/bmob/v3/socketio/mine;

    const/4 v4, 0x2

    aget-object v4, v0, v4

    iget-object v5, p0, Lcn/bmob/v3/socketio/mine$1$1;->Code:Lcn/bmob/v3/socketio/mine$1;

    iget-object v5, v5, Lcn/bmob/v3/socketio/mine$1;->Code:Lcn/bmob/v3/socketio/mine;

    const/4 v6, 0x1

    aget-object v0, v0, v6

    invoke-static {v5, v0}, Lcn/bmob/v3/socketio/mine;->V(Lcn/bmob/v3/socketio/mine;Ljava/lang/String;)Lcn/bmob/v3/socketio/This;

    move-result-object v0

    invoke-static {v1, v4, v3, v0}, Lcn/bmob/v3/socketio/mine;->Code(Lcn/bmob/v3/socketio/mine;Ljava/lang/String;Lorg/json/JSONObject;Lcn/bmob/v3/socketio/This;)V

    goto :goto_0

    .line 170
    :pswitch_6
    const/4 v1, 0x3

    aget-object v1, v0, v1

    .line 171
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 172
    const-string v1, "name"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    const-string v4, "args"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 174
    iget-object v4, p0, Lcn/bmob/v3/socketio/mine$1$1;->Code:Lcn/bmob/v3/socketio/mine$1;

    iget-object v4, v4, Lcn/bmob/v3/socketio/mine$1;->Code:Lcn/bmob/v3/socketio/mine;

    const/4 v5, 0x2

    aget-object v5, v0, v5

    iget-object v6, p0, Lcn/bmob/v3/socketio/mine$1$1;->Code:Lcn/bmob/v3/socketio/mine$1;

    iget-object v6, v6, Lcn/bmob/v3/socketio/mine$1;->Code:Lcn/bmob/v3/socketio/mine;

    const/4 v7, 0x1

    aget-object v0, v0, v7

    invoke-static {v6, v0}, Lcn/bmob/v3/socketio/mine;->V(Lcn/bmob/v3/socketio/mine;Ljava/lang/String;)Lcn/bmob/v3/socketio/This;

    move-result-object v0

    invoke-static {v4, v5, v1, v3, v0}, Lcn/bmob/v3/socketio/mine;->Code(Lcn/bmob/v3/socketio/mine;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcn/bmob/v3/socketio/This;)V

    goto/16 :goto_0

    .line 179
    :pswitch_7
    const/4 v1, 0x3

    aget-object v0, v0, v1

    const-string v1, "\\+"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 180
    iget-object v0, p0, Lcn/bmob/v3/socketio/mine$1$1;->Code:Lcn/bmob/v3/socketio/mine$1;

    iget-object v0, v0, Lcn/bmob/v3/socketio/mine$1;->Code:Lcn/bmob/v3/socketio/mine;

    iget-object v0, v0, Lcn/bmob/v3/socketio/mine;->B:Ljava/util/Hashtable;

    const/4 v1, 0x0

    aget-object v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/bmob/v3/socketio/This;

    .line 181
    if-eqz v0, :cond_0

    .line 184
    array-length v1, v3

    if-ne v1, v4, :cond_1

    .line 185
    new-instance v1, Lorg/json/JSONArray;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-direct {v1, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 186
    :goto_1
    invoke-interface {v0, v1}, Lcn/bmob/v3/socketio/This;->Code(Lorg/json/JSONArray;)V

    goto/16 :goto_0

    .line 190
    :pswitch_8
    iget-object v1, p0, Lcn/bmob/v3/socketio/mine$1$1;->Code:Lcn/bmob/v3/socketio/mine$1;

    iget-object v1, v1, Lcn/bmob/v3/socketio/mine$1;->Code:Lcn/bmob/v3/socketio/mine;

    const/4 v3, 0x2

    aget-object v3, v0, v3

    const/4 v4, 0x3

    aget-object v0, v0, v4

    invoke-static {v1, v3, v0}, Lcn/bmob/v3/socketio/mine;->Code(Lcn/bmob/v3/socketio/mine;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_1
    move-object v1, v2

    goto :goto_1

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
    .end packed-switch
.end method
