.class Lcn/bmob/push/lib/service/Client$3;
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
.field private synthetic av:Lcn/bmob/push/lib/service/Client;


# direct methods
.method constructor <init>(Lcn/bmob/push/lib/service/Client;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/bmob/push/lib/service/Client$3;->av:Lcn/bmob/push/lib/service/Client;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Code(Lcn/volley/VolleyError;)V
    .locals 2

    .prologue
    .line 148
    new-instance v0, Lcn/bmob/push/lib/util/BmobPreferenceUtil;

    iget-object v1, p0, Lcn/bmob/push/lib/service/Client$3;->av:Lcn/bmob/push/lib/service/Client;

    invoke-static {v1}, Lcn/bmob/push/lib/service/Client;->V(Lcn/bmob/push/lib/service/Client;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/bmob/push/lib/util/BmobPreferenceUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcn/bmob/push/lib/util/BmobPreferenceUtil;->m()V

    .line 149
    return-void
.end method
