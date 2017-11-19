.class final Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;
.super Ljava/lang/Object;
.source "ReplaySubject.java"

# interfaces
.implements Lrx/subjects/ReplaySubject$ReplayBuffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subjects/ReplaySubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReplaySizeAndTimeBoundBuffer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/subjects/ReplaySubject$ReplayBuffer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field volatile head:Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode",
            "<TT;>;"
        }
    .end annotation
.end field

.field final limit:I

.field final maxAgeMillis:J

.field final scheduler:Lrx/Scheduler;

.field size:I

.field tail:Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IJLrx/Scheduler;)V
    .locals 4
    .param p1, "limit"    # I
    .param p2, "maxAgeMillis"    # J
    .param p4, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 966
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 967
    iput p1, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->limit:I

    .line 968
    new-instance v0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;-><init>(Ljava/lang/Object;J)V

    .line 969
    .local v0, "n":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    iput-object v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->tail:Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    .line 970
    iput-object v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->head:Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    .line 971
    iput-wide p2, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->maxAgeMillis:J

    .line 972
    iput-object p4, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->scheduler:Lrx/Scheduler;

    .line 973
    return-void
.end method


# virtual methods
.method public complete()V
    .locals 1

    .prologue
    .line 1017
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer<TT;>;"
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->evictFinal()V

    .line 1018
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->done:Z

    .line 1019
    return-void
.end method

