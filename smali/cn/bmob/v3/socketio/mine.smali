.class final Lcn/bmob/v3/socketio/mine;
.super Ljava/lang/Object;
.source "SocketIOConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/bmob/v3/socketio/mine$This;
    }
.end annotation


# instance fields
.field B:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcn/bmob/v3/socketio/This;",
            ">;"
        }
    .end annotation
.end field

.field C:I

.field Code:I

.field private D:Lcn/bmob/v3/socketio/thing;

.field private F:Landroid/os/Handler;

.field I:Lcn/bmob/v3/socketio/From;

.field S:J

.field V:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/bmob/v3/socketio/acknowledge;",
            ">;"
        }
    .end annotation
.end field

.field Z:Lcn/bmob/v3/socketio/thing$This;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcn/bmob/v3/socketio/thing;Lcn/bmob/v3/socketio/thing$This;)V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/bmob/v3/socketio/mine;->V:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcn/bmob/v3/socketio/mine;->B:Ljava/util/Hashtable;

    .line 289
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcn/bmob/v3/socketio/mine;->S:J

    .line 43
    iput-object p1, p0, Lcn/bmob/v3/socketio/mine;->F:Landroid/os/Handler;

    .line 44
    iput-object p2, p0, Lcn/bmob/v3/socketio/mine;->D:Lcn/bmob/v3/socketio/thing;

    .line 45
    iput-object p3, p0, Lcn/bmob/v3/socketio/mine;->Z:Lcn/bmob/v3/socketio/thing$This;

    .line 46
    return-void
.end method

