.class final Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;
.super Lrx/Subscriber;
.source "OperatorWindowWithObservableFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorWindowWithObservableFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SourceSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-",
            "Lrx/Observable",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field consumer:Lrx/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observer",
            "<TT;>;"
        }
    .end annotation
.end field

.field emitting:Z

.field final guard:Ljava/lang/Object;

.field final otherFactory:Lrx/functions/Func0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func0",
            "<+",
            "Lrx/Observable",
            "<+TU;>;>;"
        }
    .end annotation
.end field

.field producer:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation
.end field

.field queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final ssub:Lrx/subscriptions/SerialSubscription;


# direct methods
.method public constructor <init>(Lrx/Subscriber;Lrx/functions/Func0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lrx/Observable",
            "<TT;>;>;",
            "Lrx/functions/Func0",
            "<+",
            "Lrx/Observable",
            "<+TU;>;>;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber<TT;TU;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/Observable<TT;>;>;"
    .local p2, "otherFactory":Lrx/functions/Func0;, "Lrx/functions/Func0<+Lrx/Observable<+TU;>;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 77
    new-instance v0, Lrx/observers/SerializedSubscriber;

    invoke-direct {v0, p1}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;)V

    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->child:Lrx/Subscriber;

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->guard:Ljava/lang/Object;

    .line 79
    new-instance v0, Lrx/subscriptions/SerialSubscription;

    invoke-direct {v0}, Lrx/subscriptions/SerialSubscription;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->ssub:Lrx/subscriptions/SerialSubscription;

    .line 80
    iput-object p2, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->otherFactory:Lrx/functions/Func0;

    .line 81
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->ssub:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->add(Lrx/Subscription;)V

    .line 82
    return-void
.end method


# virtual methods
.method complete()V
    .locals 2

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber<TT;TU;>;"
    const/4 v1, 0x0

    .line 265
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->consumer:Lrx/Observer;

    .line 266
    .local v0, "s":Lrx/Observer;, "Lrx/Observer<TT;>;"
    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->consumer:Lrx/Observer;

    .line 267
    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->producer:Lrx/Observable;

    .line 269
    if-eqz v0, :cond_0

    .line 270
    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    .line 272
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V

    .line 273
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->unsubscribe()V

    .line 274
    return-void
.end method

.method createNewWindow()V
    .locals 5

    .prologue
    .line 164
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber<TT;TU;>;"
    invoke-static {}, Lrx/subjects/UnicastSubject;->create()Lrx/subjects/UnicastSubject;

    move-result-object v1

    .line 165
    .local v1, "bus":Lrx/subjects/UnicastSubject;, "Lrx/subjects/UnicastSubject<TT;>;"
    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->consumer:Lrx/Observer;

    .line 166
    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->producer:Lrx/Observable;

    .line 169
    :try_start_0
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->otherFactory:Lrx/functions/Func0;

    invoke-interface {v4}, Lrx/functions/Func0;->call()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/Observable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .local v3, "other":Lrx/Observable;, "Lrx/Observable<+TU;>;"
    new-instance v0, Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber;

    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->child:Lrx/Subscriber;

    invoke-direct {v0, v4, p0}, Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber;-><init>(Lrx/Subscriber;Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;)V

    .line 177
    .local v0, "bs":Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber<TT;TU;>;"
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->ssub:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v4, v0}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    .line 178
    invoke-virtual {v3, v0}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 179
    .end local v0    # "bs":Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber<TT;TU;>;"
    .end local v3    # "other":Lrx/Observable;, "Lrx/Observable<+TU;>;"
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v2

    .line 171
    .local v2, "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v4, v2}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 172
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->unsubscribe()V

    goto :goto_0
.end method

