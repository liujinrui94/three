.class public Lcn/volley/Cache$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public aG:Ljava/lang/String;

.field public aH:J

.field public aI:J

.field public aJ:J

.field public aK:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public data:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcn/volley/Cache$Entry;->aK:Ljava/util/Map;

    .line 67
    return-void
.end method
