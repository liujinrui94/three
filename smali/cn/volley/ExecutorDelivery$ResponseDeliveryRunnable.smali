.class Lcn/volley/ExecutorDelivery$ResponseDeliveryRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final aY:Lcn/volley/Request;

.field private final aZ:Lcn/volley/Response;

.field private final ba:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcn/volley/ExecutorDelivery;Lcn/volley/Request;Lcn/volley/Response;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p2, p0, Lcn/volley/ExecutorDelivery$ResponseDeliveryRunnable;->aY:Lcn/volley/Request;

    .line 84
    iput-object p3, p0, Lcn/volley/ExecutorDelivery$ResponseDeliveryRunnable;->aZ:Lcn/volley/Response;

    .line 85
    iput-object p4, p0, Lcn/volley/ExecutorDelivery$ResponseDeliveryRunnable;->ba:Ljava/lang/Runnable;

    .line 86
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcn/volley/ExecutorDelivery$ResponseDeliveryRunnable;->aY:Lcn/volley/Request;

    invoke-virtual {v0}, Lcn/volley/Request;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcn/volley/ExecutorDelivery$ResponseDeliveryRunnable;->aY:Lcn/volley/Request;

    const-string v1, "canceled-at-delivery"

    invoke-virtual {v0, v1}, Lcn/volley/Request;->D(Ljava/lang/String;)V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lcn/volley/ExecutorDelivery$ResponseDeliveryRunnable;->aZ:Lcn/volley/Response;

    .line 1070
    iget-object v0, v0, Lcn/volley/Response;->bD:Lcn/volley/VolleyError;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 98
    :goto_1
    if-eqz v0, :cond_3

    .line 99
    iget-object v0, p0, Lcn/volley/ExecutorDelivery$ResponseDeliveryRunnable;->aY:Lcn/volley/Request;

    iget-object v1, p0, Lcn/volley/ExecutorDelivery$ResponseDeliveryRunnable;->aZ:Lcn/volley/Response;

    iget-object v1, v1, Lcn/volley/Response;->result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcn/volley/Request;->C(Ljava/lang/Object;)V

    .line 106
    :goto_2
    iget-object v0, p0, Lcn/volley/ExecutorDelivery$ResponseDeliveryRunnable;->aZ:Lcn/volley/Response;

    iget-boolean v0, v0, Lcn/volley/Response;->bE:Z

    if-eqz v0, :cond_4

    .line 107
    iget-object v0, p0, Lcn/volley/ExecutorDelivery$ResponseDeliveryRunnable;->aY:Lcn/volley/Request;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lcn/volley/Request;->F(Ljava/lang/String;)V

    .line 113
    :goto_3
    iget-object v0, p0, Lcn/volley/ExecutorDelivery$ResponseDeliveryRunnable;->ba:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcn/volley/ExecutorDelivery$ResponseDeliveryRunnable;->ba:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1070
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 101
    :cond_3
    iget-object v0, p0, Lcn/volley/ExecutorDelivery$ResponseDeliveryRunnable;->aY:Lcn/volley/Request;

    iget-object v1, p0, Lcn/volley/ExecutorDelivery$ResponseDeliveryRunnable;->aZ:Lcn/volley/Response;

    iget-object v1, v1, Lcn/volley/Response;->bD:Lcn/volley/VolleyError;

    invoke-virtual {v0, v1}, Lcn/volley/Request;->Z(Lcn/volley/VolleyError;)V

    goto :goto_2

    .line 109
    :cond_4
    iget-object v0, p0, Lcn/volley/ExecutorDelivery$ResponseDeliveryRunnable;->aY:Lcn/volley/Request;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lcn/volley/Request;->D(Ljava/lang/String;)V

    goto :goto_3
.end method
