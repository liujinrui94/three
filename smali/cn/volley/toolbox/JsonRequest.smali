.class public abstract Lcn/volley/toolbox/JsonRequest;
.super Lcn/volley/Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcn/volley/Request",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final PROTOCOL_CHARSET:Ljava/lang/String; = "utf-8"

.field private static final PROTOCOL_CONTENT_TYPE:Ljava/lang/String;


# instance fields
.field private final cm:Lcn/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/volley/Response$Listener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final cq:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 40
    const-string v0, "application/json; charset=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "utf-8"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 39
    sput-object v0, Lcn/volley/toolbox/JsonRequest;->PROTOCOL_CONTENT_TYPE:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcn/volley/Response$Listener;Lcn/volley/Response$ErrorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/volley/Response$Listener",
            "<TT;>;",
            "Lcn/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p5}, Lcn/volley/Request;-><init>(ILjava/lang/String;Lcn/volley/Response$ErrorListener;)V

    .line 59
    iput-object p4, p0, Lcn/volley/toolbox/JsonRequest;->cm:Lcn/volley/Response$Listener;

    .line 60
    iput-object p3, p0, Lcn/volley/toolbox/JsonRequest;->cq:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method protected final C(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcn/volley/toolbox/JsonRequest;->cm:Lcn/volley/Response$Listener;

    invoke-interface {v0, p1}, Lcn/volley/Response$Listener;->Z(Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method protected abstract Code(Lcn/volley/NetworkResponse;)Lcn/volley/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/volley/NetworkResponse;",
            ")",
            "Lcn/volley/Response",
            "<TT;>;"
        }
    .end annotation
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    .line 1089
    sget-object v0, Lcn/volley/toolbox/JsonRequest;->PROTOCOL_CONTENT_TYPE:Ljava/lang/String;

    .line 76
    return-object v0
.end method

.method public final t()[B
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcn/volley/toolbox/JsonRequest;->v()[B

    move-result-object v0

    return-object v0
.end method

.method public final u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcn/volley/toolbox/JsonRequest;->PROTOCOL_CONTENT_TYPE:Ljava/lang/String;

    return-object v0
.end method

.method public final v()[B
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 95
    :try_start_0
    iget-object v1, p0, Lcn/volley/toolbox/JsonRequest;->cq:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 99
    :goto_0
    return-object v0

    .line 95
    :cond_0
    iget-object v1, p0, Lcn/volley/toolbox/JsonRequest;->cq:Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v1

    const-string v1, "Unsupported Encoding while trying to get the bytes of %s using %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 98
    iget-object v4, p0, Lcn/volley/toolbox/JsonRequest;->cq:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "utf-8"

    aput-object v4, v2, v3

    .line 97
    invoke-static {v1, v2}, Lcn/volley/VolleyLog;->Z(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
