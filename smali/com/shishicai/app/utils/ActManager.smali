.class public Lcom/shishicai/app/utils/ActManager;
.super Ljava/lang/Object;
.source "ActManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActManager"

.field private static activityStack:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static instance:Lcom/shishicai/app/utils/ActManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static getAppManager()Lcom/shishicai/app/utils/ActManager;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/shishicai/app/utils/ActManager;->instance:Lcom/shishicai/app/utils/ActManager;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/shishicai/app/utils/ActManager;

    invoke-direct {v0}, Lcom/shishicai/app/utils/ActManager;-><init>()V

    sput-object v0, Lcom/shishicai/app/utils/ActManager;->instance:Lcom/shishicai/app/utils/ActManager;

    .line 32
    :cond_0
    sget-object v0, Lcom/shishicai/app/utils/ActManager;->instance:Lcom/shishicai/app/utils/ActManager;

    return-object v0
.end method

.method public static isAppAlive(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 152
    const-string v3, "activity"

    .line 153
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 155
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 156
    .local v2, "processInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 157
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    const-string v3, "NotificationLaunch"

    const-string v6, "the %s is running, isAppAlive return true"

    new-array v7, v4, [Ljava/lang/Object;

    aput-object p1, v7, v5

    .line 159
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 158
    invoke-static {v3, v5}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 165
    :goto_1
    return v3

    .line 156
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    :cond_1
    const-string v3, "NotificationLaunch"

    const-string v6, "the %s is not running, isAppAlive return false"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    .line 164
    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 163
    invoke-static {v3, v4}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v5

    .line 165
    goto :goto_1
.end method


# virtual methods
.method public AppExit(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    :try_start_0
    invoke-virtual {p0}, Lcom/shishicai/app/utils/ActManager;->finishAllActivity()V

    .line 135
    const-string v2, "activity"

    .line 136
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 137
    .local v0, "activityMgr":Landroid/app/ActivityManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local v0    # "activityMgr":Landroid/app/ActivityManager;
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v1

    .line 140
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ActManager"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public addActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 39
    sget-object v0, Lcom/shishicai/app/utils/ActManager;->activityStack:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/shishicai/app/utils/ActManager;->activityStack:Ljava/util/LinkedList;

    .line 42
    :cond_0
    sget-object v0, Lcom/shishicai/app/utils/ActManager;->activityStack:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method

.method public currentActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 49
    const/4 v0, 0x0

    .line 51
    .local v0, "activity":Landroid/app/Activity;
    sget-object v1, Lcom/shishicai/app/utils/ActManager;->activityStack:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 52
    sget-object v1, Lcom/shishicai/app/utils/ActManager;->activityStack:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "activity":Landroid/app/Activity;
    check-cast v0, Landroid/app/Activity;

    .line 55
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_0
    return-object v0
.end method

.method public finishActivitiesAndKeepLastOne()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 117
    const/4 v0, 0x0

    .local v0, "i":I
    sget-object v2, Lcom/shishicai/app/utils/ActManager;->activityStack:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 118
    sget-object v2, Lcom/shishicai/app/utils/ActManager;->activityStack:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 119
    sget-object v2, Lcom/shishicai/app/utils/ActManager;->activityStack:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_0
    return-void
.end method

.method public finishActivity()V
    .locals 2

    .prologue
    .line 62
    sget-object v1, Lcom/shishicai/app/utils/ActManager;->activityStack:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 63
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0, v0}, Lcom/shishicai/app/utils/ActManager;->finishActivity(Landroid/app/Activity;)V

    .line 65
    :cond_0
    return-void
.end method

.method public finishActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 71
    if-eqz p1, :cond_0

    .line 72
    sget-object v0, Lcom/shishicai/app/utils/ActManager;->activityStack:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 73
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 74
    const/4 p1, 0x0

    .line 76
    :cond_0
    return-void
.end method

.method public finishActivity(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Lcom/shishicai/app/utils/ActManager;->activityStack:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 95
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    invoke-virtual {p0, v0}, Lcom/shishicai/app/utils/ActManager;->finishActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 99
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_1
    return-void
.end method

.method public finishAllActivity()V
    .locals 3

    .prologue
    .line 105
    const/4 v0, 0x0

    .local v0, "i":I
    sget-object v2, Lcom/shishicai/app/utils/ActManager;->activityStack:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 106
    sget-object v2, Lcom/shishicai/app/utils/ActManager;->activityStack:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 107
    sget-object v2, Lcom/shishicai/app/utils/ActManager;->activityStack:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 105
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_1
    sget-object v2, Lcom/shishicai/app/utils/ActManager;->activityStack:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 111
    return-void
.end method

.method public getTopActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 82
    sget-object v1, Lcom/shishicai/app/utils/ActManager;->activityStack:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 83
    .local v0, "activity":Landroid/app/Activity;
    return-object v0
.end method

.method public printActStack()V
    .locals 3

    .prologue
    .line 124
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/shishicai/app/utils/ActManager;->activityStack:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 125
    const-string v2, "ActManager"

    sget-object v1, Lcom/shishicai/app/utils/ActManager;->activityStack:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_0
    return-void
.end method
