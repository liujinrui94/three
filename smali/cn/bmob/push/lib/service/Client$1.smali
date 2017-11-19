.class Lcn/bmob/push/lib/service/Client$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/bmob/push/lib/service/Client$VolleyListener;


# instance fields
.field private synthetic av:Lcn/bmob/push/lib/service/Client;


# direct methods
.method constructor <init>(Lcn/bmob/push/lib/service/Client;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/bmob/push/lib/service/Client$1;->av:Lcn/bmob/push/lib/service/Client;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Code(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcn/bmob/push/lib/service/Client$1;->av:Lcn/bmob/push/lib/service/Client;

    invoke-static {v0, p1}, Lcn/bmob/push/lib/service/Client;->Code(Lcn/bmob/push/lib/service/Client;Ljava/lang/String;)V

    .line 86
    return-void
.end method
