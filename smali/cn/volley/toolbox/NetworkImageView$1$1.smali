.class Lcn/volley/toolbox/NetworkImageView$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic cu:Lcn/volley/toolbox/NetworkImageView$1;

.field private final synthetic cv:Lcn/volley/toolbox/ImageLoader$ImageContainer;


# direct methods
.method constructor <init>(Lcn/volley/toolbox/NetworkImageView$1;Lcn/volley/toolbox/ImageLoader$ImageContainer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/volley/toolbox/NetworkImageView$1$1;->cu:Lcn/volley/toolbox/NetworkImageView$1;

    iput-object p2, p0, Lcn/volley/toolbox/NetworkImageView$1$1;->cv:Lcn/volley/toolbox/ImageLoader$ImageContainer;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcn/volley/toolbox/NetworkImageView$1$1;->cu:Lcn/volley/toolbox/NetworkImageView$1;

    iget-object v1, p0, Lcn/volley/toolbox/NetworkImageView$1$1;->cv:Lcn/volley/toolbox/ImageLoader$ImageContainer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/volley/toolbox/NetworkImageView$1;->Code(Lcn/volley/toolbox/ImageLoader$ImageContainer;Z)V

    .line 169
    return-void
.end method
