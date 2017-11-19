.class final Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;
.super Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;
.source "OperatorReplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SizeAndTimeBoundReplayBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2ffd21f3bea38aacL


# instance fields
.field final limit:I

.field final maxAgeInMillis:J

.field final scheduler:Lrx/Scheduler;


# direct methods
.method public constructor <init>(IJLrx/Scheduler;)V
    .locals 0
    .param p1, "limit"    # I
    .param p2, "maxAgeInMillis"    # J
    .param p4, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 1206
    .local p0, "this":Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;, "Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer<TT;>;"
    invoke-direct {p0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;-><init>()V

    .line 1207
    iput-object p4, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->scheduler:Lrx/Scheduler;

    .line 1208
    iput p1, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->limit:I

    .line 1209
    iput-wide p2, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->maxAgeInMillis:J

    .line 1210
    return-void
.end method


# virtual methods
.method enterTransform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1214
    .local p0, "this":Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;, "Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer<TT;>;"
    new-instance v0, Lrx/schedulers/Timestamped;

    iget-object v1, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->scheduler:Lrx/Scheduler;

    invoke-virtual {v1}, Lrx/Scheduler;->now()J

    move-result-wide v2

    invoke-direct {v0, v2, v3, p1}, Lrx/schedulers/Timestamped;-><init>(JLjava/lang/Object;)V

    return-object v0
.end method

.method leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1219
    .local p0, "this":Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;, "Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer<TT;>;"
    check-cast p1, Lrx/schedulers/Timestamped;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Lrx/schedulers/Timestamped;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method truncate()V
    .locals 10

    .prologue
    .line 1224
    .local p0, "this":Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;, "Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer<TT;>;"
    iget-object v6, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->scheduler:Lrx/Scheduler;

    invoke-virtual {v6}, Lrx/Scheduler;->now()J

    move-result-wide v6

    iget-wide v8, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->maxAgeInMillis:J

    sub-long v4, v6, v8

    .line 1226
    .local v4, "timeLimit":J
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/internal/operators/OperatorReplay$Node;

    .line 1227
    .local v2, "prev":Lrx/internal/operators/OperatorReplay$Node;
    invoke-virtual {v2}, Lrx/internal/operators/OperatorReplay$Node;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/OperatorReplay$Node;

    .line 1229
    .local v1, "next":Lrx/internal/operators/OperatorReplay$Node;
    const/4 v0, 0x0

    .line 1231
    .local v0, "e":I
    :goto_0
    if-eqz v1, :cond_1

    .line 1232
    iget v6, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->size:I

    iget v7, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->limit:I

    if-le v6, v7, :cond_0

    .line 1233
    add-int/lit8 v0, v0, 0x1

    .line 1234
    iget v6, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->size:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->size:I

    .line 1235
    move-object v2, v1

    .line 1236
    invoke-virtual {v1}, Lrx/internal/operators/OperatorReplay$Node;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "next":Lrx/internal/operators/OperatorReplay$Node;
    check-cast v1, Lrx/internal/operators/OperatorReplay$Node;

    .restart local v1    # "next":Lrx/internal/operators/OperatorReplay$Node;
    goto :goto_0

    .line 1238
    :cond_0
    iget-object v3, v1, Lrx/internal/operators/OperatorReplay$Node;->value:Ljava/lang/Object;

    check-cast v3, Lrx/schedulers/Timestamped;

    .line 1239
    .local v3, "v":Lrx/schedulers/Timestamped;, "Lrx/schedulers/Timestamped<*>;"
    invoke-virtual {v3}, Lrx/schedulers/Timestamped;->getTimestampMillis()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-gtz v6, :cond_1

    .line 1240
    add-int/lit8 v0, v0, 0x1

    .line 1241
    iget v6, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->size:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->size:I

    .line 1242
    move-object v2, v1

    .line 1243
    invoke-virtual {v1}, Lrx/internal/operators/OperatorReplay$Node;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "next":Lrx/internal/operators/OperatorReplay$Node;
    check-cast v1, Lrx/internal/operators/OperatorReplay$Node;

    .line 1247
    .restart local v1    # "next":Lrx/internal/operators/OperatorReplay$Node;
    goto :goto_0

    .line 1252
    .end local v3    # "v":Lrx/schedulers/Timestamped;, "Lrx/schedulers/Timestamped<*>;"
    :cond_1
    if-eqz v0, :cond_2

    .line 1253
    invoke-virtual {p0, v2}, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->setFirst(Lrx/internal/operators/OperatorReplay$Node;)V

    .line 1255
    :cond_2
    return-void
.end method

.method truncateFinal()V
    .locals 10

    .prologue
    .line 1258
    .local p0, "this":Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;, "Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer<TT;>;"
    iget-object v6, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->scheduler:Lrx/Scheduler;

    invoke-virtual {v6}, Lrx/Scheduler;->now()J

    move-result-wide v6

    iget-wide v8, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->maxAgeInMillis:J

    sub-long v4, v6, v8

    .line 1260
    .local v4, "timeLimit":J
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/internal/operators/OperatorReplay$Node;

    .line 1261
    .local v2, "prev":Lrx/internal/operators/OperatorReplay$Node;
    invoke-virtual {v2}, Lrx/internal/operators/OperatorReplay$Node;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/OperatorReplay$Node;

    .line 1263
    .local v1, "next":Lrx/internal/operators/OperatorReplay$Node;
    const/4 v0, 0x0

    .line 1265
    .local v0, "e":I
    :goto_0
    if-eqz v1, :cond_0

    iget v6, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->size:I

    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    .line 1266
    iget-object v3, v1, Lrx/internal/operators/OperatorReplay$Node;->value:Ljava/lang/Object;

    check-cast v3, Lrx/schedulers/Timestamped;

    .line 1267
    .local v3, "v":Lrx/schedulers/Timestamped;, "Lrx/schedulers/Timestamped<*>;"
    invoke-virtual {v3}, Lrx/schedulers/Timestamped;->getTimestampMillis()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-gtz v6, :cond_0

    .line 1268
    add-int/lit8 v0, v0, 0x1

    .line 1269
    iget v6, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->size:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->size:I

    .line 1270
    move-object v2, v1

    .line 1271
    invoke-virtual {v1}, Lrx/internal/operators/OperatorReplay$Node;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "next":Lrx/internal/operators/OperatorReplay$Node;
    check-cast v1, Lrx/internal/operators/OperatorReplay$Node;

    .line 1275
    .restart local v1    # "next":Lrx/internal/operators/OperatorReplay$Node;
    goto :goto_0

    .line 1279
    .end local v3    # "v":Lrx/schedulers/Timestamped;, "Lrx/schedulers/Timestamped<*>;"
    :cond_0
    if-eqz v0, :cond_1

    .line 1280
    invoke-virtual {p0, v2}, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->setFirst(Lrx/internal/operators/OperatorReplay$Node;)V

    .line 1282
    :cond_1
    return-void
.end method