.method drain(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber<TT;TU;>;"
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-nez p1, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 138
    .local v1, "o":Ljava/lang/Object;
    sget-object v3, Lrx/internal/operators/OperatorWindowWithObservableFactory;->NEXT_SUBJECT:Ljava/lang/Object;

    if-ne v1, v3, :cond_2

    .line 139
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->replaceSubject()V

    goto :goto_1

    .line 141
    :cond_2
    sget-object v3, Lrx/internal/operators/OperatorWindowWithObservableFactory;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v3, v1}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 142
    sget-object v3, Lrx/internal/operators/OperatorWindowWithObservableFactory;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v3, v1}, Lrx/internal/operators/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->error(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 145
    :cond_3
    sget-object v3, Lrx/internal/operators/OperatorWindowWithObservableFactory;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v3, v1}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 146
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->complete()V

    goto :goto_0

    .line 150
    :cond_4
    move-object v2, v1

    .line 151
    .local v2, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v2}, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->emitValue(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method emitValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber<TT;TU;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->consumer:Lrx/Observer;

    .line 182
    .local v0, "s":Lrx/Observer;, "Lrx/Observer<TT;>;"
    if-eqz v0, :cond_0

    .line 183
    invoke-interface {v0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 185
    :cond_0
    return-void
.end method

.method error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber<TT;TU;>;"
    const/4 v1, 0x0

    .line 276
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->consumer:Lrx/Observer;

    .line 277
    .local v0, "s":Lrx/Observer;, "Lrx/Observer<TT;>;"
    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->consumer:Lrx/Observer;

    .line 278
    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->producer:Lrx/Observable;

    .line 280
    if-eqz v0, :cond_0

    .line 281
    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    .line 283
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v1, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 284
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->unsubscribe()V

    .line 285
    return-void
.end method

.method public onCompleted()V
    .locals 5

    .prologue
    .line 203
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber<TT;TU;>;"
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v3

    .line 204
    :try_start_0
    iget-boolean v2, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->emitting:Z

    if-eqz v2, :cond_1

    .line 205
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->queue:Ljava/util/List;

    if-nez v2, :cond_0

    .line 206
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->queue:Ljava/util/List;

    .line 208
    :cond_0
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->queue:Ljava/util/List;

    sget-object v4, Lrx/internal/operators/OperatorWindowWithObservableFactory;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v4}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    monitor-exit v3

    .line 222
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->queue:Ljava/util/List;

    .line 212
    .local v1, "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    iput-object v2, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->queue:Ljava/util/List;

    .line 213
    const/4 v2, 0x1

    iput-boolean v2, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->emitting:Z

    .line 214
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :try_start_1
    invoke-virtual {p0, v1}, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->drain(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 221
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->complete()V

    goto :goto_0

    .line 214
    .end local v1    # "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 217
    .restart local v1    # "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->error(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 189
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber<TT;TU;>;"
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v1

    .line 190
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->emitting:Z

    if-eqz v0, :cond_0

    .line 191
    sget-object v0, Lrx/internal/operators/OperatorWindowWithObservableFactory;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p1}, Lrx/internal/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->queue:Ljava/util/List;

    .line 192
    monitor-exit v1

    .line 198
    :goto_0
    return-void

    .line 194
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->queue:Ljava/util/List;

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->emitting:Z

    .line 196
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->error(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 196
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber<TT;TU;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 93
    :try_start_0
    iget-boolean v3, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->emitting:Z

    if-eqz v3, :cond_2

    .line 94
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->queue:Ljava/util/List;

    if-nez v3, :cond_0

    .line 95
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->queue:Ljava/util/List;

    .line 97
    :cond_0
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->queue:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    monitor-exit v4

    .line 131
    :cond_1
    :goto_0
    return-void

    .line 100
    :cond_2
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->queue:Ljava/util/List;

    .line 101
    .local v0, "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v3, 0x0

    iput-object v3, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->queue:Ljava/util/List;

    .line 102
    const/4 v3, 0x1

    iput-boolean v3, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->emitting:Z

    .line 103
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 104
    const/4 v1, 0x1

    .line 105
    .local v1, "once":Z
    const/4 v2, 0x0

    .line 108
    .local v2, "skipFinal":Z
    :cond_3
    :try_start_1
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->drain(Ljava/util/List;)V

    .line 109
    if-eqz v1, :cond_4

    .line 110
    const/4 v1, 0x0

    .line 111
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->emitValue(Ljava/lang/Object;)V

    .line 114
    :cond_4
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 115
    :try_start_2
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->queue:Ljava/util/List;

    .line 116
    const/4 v3, 0x0

    iput-object v3, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->queue:Ljava/util/List;

    .line 117
    if-nez v0, :cond_5

    .line 118
    const/4 v3, 0x0

    iput-boolean v3, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->emitting:Z

    .line 119
    const/4 v2, 0x1

    .line 120
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 125
    if-nez v2, :cond_1

    .line 126
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 127
    const/4 v3, 0x0

    :try_start_3
    iput-boolean v3, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->emitting:Z

    .line 128
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 103
    .end local v0    # "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v1    # "once":Z
    .end local v2    # "skipFinal":Z
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 122
    .restart local v0    # "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v1    # "once":Z
    .restart local v2    # "skipFinal":Z
    :cond_5
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 123
    :try_start_6
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v3}, Lrx/Subscriber;->isUnsubscribed()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-result v3

    if-eqz v3, :cond_3

    .line 125
    if-nez v2, :cond_1

    .line 126
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 127
    const/4 v3, 0x0

    :try_start_7
    iput-boolean v3, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->emitting:Z

    .line 128
    monitor-exit v4

    goto :goto_0

    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v3

    .line 122
    :catchall_3
    move-exception v3

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 125
    :catchall_4
    move-exception v3

    if-nez v2, :cond_6

    .line 126
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 127
    const/4 v5, 0x0

    :try_start_a
    iput-boolean v5, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->emitting:Z

    .line 128
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :cond_6
    throw v3

    :catchall_5
    move-exception v3

    :try_start_b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v3
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 86
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber<TT;TU;>;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->request(J)V

    .line 87
    return-void
.end method

.method replaceSubject()V
    .locals 3

    .prologue
    .line 156
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber<TT;TU;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->consumer:Lrx/Observer;

    .line 157
    .local v0, "s":Lrx/Observer;, "Lrx/Observer<TT;>;"
    if-eqz v0, :cond_0

    .line 158
    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    .line 160
    :cond_0
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->createNewWindow()V

    .line 161
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->child:Lrx/Subscriber;

    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->producer:Lrx/Observable;

    invoke-virtual {v1, v2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 162
    return-void
.end method

.method replaceWindow()V
    .locals 6

    .prologue
    .line 225
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber<TT;TU;>;"
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 226
    :try_start_0
    iget-boolean v3, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->emitting:Z

    if-eqz v3, :cond_2

    .line 227
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->queue:Ljava/util/List;

    if-nez v3, :cond_0

    .line 228
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->queue:Ljava/util/List;

    .line 230
    :cond_0
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->queue:Ljava/util/List;

    sget-object v5, Lrx/internal/operators/OperatorWindowWithObservableFactory;->NEXT_SUBJECT:Ljava/lang/Object;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    monitor-exit v4

    .line 263
    :cond_1
    :goto_0
    return-void

    .line 233
    :cond_2
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->queue:Ljava/util/List;

    .line 234
    .local v0, "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v3, 0x0

    iput-object v3, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->queue:Ljava/util/List;

    .line 235
    const/4 v3, 0x1

    iput-boolean v3, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->emitting:Z

    .line 236
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 237
    const/4 v1, 0x1

    .line 238
    .local v1, "once":Z
    const/4 v2, 0x0

    .line 241
    .local v2, "skipFinal":Z
    :cond_3
    :try_start_1
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->drain(Ljava/util/List;)V

    .line 242
    if-eqz v1, :cond_4

    .line 243
    const/4 v1, 0x0

    .line 244
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->replaceSubject()V

    .line 246
    :cond_4
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 247
    :try_start_2
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->queue:Ljava/util/List;

    .line 248
    const/4 v3, 0x0

    iput-object v3, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->queue:Ljava/util/List;

    .line 249
    if-nez v0, :cond_5

    .line 250
    const/4 v3, 0x0

    iput-boolean v3, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->emitting:Z

    .line 251
    const/4 v2, 0x1

    .line 252
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 257
    if-nez v2, :cond_1

    .line 258
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 259
    const/4 v3, 0x0

    :try_start_3
    iput-boolean v3, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->emitting:Z

    .line 260
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 236
    .end local v0    # "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v1    # "once":Z
    .end local v2    # "skipFinal":Z
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 254
    .restart local v0    # "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v1    # "once":Z
    .restart local v2    # "skipFinal":Z
    :cond_5
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 255
    :try_start_6
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v3}, Lrx/Subscriber;->isUnsubscribed()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-result v3

    if-eqz v3, :cond_3

    .line 257
    if-nez v2, :cond_1

    .line 258
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 259
    const/4 v3, 0x0

    :try_start_7
    iput-boolean v3, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->emitting:Z

    .line 260
    monitor-exit v4

    goto :goto_0

    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v3

    .line 254
    :catchall_3
    move-exception v3

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 257
    :catchall_4
    move-exception v3

    if-nez v2, :cond_6

    .line 258
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 259
    const/4 v5, 0x0

    :try_start_a
    iput-boolean v5, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->emitting:Z

    .line 260
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :cond_6
    throw v3

    :catchall_5
    move-exception v3

    :try_start_b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v3
.end method