.method public drain(Lrx/subjects/ReplaySubject$ReplayProducer;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/ReplaySubject$ReplayProducer",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 1055
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer<TT;>;"
    .local p1, "rp":Lrx/subjects/ReplaySubject$ReplayProducer;, "Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    invoke-virtual {p1}, Lrx/subjects/ReplaySubject$ReplayProducer;->getAndIncrement()I

    move-result v9

    if-eqz v9, :cond_0

    .line 1056
    const/4 v9, 0x0

    .line 1136
    :goto_0
    return v9

    .line 1059
    :cond_0
    iget-object v0, p1, Lrx/subjects/ReplaySubject$ReplayProducer;->actual:Lrx/Subscriber;

    .line 1061
    .local v0, "a":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    const/4 v6, 0x1

    .line 1065
    .local v6, "missed":I
    :cond_1
    iget-object v9, p1, Lrx/subjects/ReplaySubject$ReplayProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v10

    .line 1066
    .local v10, "r":J
    const-wide/16 v2, 0x0

    .line 1069
    .local v2, "e":J
    iget-object v8, p1, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    check-cast v8, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    .line 1070
    .local v8, "node":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    if-nez v8, :cond_2

    .line 1071
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->latestHead()Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    move-result-object v8

    .line 1074
    :cond_2
    :goto_1
    cmp-long v9, v2, v10

    if-eqz v9, :cond_7

    .line 1075
    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1076
    const/4 v9, 0x0

    iput-object v9, p1, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    .line 1077
    const/4 v9, 0x0

    goto :goto_0

    .line 1080
    :cond_3
    iget-boolean v1, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->done:Z

    .line 1081
    .local v1, "d":Z
    invoke-virtual {v8}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    .line 1082
    .local v7, "next":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    if-nez v7, :cond_4

    const/4 v4, 0x1

    .line 1084
    .local v4, "empty":Z
    :goto_2
    if-eqz v1, :cond_6

    if-eqz v4, :cond_6

    .line 1085
    const/4 v9, 0x0

    iput-object v9, p1, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    .line 1086
    iget-object v5, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->error:Ljava/lang/Throwable;

    .line 1087
    .local v5, "ex":Ljava/lang/Throwable;
    if-eqz v5, :cond_5

    .line 1088
    invoke-virtual {v0, v5}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 1092
    :goto_3
    const/4 v9, 0x0

    goto :goto_0

    .line 1082
    .end local v4    # "empty":Z
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 1090
    .restart local v4    # "empty":Z
    .restart local v5    # "ex":Ljava/lang/Throwable;
    :cond_5
    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    goto :goto_3

    .line 1095
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_6
    if-eqz v4, :cond_8

    .line 1105
    .end local v1    # "d":Z
    .end local v4    # "empty":Z
    .end local v7    # "next":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    :cond_7
    cmp-long v9, v2, v10

    if-nez v9, :cond_c

    .line 1106
    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1107
    const/4 v9, 0x0

    iput-object v9, p1, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    .line 1108
    const/4 v9, 0x0

    goto :goto_0

    .line 1099
    .restart local v1    # "d":Z
    .restart local v4    # "empty":Z
    .restart local v7    # "next":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    :cond_8
    iget-object v9, v7, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->value:Ljava/lang/Object;

    invoke-virtual {v0, v9}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 1101
    const-wide/16 v12, 0x1

    add-long/2addr v2, v12

    .line 1102
    move-object v8, v7

    .line 1103
    goto :goto_1

    .line 1111
    .end local v1    # "d":Z
    .end local v4    # "empty":Z
    .end local v7    # "next":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    :cond_9
    iget-boolean v1, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->done:Z

    .line 1112
    .restart local v1    # "d":Z
    invoke-virtual {v8}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->get()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_a

    const/4 v4, 0x1

    .line 1114
    .restart local v4    # "empty":Z
    :goto_4
    if-eqz v1, :cond_c

    if-eqz v4, :cond_c

    .line 1115
    const/4 v9, 0x0

    iput-object v9, p1, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    .line 1116
    iget-object v5, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->error:Ljava/lang/Throwable;

    .line 1117
    .restart local v5    # "ex":Ljava/lang/Throwable;
    if-eqz v5, :cond_b

    .line 1118
    invoke-virtual {v0, v5}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 1122
    :goto_5
    const/4 v9, 0x0

    goto :goto_0

    .line 1112
    .end local v4    # "empty":Z
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_a
    const/4 v4, 0x0

    goto :goto_4

    .line 1120
    .restart local v4    # "empty":Z
    .restart local v5    # "ex":Ljava/lang/Throwable;
    :cond_b
    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    goto :goto_5

    .line 1126
    .end local v1    # "d":Z
    .end local v4    # "empty":Z
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_c
    const-wide/16 v12, 0x0

    cmp-long v9, v2, v12

    if-eqz v9, :cond_d

    .line 1127
    const-wide v12, 0x7fffffffffffffffL

    cmp-long v9, v10, v12

    if-eqz v9, :cond_d

    .line 1128
    iget-object v9, p1, Lrx/subjects/ReplaySubject$ReplayProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v9, v2, v3}, Lrx/internal/operators/BackpressureUtils;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 1132
    :cond_d
    iput-object v8, p1, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    .line 1134
    neg-int v9, v6

    invoke-virtual {p1, v9}, Lrx/subjects/ReplaySubject$ReplayProducer;->addAndGet(I)I

    move-result v6

    .line 1135
    if-nez v6, :cond_1

    .line 1136
    const-wide v12, 0x7fffffffffffffffL

    cmp-long v9, v10, v12

    if-nez v9, :cond_e

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_e
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method public error()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 1162
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer<TT;>;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->error:Ljava/lang/Throwable;

    return-object v0
.end method

