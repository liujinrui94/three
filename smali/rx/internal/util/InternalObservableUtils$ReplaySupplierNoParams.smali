.class final Lrx/internal/util/InternalObservableUtils$ReplaySupplierNoParams;
.super Ljava/lang/Object;
.source "InternalObservableUtils.java"

# interfaces
.implements Lrx/functions/Func0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/InternalObservableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReplaySupplierNoParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Func0",
        "<",
        "Lrx/observables/ConnectableObservable",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final source:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/Observable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$ReplaySupplierNoParams;, "Lrx/internal/util/InternalObservableUtils$ReplaySupplierNoParams<TT;>;"
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput-object p1, p0, Lrx/internal/util/InternalObservableUtils$ReplaySupplierNoParams;->source:Lrx/Observable;

    .line 244
    return-void
.end method

.method synthetic constructor <init>(Lrx/Observable;Lrx/internal/util/InternalObservableUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lrx/Observable;
    .param p2, "x1"    # Lrx/internal/util/InternalObservableUtils$1;

    .prologue
    .line 239
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$ReplaySupplierNoParams;, "Lrx/internal/util/InternalObservableUtils$ReplaySupplierNoParams<TT;>;"
    invoke-direct {p0, p1}, Lrx/internal/util/InternalObservableUtils$ReplaySupplierNoParams;-><init>(Lrx/Observable;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 239
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$ReplaySupplierNoParams;, "Lrx/internal/util/InternalObservableUtils$ReplaySupplierNoParams<TT;>;"
    invoke-virtual {p0}, Lrx/internal/util/InternalObservableUtils$ReplaySupplierNoParams;->call()Lrx/observables/ConnectableObservable;

    move-result-object v0

    return-object v0
.end method

.method public call()Lrx/observables/ConnectableObservable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/observables/ConnectableObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 248
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$ReplaySupplierNoParams;, "Lrx/internal/util/InternalObservableUtils$ReplaySupplierNoParams<TT;>;"
    iget-object v0, p0, Lrx/internal/util/InternalObservableUtils$ReplaySupplierNoParams;->source:Lrx/Observable;

    invoke-virtual {v0}, Lrx/Observable;->replay()Lrx/observables/ConnectableObservable;

    move-result-object v0

    return-object v0
.end method
