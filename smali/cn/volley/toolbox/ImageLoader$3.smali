.class Lcn/volley/toolbox/ImageLoader$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/volley/Response$ErrorListener;"
    }
.end annotation


# instance fields
.field private synthetic cd:Lcn/volley/toolbox/ImageLoader;

.field private final synthetic ce:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/volley/toolbox/ImageLoader;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/volley/toolbox/ImageLoader$3;->cd:Lcn/volley/toolbox/ImageLoader;

    iput-object p2, p0, Lcn/volley/toolbox/ImageLoader$3;->ce:Ljava/lang/String;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Code(Lcn/volley/VolleyError;)V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcn/volley/toolbox/ImageLoader$3;->cd:Lcn/volley/toolbox/ImageLoader;

    iget-object v1, p0, Lcn/volley/toolbox/ImageLoader$3;->ce:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcn/volley/toolbox/ImageLoader;->Code(Lcn/volley/toolbox/ImageLoader;Ljava/lang/String;Lcn/volley/VolleyError;)V

    .line 230
    return-void
.end method
