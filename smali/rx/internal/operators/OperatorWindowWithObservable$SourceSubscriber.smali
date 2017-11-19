.class final Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;
.super Lrx/Subscriber;
.source "OperatorWindowWithObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorWindowWithObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SourceSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
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


# direct methods
.method public constructor <init>(Lrx/Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lrx/Observable",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/Observable<TT;>;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 74
    new-instance v0, Lrx/observers/SerializedSubscriber;

    invoke-direct {v0, p1}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;)V

    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->child:Lrx/Subscriber;

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->guard:Ljava/lang/Object;

    .line 76
    return-void
.end method


# virtual methods
.method complete()V
    .locals 2

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber<TT;>;"
    const/4 v1, 0x0

    .line 247
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->consumer:Lrx/Observer;

    .line 248
    .local v0, "s":Lrx/Observer;, "Lrx/Observer<TT;>;"
    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->consumer:Lrx/Observer;

    .line 249
    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->producer:Lrx/Observable;

    .line 251
    if-eqz v0, :cond_0

    .line 252
    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    .line 254
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V

    .line 255
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->unsubscribe()V

    .line 256
    return-void
.end method

.method createNewWindow()V
    .locals 1

    .prologue
    .line 158
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber<TT;>;"
    invoke-static {}, Lrx/subjects/UnicastSubject;->create()Lrx/subjects/UnicastSubject;

    move-result-object v0

    .line 159
    .local v0, "bus":Lrx/subjects/UnicastSubject;, "Lrx/subjects/UnicastSubject<TT;>;"
    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->consumer:Lrx/Observer;

    .line 160
    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->producer:Lrx/Observable;

    .line 161
    return-void
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
    .line 128
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber<TT;>;"
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-nez p1, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 131
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

    .line 132
    .local v1, "o":Ljava/lang/Object;
    sget-object v3, Lrx/internal/operators/OperatorWindowWithObservable;->NEXT_SUBJECT:Ljava/lang/Object;

    if-ne v1, v3, :cond_2

    .line 133
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->replaceSubject()V

    goto :goto_1

    .line 135
    :cond_2
    sget-object v3, Lrx/internal/operators/OperatorWindowWithObservable;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v3, v1}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 136
    sget-object v3, Lrx/internal/operators/OperatorWindowWithObservable;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v3, v1}, Lrx/internal/operators/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->error(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 139
    :cond_3
    sget-object v3, Lrx/internal/operators/OperatorWindowWithObservable;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v3, v1}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 140
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->complete()V

    goto :goto_0

    .line 144
    :cond_4
    move-object v2, v1

    .line 145
    .local v2, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v2}, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->emitValue(Ljava/lang/Object;)V

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
    .line 163
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->consumer:Lrx/Observer;

    .line 164
    .local v0, "s":Lrx/Observer;, "Lrx/Observer<TT;>;"
    if-eqz v0, :cond_0

    .line 165
    invoke-interface {v0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 167
    :cond_0
    return-void
.end method

.method error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber<TT;>;"
    const/4 v1, 0x0

    .line 258
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->consumer:Lrx/Observer;

    .line 259
    .local v0, "s":Lrx/Observer;, "Lrx/Observer<TT;>;"
    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->consumer:Lrx/Observer;

    .line 260
    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->producer:Lrx/Observable;

    .line 262
    if-eqz v0, :cond_0

    .line 263
    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    .line 265
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v1, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 266
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->unsubscribe()V

    .line 267
    return-void
.end method

.method public onCompleted()V
    .locals 5

    .prologue
    .line 185
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber<TT;>;"
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v3

    .line 186
    :try_start_0
    iget-boolean v2, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->emitting:Z

    if-eqz v2, :cond_1

    .line 187
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->queue:Ljava/util/List;

    if-nez v2, :cond_0

    .line 188
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->queue:Ljava/util/List;

    .line 190
    :cond_0
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->queue:Ljava/util/List;

    sget-object v4, Lrx/internal/operators/OperatorWindowWithObservable;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v4}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    monitor-exit v3

    .line 204
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->queue:Ljava/util/List;

    .line 194
    .local v1, "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    iput-object v2, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->queue:Ljava/util/List;

    .line 195
    const/4 v2, 0x1

    iput-boolean v2, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->emitting:Z

    .line 196
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :try_start_1
    invoke-virtual {p0, v1}, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->drain(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 203
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->complete()V

    goto :goto_0

    .line 196
    .end local v1    # "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 199
    .restart local v1    # "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->error(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 171
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v1

    .line 172
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->emitting:Z

    if-eqz v0, :cond_0

    .line 173
    sget-object v0, Lrx/internal/operators/OperatorWindowWithObservable;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p1}, Lrx/internal/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->queue:Ljava/util/List;

    .line 174
    monitor-exit v1

    .line 180
    :goto_0
    return-void

    .line 176
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->queue:Ljava/util/List;

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->emitting:Z

    .line 178
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->error(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 178
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
    .line 86
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 87
    :try_start_0
    iget-boolean v3, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->emitting:Z

    if-eqz v3, :cond_2

    .line 88
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->queue:Ljava/util/List;

    if-nez v3, :cond_0

    .line 89
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->queue:Ljava/util/List;

    .line 91
    :cond_0
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->queue:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    monitor-exit v4

    .line 125
    :cond_1
    :goto_0
    return-void

    .line 94
    :cond_2
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->queue:Ljava/util/List;

    .line 95
    .local v0, "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v3, 0x0

    iput-object v3, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->queue:Ljava/util/List;

    .line 96
    const/4 v3, 0x1

    iput-boolean v3, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->emitting:Z

    .line 97
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 98
    const/4 v1, 0x1

    .line 99
    .local v1, "once":Z
    const/4 v2, 0x0

    .line 102
    .local v2, "skipFinal":Z
    :cond_3
    :try_start_1
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->drain(Ljava/util/List;)V

    .line 103
    if-eqz v1, :cond_4

    .line 104
    const/4 v1, 0x0

    .line 105
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->emitValue(Ljava/lang/Object;)V

    .line 108
    :cond_4
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 109
    :try_start_2
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->queue:Ljava/util/List;

    .line 110
    const/4 v3, 0x0

    iput-object v3, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->queue:Ljava/util/List;

    .line 111
    if-nez v0, :cond_5

    .line 112
    const/4 v3, 0x0

    iput-boolean v3, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->emitting:Z

    .line 113
    const/4 v2, 0x1

    .line 114
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 119
    if-nez v2, :cond_1

    .line 120
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 121
    const/4 v3, 0x0

    :try_start_3
    iput-boolean v3, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->emitting:Z

    .line 122
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 97
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

    .line 116
    .restart local v0    # "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v1    # "once":Z
    .restart local v2    # "skipFinal":Z
    :cond_5
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 117
    :try_start_6
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v3}, Lrx/Subscriber;->isUnsubscribed()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-result v3

    if-eqz v3, :cond_3

    .line 119
    if-nez v2, :cond_1

    .line 120
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 121
    const/4 v3, 0x0

    :try_start_7
    iput-boolean v3, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->emitting:Z

    .line 122
    monitor-exit v4

    goto :goto_0

    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v3

    .line 116
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

    .line 119
    :catchall_4
    move-exception v3

    if-nez v2, :cond_6

    .line 120
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 121
    const/4 v5, 0x0

    :try_start_a
    iput-boolean v5, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->emitting:Z

    .line 122
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
    .line 80
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber<TT;>;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->request(J)V

    .line 81
    return-void
