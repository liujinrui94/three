.class public Lcn/bmob/v3/socketio/of;
.super Ljava/lang/Object;
.source "EventEmitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/bmob/v3/socketio/of$This;
    }
.end annotation


# instance fields
.field Code:Lcn/bmob/v3/socketio/darkness;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/bmob/v3/socketio/darkness",
            "<",
            "Lcn/bmob/v3/socketio/callback/EventCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcn/bmob/v3/socketio/darkness;

    invoke-direct {v0}, Lcn/bmob/v3/socketio/darkness;-><init>()V

    iput-object v0, p0, Lcn/bmob/v3/socketio/of;->Code:Lcn/bmob/v3/socketio/darkness;

    return-void
.end method


# virtual methods
.method public final Code(Ljava/lang/String;Lcn/bmob/v3/socketio/callback/EventCallback;)V
    .locals 2

    .prologue
    .line 46
    iget-object v1, p0, Lcn/bmob/v3/socketio/of;->Code:Lcn/bmob/v3/socketio/darkness;

    .line 1022
    invoke-virtual {v1, p1}, Lcn/bmob/v3/socketio/darkness;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1023
    if-nez v0, :cond_0

    .line 1024
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1025
    invoke-virtual {v1, p1, v0}, Lcn/bmob/v3/socketio/darkness;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    return-void
.end method
