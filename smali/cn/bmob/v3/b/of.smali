.class public Lcn/bmob/v3/b/of;
.super Ljava/lang/Object;
.source "BmobResource.java"


# static fields
.field private static Code:Lcn/bmob/v3/b/of;


# instance fields
.field private final I:Ljava/lang/String;

.field private V:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcn/bmob/v3/b/of;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcn/bmob/v3/b/of;->Code:Lcn/bmob/v3/b/of;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/b/of;->V:Landroid/content/res/Resources;

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/b/of;->I:Ljava/lang/String;

    .line 17
    return-void
.end method

.method private Code(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcn/bmob/v3/b/of;->V:Landroid/content/res/Resources;

    iget-object v1, p0, Lcn/bmob/v3/b/of;->I:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 57
    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getRes("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/bmob/v3/b/This;->V(Ljava/lang/String;)V

    .line 59
    const-string v0, "Error getting resource. Make sure you have copied all resources (res/) from SDK to your project. "

    invoke-static {v0}, Lcn/bmob/v3/b/This;->Code(Ljava/lang/String;)V

    .line 60
    const/4 v0, 0x0

    .line 62
    :cond_0
    return v0
.end method

.method public static declared-synchronized Code(Landroid/content/Context;)Lcn/bmob/v3/b/of;
    .locals 3

    .prologue
    .line 20
    const-class v1, Lcn/bmob/v3/b/of;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/bmob/v3/b/of;->Code:Lcn/bmob/v3/b/of;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcn/bmob/v3/b/of;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcn/bmob/v3/b/of;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/bmob/v3/b/of;->Code:Lcn/bmob/v3/b/of;

    .line 23
    :cond_0
    sget-object v0, Lcn/bmob/v3/b/of;->Code:Lcn/bmob/v3/b/of;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final Code(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 31
    const-string v0, "id"

    invoke-direct {p0, p1, v0}, Lcn/bmob/v3/b/of;->Code(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final I(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 47
    const-string v0, "string"

    invoke-direct {p0, p1, v0}, Lcn/bmob/v3/b/of;->Code(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final V(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 39
    const-string v0, "layout"

    invoke-direct {p0, p1, v0}, Lcn/bmob/v3/b/of;->Code(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
