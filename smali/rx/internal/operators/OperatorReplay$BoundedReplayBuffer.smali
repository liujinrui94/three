.class Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "OperatorReplay.java"

# interfaces
.implements Lrx/internal/operators/OperatorReplay$ReplayBuffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BoundedReplayBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Lrx/internal/operators/OperatorReplay$Node;",
        ">;",
        "Lrx/internal/operators/OperatorReplay$ReplayBuffer",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2090aef8efde5e9eL


# instance fields
.field index:J

.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field size:I

.field tail:Lrx/internal/operators/OperatorReplay$Node;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 960
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 961
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v1

    iput-object v1, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    .line 962
    new-instance v0, Lrx/internal/operators/OperatorReplay$Node;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lrx/internal/operators/OperatorReplay$Node;-><init>(Ljava/lang/Object;J)V

    .line 963
    .local v0, "n":Lrx/internal/operators/OperatorReplay$Node;
    iput-object v0, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->tail:Lrx/internal/operators/OperatorReplay$Node;

    .line 964
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->set(Ljava/lang/Object;)V

    .line 965
    return-void
.end method


# virtual methods
.method final addLast(Lrx/internal/operators/OperatorReplay$Node;)V
    .locals 1
    .param p1, "n"    # Lrx/internal/operators/OperatorReplay$Node;

    .prologue
    .line 972
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->tail:Lrx/internal/operators/OperatorReplay$Node;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OperatorReplay$Node;->set(Ljava/lang/Object;)V

    .line 973
    iput-object p1, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->tail:Lrx/internal/operators/OperatorReplay$Node;

    .line 974
    iget v0, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->size:I

    .line 975
    return-void
.end method

.method final collect(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1146
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    .local p1, "output":Ljava/util/Collection;, "Ljava/util/Collection<-TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorReplay$Node;

    .line 1148
    .local v0, "n":Lrx/internal/operators/OperatorReplay$Node;
    :goto_0
    invoke-virtual {v0}, Lrx/internal/operators/OperatorReplay$Node;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/OperatorReplay$Node;

    .line 1149
    .local v1, "next":Lrx/internal/operators/OperatorReplay$Node;
    if-eqz v1, :cond_0

    .line 1150
    iget-object v2, v1, Lrx/internal/operators/OperatorReplay$Node;->value:Ljava/lang/Object;

    .line 1151
    .local v2, "o":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1152
    .local v3, "v":Ljava/lang/Object;
    iget-object v4, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v4, v3}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v4, v3}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1161
    .end local v2    # "o":Ljava/lang/Object;
    .end local v3    # "v":Ljava/lang/Object;
    :cond_0
    return-void

    .line 1155
    .restart local v2    # "o":Ljava/lang/Object;
    .restart local v3    # "v":Ljava/lang/Object;
    :cond_1
    iget-object v4, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v4, v3}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1156
    move-object v0, v1

    .line 1160
    goto :goto_0
.end method

.method public final complete()V
    .locals 6

    .prologue
    .line 1026
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    iget-object v2, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v2}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->enterTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1027
    .local v1, "o":Ljava/lang/Object;
    new-instance v0, Lrx/internal/operators/OperatorReplay$Node;

    iget-wide v2, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->index:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->index:J

    invoke-direct {v0, v1, v2, v3}, Lrx/internal/operators/OperatorReplay$Node;-><init>(Ljava/lang/Object;J)V

    .line 1028
    .local v0, "n":Lrx/internal/operators/OperatorReplay$Node;
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->addLast(Lrx/internal/operators/OperatorReplay$Node;)V

    .line 1029
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->truncateFinal()V

    .line 1030
    return-void
.end method

.method enterTransform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1120
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    return-object p1
.end method

.method public final error(Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1018
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    iget-object v2, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v2, p1}, Lrx/internal/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->enterTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1019
    .local v1, "o":Ljava/lang/Object;
    new-instance v0, Lrx/internal/operators/OperatorReplay$Node;

    iget-wide v2, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->index:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->index:J

    invoke-direct {v0, v1, v2, v3}, Lrx/internal/operators/OperatorReplay$Node;-><init>(Ljava/lang/Object;J)V

    .line 1020
    .local v0, "n":Lrx/internal/operators/OperatorReplay$Node;
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->addLast(Lrx/internal/operators/OperatorReplay$Node;)V

    .line 1021
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->truncateFinal()V

    .line 1022
    return-void
.end method

