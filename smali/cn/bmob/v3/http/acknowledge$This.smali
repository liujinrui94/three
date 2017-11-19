.class public final Lcn/bmob/v3/http/acknowledge$This;
.super Ljava/lang/Object;
.source "RxBmob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/bmob/v3/http/acknowledge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "This"
.end annotation


# instance fields
.field Code:Lrx/Observable;

.field V:Lrx/Subscription;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-static {}, Lrx/Observable;->empty()Lrx/Observable;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/http/acknowledge$This;->Code:Lrx/Observable;

    .line 96
    iget-object v0, p0, Lcn/bmob/v3/http/acknowledge$This;->Code:Lrx/Observable;

    invoke-virtual {v0}, Lrx/Observable;->subscribe()Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/http/acknowledge$This;->V:Lrx/Subscription;

    .line 97
    return-void
.end method


# virtual methods
.method public final B()Lcn/bmob/v3/http/acknowledge$This;
    .locals 2

    .prologue
    .line 547
    iget-object v0, p0, Lcn/bmob/v3/http/acknowledge$This;->Code:Lrx/Observable;

    new-instance v1, Lcn/bmob/v3/http/acknowledge$This$14;

    invoke-direct {v1, p0}, Lcn/bmob/v3/http/acknowledge$This$14;-><init>(Lcn/bmob/v3/http/acknowledge$This;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/http/acknowledge$This;->Code:Lrx/Observable;

    .line 586
    return-object p0
.end method

.method public final C()Lcn/bmob/v3/http/acknowledge;
    .locals 1

    .prologue
    .line 741
    new-instance v0, Lcn/bmob/v3/http/acknowledge;

    invoke-direct {v0, p0}, Lcn/bmob/v3/http/acknowledge;-><init>(Lcn/bmob/v3/http/acknowledge$This;)V

    return-object v0
.end method

.method public final Code()Lcn/bmob/v3/http/acknowledge$This;
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcn/bmob/v3/http/acknowledge$This;->Code:Lrx/Observable;

    new-instance v1, Lcn/bmob/v3/http/acknowledge$This$3;

    invoke-direct {v1, p0}, Lcn/bmob/v3/http/acknowledge$This$3;-><init>(Lcn/bmob/v3/http/acknowledge$This;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/http/acknowledge$This;->Code:Lrx/Observable;

    .line 335
    return-object p0
.end method

.method public final Code(Lcn/bmob/v3/listener/BmobCallback;)Lcn/bmob/v3/http/acknowledge$This;
    .locals 2

    .prologue
    .line 637
    iget-object v0, p0, Lcn/bmob/v3/http/acknowledge$This;->Code:Lrx/Observable;

    new-instance v1, Lcn/bmob/v3/http/acknowledge$This$15;

    invoke-direct {v1, p0, p1}, Lcn/bmob/v3/http/acknowledge$This$15;-><init>(Lcn/bmob/v3/http/acknowledge$This;Lcn/bmob/v3/listener/BmobCallback;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/http/acknowledge$This;->Code:Lrx/Observable;

    .line 651
    return-object p0
.end method

.method public final Code(Ljava/lang/String;Lorg/json/JSONObject;)Lcn/bmob/v3/http/acknowledge$This;
    .locals 1

    .prologue
    .line 243
    invoke-static {}, Lcn/bmob/v3/http/This;->Code()Lcn/bmob/v3/http/This;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/bmob/v3/http/This;->Code(Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/bmob/v3/http/acknowledge$This;->V(Lrx/Observable;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    return-object v0
.end method

.method public final Code(Ljava/util/List;)Lcn/bmob/v3/http/acknowledge$This;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/bmob/v3/http/bean/R1;",
            ">;)",
            "Lcn/bmob/v3/http/acknowledge$This;"
        }
    .end annotation

    .prologue
    .line 215
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcn/bmob/v3/http/acknowledge$This;->Code(ZLjava/util/List;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    return-object v0
.end method

.method public final Code(Lrx/Observable$OnSubscribe;)Lcn/bmob/v3/http/acknowledge$This;
    .locals 1

    .prologue
    .line 223
    invoke-static {p1}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/http/acknowledge$This;->Code:Lrx/Observable;

    .line 224
    return-object p0
.end method

.method public final Code(Lrx/Observable;)Lcn/bmob/v3/http/acknowledge$This;
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcn/bmob/v3/http/acknowledge$This;->Code:Lrx/Observable;

    .line 233
    return-object p0
.end method

.method public final Code(Lrx/Scheduler;)Lcn/bmob/v3/http/acknowledge$This;
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcn/bmob/v3/http/acknowledge$This;->Code:Lrx/Observable;

    invoke-virtual {v0, p1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/http/acknowledge$This;->Code:Lrx/Observable;

    .line 670
    return-object p0
.end method

.method public final Code(Lrx/functions/Action1;)Lcn/bmob/v3/http/acknowledge$This;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action1",
            "<TT;>;)",
            "Lcn/bmob/v3/http/acknowledge$This;"
        }
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Lcn/bmob/v3/http/acknowledge$This;->Code:Lrx/Observable;

    invoke-virtual {v0, p1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/http/acknowledge$This;->Code:Lrx/Observable;

    .line 289
    return-object p0
.end method

.method public final Code(Lrx/functions/Func1;)Lcn/bmob/v3/http/acknowledge$This;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<TT;TR;>;)",
            "Lcn/bmob/v3/http/acknowledge$This;"
        }
    .end annotation

    .prologue
    .line 309
    iget-object v0, p0, Lcn/bmob/v3/http/acknowledge$This;->Code:Lrx/Observable;

    invoke-virtual {v0, p1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/http/acknowledge$This;->Code:Lrx/Observable;

    .line 310
    return-object p0
.end method

.method public final Code(ZLjava/util/List;)Lcn/bmob/v3/http/acknowledge$This;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lcn/bmob/v3/http/bean/R1;",
            ">;)",
            "Lcn/bmob/v3/http/acknowledge$This;"
        }
    .end annotation

    .prologue
    .line 106
    if-nez p2, :cond_0

    .line 107
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, " R1 list is null "

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    :cond_0
    new-instance v1, Lcn/bmob/v3/http/acknowledge$This$1;

    invoke-direct {v1, p0}, Lcn/bmob/v3/http/acknowledge$This$1;-><init>(Lcn/bmob/v3/http/acknowledge$This;)V

    invoke-static {v1}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v1

    .line 121
    new-instance v2, Lcn/bmob/v3/http/acknowledge$This$12;

    invoke-direct {v2, p0}, Lcn/bmob/v3/http/acknowledge$This$12;-><init>(Lcn/bmob/v3/http/acknowledge$This;)V

    invoke-static {v2}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v2

    .line 133
    new-instance v3, Lcn/bmob/v3/http/acknowledge$This$17;

    invoke-direct {v3, p0}, Lcn/bmob/v3/http/acknowledge$This$17;-><init>(Lcn/bmob/v3/http/acknowledge$This;)V

    invoke-static {v3}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v3

    .line 147
    new-instance v4, Lcn/bmob/v3/http/acknowledge$This$18;

    move-object/from16 v0, p2

    invoke-direct {v4, p0, v0}, Lcn/bmob/v3/http/acknowledge$This$18;-><init>(Lcn/bmob/v3/http/acknowledge$This;Ljava/util/List;)V

    invoke-static {v4}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v4

    .line 157
    new-instance v5, Lcn/bmob/v3/http/acknowledge$This$19;

    move-object/from16 v0, p2

    invoke-direct {v5, p0, v0}, Lcn/bmob/v3/http/acknowledge$This$19;-><init>(Lcn/bmob/v3/http/acknowledge$This;Ljava/util/List;)V

    invoke-static {v5}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v5

    .line 167
    new-instance v6, Lcn/bmob/v3/http/acknowledge$This$20;

    move-object/from16 v0, p2

    invoke-direct {v6, p0, v0}, Lcn/bmob/v3/http/acknowledge$This$20;-><init>(Lcn/bmob/v3/http/acknowledge$This;Ljava/util/List;)V

    invoke-static {v6}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v6

    .line 177
    new-instance v7, Lcn/bmob/v3/http/acknowledge$This$21;

    move-object/from16 v0, p2

    invoke-direct {v7, p0, v0}, Lcn/bmob/v3/http/acknowledge$This$21;-><init>(Lcn/bmob/v3/http/acknowledge$This;Ljava/util/List;)V

    invoke-static {v7}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v7

    .line 188
    if-eqz p1, :cond_1

    .line 189
    new-instance v8, Lcn/bmob/v3/http/acknowledge$This$22;

    invoke-direct {v8, p0}, Lcn/bmob/v3/http/acknowledge$This$22;-><init>(Lcn/bmob/v3/http/acknowledge$This;)V

    invoke-static/range {v1 .. v8}, Lrx/Observable;->combineLatest(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/functions/Func7;)Lrx/Observable;

    move-result-object v1

    iput-object v1, p0, Lcn/bmob/v3/http/acknowledge$This;->Code:Lrx/Observable;

    .line 206
    :goto_0
    return-object p0

    .line 198
    :cond_1
    new-instance v14, Lcn/bmob/v3/http/acknowledge$This$23;

    invoke-direct {v14, p0}, Lcn/bmob/v3/http/acknowledge$This$23;-><init>(Lcn/bmob/v3/http/acknowledge$This;)V

    move-object v8, v1

    move-object v9, v2

    move-object v10, v4

    move-object v11, v5

    move-object v12, v6

    move-object v13, v7

    invoke-static/range {v8 .. v14}, Lrx/Observable;->combineLatest(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/functions/Func6;)Lrx/Observable;

    move-result-object v1

    iput-object v1, p0, Lcn/bmob/v3/http/acknowledge$This;->Code:Lrx/Observable;

    goto :goto_0
.end method

.method public final I()Lcn/bmob/v3/http/acknowledge$This;
    .locals 2

    .prologue
    .line 464
    iget-object v0, p0, Lcn/bmob/v3/http/acknowledge$This;->Code:Lrx/Observable;

    new-instance v1, Lcn/bmob/v3/http/acknowledge$This$9;

    invoke-direct {v1, p0}, Lcn/bmob/v3/http/acknowledge$This$9;-><init>(Lcn/bmob/v3/http/acknowledge$This;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/http/acknowledge$This;->Code:Lrx/Observable;

    .line 470
    return-object p0
.end method

.method public final V()Lcn/bmob/v3/http/acknowledge$This;
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcn/bmob/v3/http/acknowledge$This;->Code:Lrx/Observable;

    new-instance v1, Lcn/bmob/v3/http/acknowledge$This$4;

    invoke-direct {v1, p0}, Lcn/bmob/v3/http/acknowledge$This$4;-><init>(Lcn/bmob/v3/http/acknowledge$This;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/http/acknowledge$This;->Code:Lrx/Observable;

    .line 360
    return-object p0
.end method

.method public final V(Lcn/bmob/v3/listener/BmobCallback;)Lcn/bmob/v3/http/acknowledge$This;
    .locals 2

    .prologue
    .line 689
    if-nez p1, :cond_0

    .line 690
    const-string v0, "listener is null,just create observable."

    invoke-static {v0}, Lcn/bmob/v3/b/This;->Code(Ljava/lang/String;)V

    .line 733
    :goto_0
    return-object p0

    .line 694
    :cond_0
    iget-object v0, p0, Lcn/bmob/v3/http/acknowledge$This;->Code:Lrx/Observable;

    new-instance v1, Lcn/bmob/v3/http/acknowledge$This$16;

    invoke-direct {v1, p0, p1}, Lcn/bmob/v3/http/acknowledge$This$16;-><init>(Lcn/bmob/v3/http/acknowledge$This;Lcn/bmob/v3/listener/BmobCallback;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/http/acknowledge$This;->V:Lrx/Subscription;

    goto :goto_0
.end method

.method public final V(Ljava/lang/String;Lorg/json/JSONObject;)Lcn/bmob/v3/http/acknowledge$This;
    .locals 1

    .prologue
    .line 278
    invoke-static {}, Lcn/bmob/v3/http/This;->Code()Lcn/bmob/v3/http/This;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/bmob/v3/http/This;->Code(Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/http/acknowledge$This;->Code:Lrx/Observable;

    .line 279
    return-object p0
.end method

.method public final V(Lrx/Observable;)Lcn/bmob/v3/http/acknowledge$This;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;)",
            "Lcn/bmob/v3/http/acknowledge$This;"
        }
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Lcn/bmob/v3/http/acknowledge$This;->Code:Lrx/Observable;

    new-instance v1, Lcn/bmob/v3/http/acknowledge$This$2;

    invoke-direct {v1, p0, p1}, Lcn/bmob/v3/http/acknowledge$This$2;-><init>(Lcn/bmob/v3/http/acknowledge$This;Lrx/Observable;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/http/acknowledge$This;->Code:Lrx/Observable;

    .line 268
    return-object p0
.end method

.method public final Z()Lcn/bmob/v3/http/acknowledge$This;
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Lcn/bmob/v3/http/acknowledge$This;->Code:Lrx/Observable;

    new-instance v1, Lcn/bmob/v3/http/acknowledge$This$11;

    invoke-direct {v1, p0}, Lcn/bmob/v3/http/acknowledge$This$11;-><init>(Lcn/bmob/v3/http/acknowledge$This;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/http/acknowledge$This;->Code:Lrx/Observable;

    .line 509
    return-object p0
.end method
