.class public Lcn/volley/Response;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final bC:Lcn/volley/Cache$Entry;

.field public final bD:Lcn/volley/VolleyError;

.field public bE:Z

.field public final result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcn/volley/VolleyError;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/volley/Response;->bE:Z

    .line 81
    iput-object v1, p0, Lcn/volley/Response;->result:Ljava/lang/Object;

    .line 82
    iput-object v1, p0, Lcn/volley/Response;->bC:Lcn/volley/Cache$Entry;

    .line 83
    iput-object p1, p0, Lcn/volley/Response;->bD:Lcn/volley/VolleyError;

    .line 84
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcn/volley/Cache$Entry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcn/volley/Cache$Entry;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/volley/Response;->bE:Z

    .line 75
    iput-object p1, p0, Lcn/volley/Response;->result:Ljava/lang/Object;

    .line 76
    iput-object p2, p0, Lcn/volley/Response;->bC:Lcn/volley/Cache$Entry;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/volley/Response;->bD:Lcn/volley/VolleyError;

    .line 78
    return-void
.end method

.method public static B(Lcn/volley/VolleyError;)Lcn/volley/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/volley/VolleyError;",
            ")",
            "Lcn/volley/Response",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lcn/volley/Response;

    invoke-direct {v0, p0}, Lcn/volley/Response;-><init>(Lcn/volley/VolleyError;)V

    return-object v0
.end method

.method public static Code(Ljava/lang/Object;Lcn/volley/Cache$Entry;)Lcn/volley/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcn/volley/Cache$Entry;",
            ")",
            "Lcn/volley/Response",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lcn/volley/Response;

    invoke-direct {v0, p0, p1}, Lcn/volley/Response;-><init>(Ljava/lang/Object;Lcn/volley/Cache$Entry;)V

    return-object v0
.end method
