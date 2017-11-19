.class final Lcn/bmob/v3/http/thing$6;
.super Ljava/lang/Object;
.source "BmobFactory.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/http/thing;->Code(Ljava/lang/String;Ljava/lang/String;J)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic Code:Ljava/lang/String;

.field private synthetic I:J

.field private synthetic V:Ljava/lang/String;

.field private synthetic Z:Lcn/bmob/v3/http/thing;


# direct methods
.method constructor <init>(Lcn/bmob/v3/http/thing;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 420
    iput-object p1, p0, Lcn/bmob/v3/http/thing$6;->Z:Lcn/bmob/v3/http/thing;

    iput-object p2, p0, Lcn/bmob/v3/http/thing$6;->Code:Ljava/lang/String;

    iput-object p3, p0, Lcn/bmob/v3/http/thing$6;->V:Ljava/lang/String;

    iput-wide p4, p0, Lcn/bmob/v3/http/thing$6;->I:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 420
    check-cast p1, Lrx/Subscriber;

    .line 1423
    iget-object v1, p0, Lcn/bmob/v3/http/thing$6;->Z:Lcn/bmob/v3/http/thing;

    iget-object v2, p0, Lcn/bmob/v3/http/thing$6;->Code:Ljava/lang/String;

    iget-object v3, p0, Lcn/bmob/v3/http/thing$6;->V:Ljava/lang/String;

    iget-wide v4, p0, Lcn/bmob/v3/http/thing$6;->I:J

    new-instance v6, Lcn/bmob/v3/http/thing$6$1;

    invoke-direct {v6, p0, p1}, Lcn/bmob/v3/http/thing$6$1;-><init>(Lcn/bmob/v3/http/thing$6;Lrx/Subscriber;)V

    invoke-static/range {v1 .. v6}, Lcn/bmob/v3/http/thing;->Code(Lcn/bmob/v3/http/thing;Ljava/lang/String;Ljava/lang/String;JLcn/bmob/v3/listener/UpdateListener;)Lrx/Subscription;

    .line 420
    return-void
.end method
