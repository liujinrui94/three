.class Lcn/volley/VolleyLog$MarkerLog$Marker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final bH:J

.field public final name:Ljava/lang/String;

.field public final time:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcn/volley/VolleyLog$MarkerLog$Marker;->name:Ljava/lang/String;

    .line 116
    iput-wide p2, p0, Lcn/volley/VolleyLog$MarkerLog$Marker;->bH:J

    .line 117
    iput-wide p4, p0, Lcn/volley/VolleyLog$MarkerLog$Marker;->time:J

    .line 118
    return-void
.end method