.method public error(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 1010
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer<TT;>;"
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->evictFinal()V

    .line 1011
    iput-object p1, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->error:Ljava/lang/Throwable;

    .line 1012
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->done:Z

    .line 1013
    return-void
.end method

.method evictFinal()V
    .locals 10

    .prologue
    .line 1022
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer<TT;>;"
    iget-object v3, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->scheduler:Lrx/Scheduler;

    invoke-virtual {v3}, Lrx/Scheduler;->now()J

    move-result-wide v6

    iget-wide v8, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->maxAgeMillis:J

    sub-long v4, v6, v8

    .line 1024
    .local v4, "now":J
    iget-object v1, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->head:Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    .line 1025
    .local v1, "h0":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    move-object v0, v1

    .line 1028
    .local v0, "h":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    :goto_0
    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    .local v2, "n":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    if-eqz v2, :cond_0

    .line 1029
    iget-wide v6, v2, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->timestamp:J

    cmp-long v3, v6, v4

    if-lez v3, :cond_2

    .line 1035
    :cond_0
    if-eq v1, v0, :cond_1

    .line 1036
    iput-object v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->head:Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    .line 1038
    :cond_1
    return-void

    .line 1032
    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 1157
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer<TT;>;"
    iget-boolean v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->done:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1188
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer<TT;>;"
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->latestHead()Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    move-result-object v0

    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public last()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1167
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer<TT;>;"
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->latestHead()Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    move-result-object v0

    .line 1169
    .local v0, "h":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    :goto_0
    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    .local v1, "n":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    if-eqz v1, :cond_0

    .line 1170
    move-object v0, v1

    goto :goto_0

    .line 1172
    :cond_0
    iget-object v2, v0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->value:Ljava/lang/Object;

    return-object v2
.end method

.method latestHead()Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1041
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer<TT;>;"
    iget-object v4, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->scheduler:Lrx/Scheduler;

    invoke-virtual {v4}, Lrx/Scheduler;->now()J

    move-result-wide v4

    iget-wide v6, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->maxAgeMillis:J

    sub-long v2, v4, v6

    .line 1042
    .local v2, "now":J
    iget-object v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->head:Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    .line 1044
    .local v0, "h":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    :goto_0
    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    .local v1, "n":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    if-eqz v1, :cond_0

    .line 1045
    iget-wide v4, v1, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->timestamp:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_1

    .line 1050
    :cond_0
    return-object v0

    .line 1048
    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public next(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 977
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v6, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->scheduler:Lrx/Scheduler;

    invoke-virtual {v6}, Lrx/Scheduler;->now()J

    move-result-wide v4

    .line 979
    .local v4, "now":J
    new-instance v2, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    invoke-direct {v2, p1, v4, v5}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;-><init>(Ljava/lang/Object;J)V

    .line 980
    .local v2, "n":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    iget-object v6, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->tail:Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    invoke-virtual {v6, v2}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->set(Ljava/lang/Object;)V

    .line 981
    iput-object v2, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->tail:Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    .line 983
    iget-wide v6, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->maxAgeMillis:J

    sub-long/2addr v4, v6

    .line 985
    iget v3, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->size:I

    .line 986
    .local v3, "s":I
    iget-object v1, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->head:Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    .line 987
    .local v1, "h0":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    move-object v0, v1

    .line 989
    .local v0, "h":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    iget v6, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->limit:I

    if-ne v3, v6, :cond_2

    .line 990
    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "h":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    check-cast v0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    .line 995
    .restart local v0    # "h":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    :goto_0
    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->get()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "n":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    check-cast v2, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    .restart local v2    # "n":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    if-eqz v2, :cond_0

    .line 996
    iget-wide v6, v2, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->timestamp:J

    cmp-long v6, v6, v4

    if-lez v6, :cond_3

    .line 1003
    :cond_0
    iput v3, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->size:I

    .line 1004
    if-eq v0, v1, :cond_1

    .line 1005
    iput-object v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->head:Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    .line 1007
    :cond_1
    return-void

    .line 992
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 999
    :cond_3
    move-object v0, v2

    .line 1000
    add-int/lit8 v3, v3, -0x1

    goto :goto_0
.end method

.method public size()I
    .locals 3

    .prologue
    .line 1177
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer<TT;>;"
    const/4 v1, 0x0

    .line 1178
    .local v1, "s":I
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->latestHead()Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    move-result-object v2

    invoke-virtual {v2}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    .line 1179
    .local v0, "n":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    :goto_0
    if-eqz v0, :cond_0

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    .line 1180
    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "n":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    check-cast v0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    .line 1181
    .restart local v0    # "n":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1183
    :cond_0
    return v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 1193
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1195
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->latestHead()Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    move-result-object v2

    invoke-virtual {v2}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    .line 1196
    .local v1, "n":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    :goto_0
    if-eqz v1, :cond_0

    .line 1197
    iget-object v2, v1, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->value:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1198
    invoke-virtual {v1}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "n":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    check-cast v1, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    .restart local v1    # "n":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    goto :goto_0

    .line 1200
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method