.method static synthetic Code(Lcn/bmob/v3/socketio/mine;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcn/bmob/v3/socketio/mine;->F:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic Code(Lcn/bmob/v3/socketio/mine;Ljava/lang/Exception;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 32
    .line 1292
    const/4 v0, 0x0

    new-instance v2, Lcn/bmob/v3/socketio/mine$5;

    invoke-direct {v2, p0, p1}, Lcn/bmob/v3/socketio/mine$5;-><init>(Lcn/bmob/v3/socketio/mine;Ljava/lang/Exception;)V

    invoke-direct {p0, v0, v2}, Lcn/bmob/v3/socketio/mine;->Code(Ljava/lang/String;Lcn/bmob/v3/socketio/mine$This;)V

    .line 2264
    iget-object v0, p0, Lcn/bmob/v3/socketio/mine;->I:Lcn/bmob/v3/socketio/From;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/bmob/v3/socketio/mine;->V:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2265
    :cond_0
    :goto_0
    return-void

    .line 2269
    :cond_1
    const/4 v2, 0x0

    .line 2270
    iget-object v0, p0, Lcn/bmob/v3/socketio/mine;->V:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/bmob/v3/socketio/acknowledge;

    .line 2271
    iget-boolean v0, v0, Lcn/bmob/v3/socketio/acknowledge;->I:Z

    if-eqz v0, :cond_2

    move v0, v1

    .line 2277
    :goto_1
    if-eqz v0, :cond_0

    .line 2280
    iget-object v0, p0, Lcn/bmob/v3/socketio/mine;->F:Landroid/os/Handler;

    new-instance v2, Lcn/bmob/v3/socketio/mine$4;

    invoke-direct {v2, p0}, Lcn/bmob/v3/socketio/mine$4;-><init>(Lcn/bmob/v3/socketio/mine;)V

    iget-wide v4, p0, Lcn/bmob/v3/socketio/mine;->S:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2286
    iget-wide v2, p0, Lcn/bmob/v3/socketio/mine;->S:J

    shl-long v0, v2, v1

    iput-wide v0, p0, Lcn/bmob/v3/socketio/mine;->S:J

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method static synthetic Code(Lcn/bmob/v3/socketio/mine;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 32
    .line 2330
    new-instance v0, Lcn/bmob/v3/socketio/mine$6;

    invoke-direct {v0, p0}, Lcn/bmob/v3/socketio/mine$6;-><init>(Lcn/bmob/v3/socketio/mine;)V

    invoke-direct {p0, p1, v0}, Lcn/bmob/v3/socketio/mine;->Code(Ljava/lang/String;Lcn/bmob/v3/socketio/mine$This;)V

    .line 32
    return-void
.end method

.method static synthetic Code(Lcn/bmob/v3/socketio/mine;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 32
    .line 4413
    new-instance v0, Lcn/bmob/v3/socketio/mine$10;

    invoke-direct {v0, p0, p2}, Lcn/bmob/v3/socketio/mine$10;-><init>(Lcn/bmob/v3/socketio/mine;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcn/bmob/v3/socketio/mine;->Code(Ljava/lang/String;Lcn/bmob/v3/socketio/mine$This;)V

    .line 32
    return-void
.end method

.method static synthetic Code(Lcn/bmob/v3/socketio/mine;Ljava/lang/String;Ljava/lang/String;Lcn/bmob/v3/socketio/This;)V
    .locals 1

    .prologue
    .line 32
    .line 3376
    new-instance v0, Lcn/bmob/v3/socketio/mine$8;

    invoke-direct {v0, p0, p2, p3}, Lcn/bmob/v3/socketio/mine$8;-><init>(Lcn/bmob/v3/socketio/mine;Ljava/lang/String;Lcn/bmob/v3/socketio/This;)V

    invoke-direct {p0, p1, v0}, Lcn/bmob/v3/socketio/mine;->Code(Ljava/lang/String;Lcn/bmob/v3/socketio/mine$This;)V

    .line 32
    return-void
.end method

.method static synthetic Code(Lcn/bmob/v3/socketio/mine;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcn/bmob/v3/socketio/This;)V
    .locals 1

    .prologue
    .line 32
    .line 4396
    new-instance v0, Lcn/bmob/v3/socketio/mine$9;

    invoke-direct {v0, p0, p2, p3, p4}, Lcn/bmob/v3/socketio/mine$9;-><init>(Lcn/bmob/v3/socketio/mine;Ljava/lang/String;Lorg/json/JSONArray;Lcn/bmob/v3/socketio/This;)V

    invoke-direct {p0, p1, v0}, Lcn/bmob/v3/socketio/mine;->Code(Ljava/lang/String;Lcn/bmob/v3/socketio/mine$This;)V

    .line 32
    return-void
.end method

.method static synthetic Code(Lcn/bmob/v3/socketio/mine;Ljava/lang/String;Lorg/json/JSONObject;Lcn/bmob/v3/socketio/This;)V
    .locals 1

    .prologue
    .line 32
    .line 4356
    new-instance v0, Lcn/bmob/v3/socketio/mine$7;

    invoke-direct {v0, p0, p2, p3}, Lcn/bmob/v3/socketio/mine$7;-><init>(Lcn/bmob/v3/socketio/mine;Lorg/json/JSONObject;Lcn/bmob/v3/socketio/This;)V

    invoke-direct {p0, p1, v0}, Lcn/bmob/v3/socketio/mine;->Code(Ljava/lang/String;Lcn/bmob/v3/socketio/mine$This;)V

    .line 32
    return-void
.end method

.method private Code(Ljava/lang/String;Lcn/bmob/v3/socketio/mine$This;)V
    .locals 3

    .prologue
    .line 256
    iget-object v0, p0, Lcn/bmob/v3/socketio/mine;->V:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/bmob/v3/socketio/acknowledge;

    .line 257
    if-eqz p1, :cond_1

    iget-object v2, v0, Lcn/bmob/v3/socketio/acknowledge;->B:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    :cond_1
    invoke-interface {p2, v0}, Lcn/bmob/v3/socketio/mine$This;->Code(Lcn/bmob/v3/socketio/acknowledge;)V

    goto :goto_0

    .line 261
    :cond_2
    return-void
.end method

.method static synthetic V(Lcn/bmob/v3/socketio/mine;Ljava/lang/String;)Lcn/bmob/v3/socketio/This;
    .locals 1

    .prologue
    .line 32
    .line 2434
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2435
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2437
    :cond_0
    new-instance v0, Lcn/bmob/v3/socketio/mine$2;

    invoke-direct {v0, p0, p1}, Lcn/bmob/v3/socketio/mine$2;-><init>(Lcn/bmob/v3/socketio/mine;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final Code()Z
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcn/bmob/v3/socketio/mine;->I:Lcn/bmob/v3/socketio/From;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/bmob/v3/socketio/mine;->I:Lcn/bmob/v3/socketio/From;

    invoke-virtual {v0}, Lcn/bmob/v3/socketio/From;->Z()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final V()V
    .locals 4

    .prologue
    .line 98
    invoke-virtual {p0}, Lcn/bmob/v3/socketio/mine;->Code()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcn/bmob/v3/socketio/mine;->D:Lcn/bmob/v3/socketio/thing;

    iget-object v1, p0, Lcn/bmob/v3/socketio/mine;->Z:Lcn/bmob/v3/socketio/thing$This;

    new-instance v2, Lcn/bmob/v3/socketio/mine$1;

    invoke-direct {v2, p0}, Lcn/bmob/v3/socketio/mine$1;-><init>(Lcn/bmob/v3/socketio/mine;)V

    .line 1072
    new-instance v3, Lcn/bmob/v3/socketio/thing$1;

    invoke-direct {v3, v0, v1, v2}, Lcn/bmob/v3/socketio/thing$1;-><init>(Lcn/bmob/v3/socketio/thing;Lcn/bmob/v3/socketio/thing$This;Lcn/bmob/v3/socketio/thing$thing;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v3, v0}, Lcn/bmob/v3/socketio/thing$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