.method hasCompleted()Z
    .locals 2

    .prologue
    .line 1166
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->tail:Lrx/internal/operators/OperatorReplay$Node;

    iget-object v0, v0, Lrx/internal/operators/OperatorReplay$Node;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    iget-object v1, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->tail:Lrx/internal/operators/OperatorReplay$Node;

    iget-object v1, v1, Lrx/internal/operators/OperatorReplay$Node;->value:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasError()Z
    .locals 2

    .prologue
    .line 1163
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->tail:Lrx/internal/operators/OperatorReplay$Node;

    iget-object v0, v0, Lrx/internal/operators/OperatorReplay$Node;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    iget-object v1, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->tail:Lrx/internal/operators/OperatorReplay$Node;

    iget-object v1, v1, Lrx/internal/operators/OperatorReplay$Node;->value:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1129
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    return-object p1
.end method

.method public final next(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1010
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v2, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->enterTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1011
    .local v1, "o":Ljava/lang/Object;
    new-instance v0, Lrx/internal/operators/OperatorReplay$Node;

    iget-wide v2, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->index:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->index:J

    invoke-direct {v0, v1, v2, v3}, Lrx/internal/operators/OperatorReplay$Node;-><init>(Ljava/lang/Object;J)V

    .line 1012
    .local v0, "n":Lrx/internal/operators/OperatorReplay$Node;
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->addLast(Lrx/internal/operators/OperatorReplay$Node;)V

    .line 1013
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->truncate()V

    .line 1014
    return-void
.end method

.method final removeFirst()V
    .locals 4

    .prologue
    .line 980
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorReplay$Node;

    .line 981
    .local v0, "head":Lrx/internal/operators/OperatorReplay$Node;
    invoke-virtual {v0}, Lrx/internal/operators/OperatorReplay$Node;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/OperatorReplay$Node;

    .line 982
    .local v1, "next":Lrx/internal/operators/OperatorReplay$Node;
    if-nez v1, :cond_0

    .line 983
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Empty list!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 985
    :cond_0
    iget v2, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->size:I

    .line 988
    invoke-virtual {p0, v1}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->setFirst(Lrx/internal/operators/OperatorReplay$Node;)V

    .line 989
    return-void
.end method

.method final removeSome(I)V
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 991
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorReplay$Node;

    .line 992
    .local v0, "head":Lrx/internal/operators/OperatorReplay$Node;
    :goto_0
    if-lez p1, :cond_0

    .line 993
    invoke-virtual {v0}, Lrx/internal/operators/OperatorReplay$Node;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "head":Lrx/internal/operators/OperatorReplay$Node;
    check-cast v0, Lrx/internal/operators/OperatorReplay$Node;

    .line 994
    .restart local v0    # "head":Lrx/internal/operators/OperatorReplay$Node;
    add-int/lit8 p1, p1, -0x1

    .line 995
    iget v1, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->size:I

    goto :goto_0

    .line 998
    :cond_0
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->setFirst(Lrx/internal/operators/OperatorReplay$Node;)V

    .line 999
    return-void
.end method

.method public final replay(Lrx/internal/operators/OperatorReplay$InnerProducer;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorReplay$InnerProducer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1034
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    .local p1, "output":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    monitor-enter p1

    .line 1035
    :try_start_0
    iget-boolean v9, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->emitting:Z

    if-eqz v9, :cond_1

    .line 1036
    const/4 v9, 0x1

    iput-boolean v9, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->missed:Z

    .line 1037
    monitor-exit p1

    .line 1105
    :cond_0
    :goto_0
    return-void

    .line 1039
    :cond_1
    const/4 v9, 0x1

    iput-boolean v9, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->emitting:Z

    .line 1040
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1042
    :goto_1
    invoke-virtual {p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->isUnsubscribed()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1046
    invoke-virtual {p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->get()J

    move-result-wide v6

    .line 1047
    .local v6, "r":J
    const-wide v10, 0x7fffffffffffffffL

    cmp-long v9, v6, v10

    if-nez v9, :cond_4

    const/4 v5, 0x1

    .line 1048
    .local v5, "unbounded":Z
    :goto_2
    const-wide/16 v0, 0x0

    .line 1050
    .local v0, "e":J
    invoke-virtual {p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->index()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/internal/operators/OperatorReplay$Node;

    .line 1051
    .local v3, "node":Lrx/internal/operators/OperatorReplay$Node;
    if-nez v3, :cond_2

    .line 1052
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "node":Lrx/internal/operators/OperatorReplay$Node;
    check-cast v3, Lrx/internal/operators/OperatorReplay$Node;

    .line 1053
    .restart local v3    # "node":Lrx/internal/operators/OperatorReplay$Node;
    iput-object v3, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->index:Ljava/lang/Object;

    .line 1059
    iget-wide v10, v3, Lrx/internal/operators/OperatorReplay$Node;->index:J

    invoke-virtual {p1, v10, v11}, Lrx/internal/operators/OperatorReplay$InnerProducer;->addTotalRequested(J)V

    .line 1062
    :cond_2
    invoke-virtual {p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->isUnsubscribed()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1066
    :cond_3
    const-wide/16 v10, 0x0

    cmp-long v9, v6, v10

    if-eqz v9, :cond_6

    .line 1067
    invoke-virtual {v3}, Lrx/internal/operators/OperatorReplay$Node;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lrx/internal/operators/OperatorReplay$Node;

    .line 1068
    .local v8, "v":Lrx/internal/operators/OperatorReplay$Node;
    if-eqz v8, :cond_6

    .line 1069
    iget-object v9, v8, Lrx/internal/operators/OperatorReplay$Node;->value:Ljava/lang/Object;

    invoke-virtual {p0, v9}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1071
    .local v4, "o":Ljava/lang/Object;
    :try_start_1
    iget-object v9, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    iget-object v10, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->child:Lrx/Subscriber;

    invoke-virtual {v9, v10, v4}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1072
    const/4 v9, 0x0

    iput-object v9, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->index:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1075
    :catch_0
    move-exception v2

    .line 1076
    .local v2, "err":Ljava/lang/Throwable;
    const/4 v9, 0x0

    iput-object v9, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->index:Ljava/lang/Object;

    .line 1077
    invoke-static {v2}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 1078
    invoke-virtual {p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->unsubscribe()V

    .line 1079
    iget-object v9, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v9, v4}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v9, v4}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1080
    iget-object v9, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->child:Lrx/Subscriber;

    iget-object v10, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v10, v4}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v2, v10}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1040
    .end local v0    # "e":J
    .end local v2    # "err":Ljava/lang/Throwable;
    .end local v3    # "node":Lrx/internal/operators/OperatorReplay$Node;
    .end local v4    # "o":Ljava/lang/Object;
    .end local v5    # "unbounded":Z
    .end local v6    # "r":J
    .end local v8    # "v":Lrx/internal/operators/OperatorReplay$Node;
    :catchall_0
    move-exception v9

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    .line 1047
    .restart local v6    # "r":J
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 1084
    .restart local v0    # "e":J
    .restart local v3    # "node":Lrx/internal/operators/OperatorReplay$Node;
    .restart local v4    # "o":Ljava/lang/Object;
    .restart local v5    # "unbounded":Z
    .restart local v8    # "v":Lrx/internal/operators/OperatorReplay$Node;
    :cond_5
    const-wide/16 v10, 0x1

    add-long/2addr v0, v10

    .line 1085
    const-wide/16 v10, 0x1

    sub-long/2addr v6, v10

    .line 1086
    move-object v3, v8

    .line 1090
    invoke-virtual {p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->isUnsubscribed()Z

    move-result v9

    if-eqz v9, :cond_3

    goto/16 :goto_0

    .line 1095
    .end local v4    # "o":Ljava/lang/Object;
    .end local v8    # "v":Lrx/internal/operators/OperatorReplay$Node;
    :cond_6
    const-wide/16 v10, 0x0

    cmp-long v9, v0, v10

    if-eqz v9, :cond_7

    .line 1096
    iput-object v3, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->index:Ljava/lang/Object;

    .line 1097
    if-nez v5, :cond_7

    .line 1098
    invoke-virtual {p1, v0, v1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->produced(J)J

    .line 1102
    :cond_7
    monitor-enter p1

    .line 1103
    :try_start_3
    iget-boolean v9, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->missed:Z

    if-nez v9, :cond_8

    .line 1104
    const/4 v9, 0x0

    iput-boolean v9, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->emitting:Z

    .line 1105
    monitor-exit p1

    goto/16 :goto_0

    .line 1108
    :catchall_1
    move-exception v9

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v9

    .line 1107
    :cond_8
    const/4 v9, 0x0

    :try_start_4
    iput-boolean v9, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->missed:Z

    .line 1108
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_1
.end method

.method final setFirst(Lrx/internal/operators/OperatorReplay$Node;)V
    .locals 0
    .param p1, "n"    # Lrx/internal/operators/OperatorReplay$Node;

    .prologue
    .line 1005
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->set(Ljava/lang/Object;)V

    .line 1006
    return-void
.end method

.method truncate()V
    .locals 0

    .prologue
    .line 1137
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    return-void
.end method

.method truncateFinal()V
    .locals 0

    .prologue
    .line 1144
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    return-void
.end method
