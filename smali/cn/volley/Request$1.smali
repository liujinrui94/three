.class Lcn/volley/Request$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic bs:Lcn/volley/Request;

.field private final synthetic bt:Ljava/lang/String;

.field private final synthetic bu:J


# direct methods
.method constructor <init>(Lcn/volley/Request;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcn/volley/Request$1;->bs:Lcn/volley/Request;

    iput-object p2, p0, Lcn/volley/Request$1;->bt:Ljava/lang/String;

    iput-wide p3, p0, Lcn/volley/Request$1;->bu:J

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 212
    iget-object v0, p0, Lcn/volley/Request$1;->bs:Lcn/volley/Request;

    invoke-static {v0}, Lcn/volley/Request;->V(Lcn/volley/Request;)Lcn/volley/VolleyLog$MarkerLog;

    move-result-object v0

    iget-object v1, p0, Lcn/volley/Request$1;->bt:Ljava/lang/String;

    iget-wide v2, p0, Lcn/volley/Request$1;->bu:J

    invoke-virtual {v0, v1, v2, v3}, Lcn/volley/VolleyLog$MarkerLog;->Code(Ljava/lang/String;J)V

    .line 213
    iget-object v0, p0, Lcn/volley/Request$1;->bs:Lcn/volley/Request;

    invoke-static {v0}, Lcn/volley/Request;->V(Lcn/volley/Request;)Lcn/volley/VolleyLog$MarkerLog;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/volley/VolleyLog$MarkerLog;->D(Ljava/lang/String;)V

    .line 214
    return-void
.end method