.end method

.method replaceSubject()V
    .locals 3

    .prologue
    .line 150
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->consumer:Lrx/Observer;

    .line 151
    .local v0, "s":Lrx/Observer;, "Lrx/Observer<TT;>;"
    if-eqz v0, :cond_0

    .line 152
    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    .line 154
    :cond_0
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->createNewWindow()V

    .line 155
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->child:Lrx/Subscriber;

    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->producer:Lrx/Observable;

    invoke-virtual {v1, v2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 156
    return-void
.end method

.method replaceWindow()V
    .locals 6

    .prologue
    .line 207
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber<TT;>;"
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 208
    :try_start_0
    iget-boolean v3, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->emitting:Z

    if-eqz v3, :cond_2

    .line 209
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->queue:Ljava/util/List;

    if-nez v3, :cond_0

    .line 210
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->queue:Ljava/util/List;

    .line 212
    :cond_0
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->queue:Ljava/util/List;

    sget-object v5, Lrx/internal/operators/OperatorWindowWithObservable;->NEXT_SUBJECT:Ljava/lang/Object;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    monitor-exit v4

    .line 245
    :cond_1
    :goto_0
    return-void

    .line 215
    :cond_2
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->queue:Ljava/util/List;

    .line 216
    .local v0, "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v3, 0x0

    iput-object v3, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->queue:Ljava/util/List;

    .line 217
    const/4 v3, 0x1

    iput-boolean v3, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->emitting:Z

    .line 218
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 219
    const/4 v1, 0x1

    .line 220
    .local v1, "once":Z
    const/4 v2, 0x0

    .line 223
    .local v2, "skipFinal":Z
    :cond_3
    :try_start_1
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->drain(Ljava/util/List;)V

    .line 224
    if-eqz v1, :cond_4

    .line 225
    const/4 v1, 0x0

    .line 226
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->replaceSubject()V

    .line 228
    :cond_4
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 229
    :try_start_2
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->queue:Ljava/util/List;

    .line 230
    const/4 v3, 0x0

    iput-object v3, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->queue:Ljava/util/List;

    .line 231
    if-nez v0, :cond_5

    .line 232
    const/4 v3, 0x0

    iput-boolean v3, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->emitting:Z

    .line 233
    const/4 v2, 0x1

    .line 234
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 239
    if-nez v2, :cond_1

    .line 240
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 241
    const/4 v3, 0x0

    :try_start_3
    iput-boolean v3, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->emitting:Z

    .line 242
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 218
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

    .line 236
    .restart local v0    # "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v1    # "once":Z
    .restart local v2    # "skipFinal":Z
    :cond_5
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 237
    :try_start_6
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v3}, Lrx/Subscriber;->isUnsubscribed()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-result v3

    if-eqz v3, :cond_3

    .line 239
    if-nez v2, :cond_1

    .line 240
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 241
    const/4 v3, 0x0

    :try_start_7
    iput-boolean v3, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->emitting:Z

    .line 242
    monitor-exit v4

    goto :goto_0

    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v3

    .line 236
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

    .line 239
    :catchall_4
    move-exception v3

    if-nez v2, :cond_6

    .line 240
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 241
    const/4 v5, 0x0

    :try_start_a
    iput-boolean v5, p0, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->emitting:Z

    .line 242
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
