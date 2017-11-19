.class public Lcn/bmob/v3/BmobInstallation;
.super Lcn/bmob/v3/BmobObject;
.source "BmobInstallation.java"


# static fields
.field private static final serialVersionUID:J = 0x528fb8ae6678afaL

.field private static subOrUnsub:Z


# instance fields
.field private channels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private deviceToken:Ljava/lang/String;

.field private deviceType:Ljava/lang/String;

.field private installationId:Ljava/lang/String;

.field private timeZone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    sput-boolean v0, Lcn/bmob/v3/BmobInstallation;->subOrUnsub:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcn/bmob/v3/BmobObject;-><init>()V

    .line 26
    const-string v0, "android"

    iput-object v0, p0, Lcn/bmob/v3/BmobInstallation;->deviceType:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/bmob/v3/BmobInstallation;->channels:Ljava/util/List;

    .line 35
    iget-object v0, p0, Lcn/bmob/v3/BmobInstallation;->channels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 36
    iget-object v0, p0, Lcn/bmob/v3/BmobInstallation;->channels:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcn/bmob/v3/BmobInstallation;->setChannels(Ljava/util/List;)V

    .line 37
    invoke-static {}, Lcn/bmob/v3/Bmob;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/bmob/v3/http/I;->V(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/bmob/v3/BmobInstallation;->setInstallationId(Ljava/lang/String;)V

    .line 38
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/bmob/v3/BmobInstallation;->setTimeZone(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method static synthetic Code(Lcn/bmob/v3/BmobInstallation;)Lrx/Observable;
    .locals 3

    .prologue
    .line 23
    .line 1251
    invoke-static {}, Lcn/bmob/v3/BmobInstallation;->getCurrentInstallation()Lcn/bmob/v3/BmobInstallation;

    move-result-object v0

    .line 1252
    sget-boolean v1, Lcn/bmob/v3/BmobInstallation;->subOrUnsub:Z

    if-eqz v1, :cond_0

    .line 1253
    const-string v1, "channels"

    iget-object v2, p0, Lcn/bmob/v3/BmobInstallation;->channels:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcn/bmob/v3/BmobInstallation;->addAllUnique(Ljava/lang/String;Ljava/util/Collection;)V

    .line 1255
    :cond_0
    invoke-virtual {v0}, Lcn/bmob/v3/BmobInstallation;->saveObservable()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcn/bmob/v3/BmobInstallation$4;

    invoke-direct {v1, p0}, Lcn/bmob/v3/BmobInstallation$4;-><init>(Lcn/bmob/v3/BmobInstallation;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 23
    return-object v0
.end method

.method static synthetic Code(Lcn/bmob/v3/BmobInstallation;Lcn/bmob/v3/BmobInstallation;Ljava/util/List;)Lrx/Observable;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    .line 2235
    sget-boolean v0, Lcn/bmob/v3/BmobInstallation;->subOrUnsub:Z

    if-eqz v0, :cond_0

    .line 2236
    const-string v0, "channels"

    invoke-virtual {p1, v0, p2}, Lcn/bmob/v3/BmobInstallation;->addAllUnique(Ljava/lang/String;Ljava/util/Collection;)V

    .line 2240
    :goto_0
    invoke-virtual {p1, v1}, Lcn/bmob/v3/BmobInstallation;->setDeviceType(Ljava/lang/String;)V

    .line 2241
    invoke-virtual {p1, v1}, Lcn/bmob/v3/BmobInstallation;->setTimeZone(Ljava/lang/String;)V

    .line 2242
    invoke-virtual {p1, v1}, Lcn/bmob/v3/BmobInstallation;->setInstallationId(Ljava/lang/String;)V

    .line 2243
    invoke-virtual {p1}, Lcn/bmob/v3/BmobInstallation;->updateObservable()Lrx/Observable;

    move-result-object v0

    .line 23
    return-object v0

    .line 2238
    :cond_0
    const-string v0, "channels"

    invoke-virtual {p1, v0, p2}, Lcn/bmob/v3/BmobInstallation;->removeAll(Ljava/lang/String;Ljava/util/Collection;)V

    goto :goto_0
.end method

.method private Code(Ljava/util/List;)Lrx/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    new-instance v0, Lcn/bmob/v3/BmobQuery;

    invoke-direct {v0}, Lcn/bmob/v3/BmobQuery;-><init>()V

    .line 203
    const-string v1, "installationId"

    invoke-virtual {p0}, Lcn/bmob/v3/BmobInstallation;->getInstallationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/bmob/v3/BmobQuery;->addWhereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcn/bmob/v3/BmobQuery;

    .line 204
    const-class v1, Lcn/bmob/v3/BmobInstallation;

    invoke-virtual {v0, v1}, Lcn/bmob/v3/BmobQuery;->findObjectsObservable(Ljava/lang/Class;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcn/bmob/v3/BmobInstallation$3;

    invoke-direct {v1, p0, p1}, Lcn/bmob/v3/BmobInstallation$3;-><init>(Lcn/bmob/v3/BmobInstallation;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcn/bmob/v3/BmobInstallation$2;

    invoke-direct {v1, p0}, Lcn/bmob/v3/BmobInstallation$2;-><init>(Lcn/bmob/v3/BmobInstallation;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->onErrorResumeNext(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentInstallation()Lcn/bmob/v3/BmobInstallation;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcn/bmob/v3/BmobInstallation;

    invoke-direct {v0}, Lcn/bmob/v3/BmobInstallation;-><init>()V

    return-object v0
.end method

.method public static getInstallationId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    invoke-static {p0}, Lcn/bmob/v3/http/I;->V(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getQuery()Lcn/bmob/v3/BmobQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Lcn/bmob/v3/BmobQuery;

    invoke-direct {v0}, Lcn/bmob/v3/BmobQuery;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getChannels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcn/bmob/v3/BmobInstallation;->channels:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcn/bmob/v3/BmobInstallation;->deviceToken:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcn/bmob/v3/BmobInstallation;->deviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getInstallationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcn/bmob/v3/BmobInstallation;->installationId:Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "_Installation"

    return-object v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcn/bmob/v3/BmobInstallation;->timeZone:Ljava/lang/String;

    return-object v0
.end method

.method public save()Lrx/Subscription;
    .locals 2

    .prologue
    .line 172
    invoke-virtual {p0}, Lcn/bmob/v3/BmobInstallation;->getChannels()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/bmob/v3/BmobInstallation;->Code(Ljava/util/List;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcn/bmob/v3/BmobInstallation$1;

    invoke-direct {v1, p0}, Lcn/bmob/v3/BmobInstallation$1;-><init>(Lcn/bmob/v3/BmobInstallation;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public setChannels(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "channels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcn/bmob/v3/BmobInstallation;->channels:Ljava/util/List;

    .line 107
    return-void
.end method

.method public setDeviceToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceToken"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcn/bmob/v3/BmobInstallation;->deviceToken:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceType"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcn/bmob/v3/BmobInstallation;->deviceType:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setInstallationId(Ljava/lang/String;)V
    .locals 0
    .param p1, "installationId"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcn/bmob/v3/BmobInstallation;->installationId:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "timeZone"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Lcn/bmob/v3/BmobInstallation;->timeZone:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public subscribe(Ljava/lang/String;)V
    .locals 1
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 146
    const/4 v0, 0x1

    sput-boolean v0, Lcn/bmob/v3/BmobInstallation;->subOrUnsub:Z

    .line 147
    iget-object v0, p0, Lcn/bmob/v3/BmobInstallation;->channels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    return-void
.end method

.method public unsubscribe(Ljava/lang/String;)V
    .locals 1
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 155
    const/4 v0, 0x0

    sput-boolean v0, Lcn/bmob/v3/BmobInstallation;->subOrUnsub:Z

    .line 156
    iget-object v0, p0, Lcn/bmob/v3/BmobInstallation;->channels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    return-void
.end method

.method public updateObservable()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    invoke-virtual {p0}, Lcn/bmob/v3/BmobInstallation;->getChannels()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/bmob/v3/BmobInstallation;->Code(Ljava/util/List;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
