.class public Lcom/shishicai/app/activity/WelcomeActivity;
.super Lcom/shishicai/app/utils/Base2Activity;
.source "WelcomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask;
    }
.end annotation


# static fields
.field private static handler:Landroid/os/Handler;

.field private static task:Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/shishicai/app/utils/Base2Activity;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/shishicai/app/activity/WelcomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/WelcomeActivity;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/shishicai/app/activity/WelcomeActivity;->gainUrl()V

    return-void
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/shishicai/app/activity/WelcomeActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private gainUrl()V
    .locals 2

    .prologue
    .line 160
    new-instance v0, Lcn/bmob/v3/BmobQuery;

    invoke-direct {v0}, Lcn/bmob/v3/BmobQuery;-><init>()V

    .line 161
    .local v0, "query":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<Lcom/shishicai/app/domain/Entrance;>;"
    new-instance v1, Lcom/shishicai/app/activity/WelcomeActivity$2;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/WelcomeActivity$2;-><init>(Lcom/shishicai/app/activity/WelcomeActivity;)V

    invoke-virtual {v0, v1}, Lcn/bmob/v3/BmobQuery;->findObjects(Lcn/bmob/v3/listener/FindListener;)Lrx/Subscription;

    .line 186
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/shishicai/app/utils/Base2Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/WelcomeActivity;->setContentView(I)V

    .line 41
    const-string v0, "WelcomeActivity"

    iput-object v0, p0, Lcom/shishicai/app/activity/WelcomeActivity;->TAG:Ljava/lang/String;

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/shishicai/app/activity/WelcomeActivity;->handler:Landroid/os/Handler;

    .line 43
    new-instance v0, Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask;-><init>(Lcom/shishicai/app/activity/WelcomeActivity;Lcom/shishicai/app/activity/WelcomeActivity$1;)V

    sput-object v0, Lcom/shishicai/app/activity/WelcomeActivity;->task:Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask;

    .line 44
    invoke-static {}, Lorg/litepal/tablemanager/Connector;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 45
    sget-object v0, Lcom/shishicai/app/activity/WelcomeActivity;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/shishicai/app/activity/WelcomeActivity;->task:Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 46
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 190
    invoke-super {p0}, Lcom/shishicai/app/utils/Base2Activity;->onDestroy()V

    .line 191
    sget-object v0, Lcom/shishicai/app/activity/WelcomeActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 192
    invoke-static {p0}, Lcom/shishicai/app/service/HttpUser;->cancel(Landroid/content/Context;)V

    .line 193
    return-void
.end method

.method protected secondOpenSwitch()V
    .locals 3

    .prologue
    .line 127
    new-instance v0, Lcn/bmob/v3/BmobQuery;

    invoke-direct {v0}, Lcn/bmob/v3/BmobQuery;-><init>()V

    .line 128
    .local v0, "query":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<Lcom/shishicai/app/domain/SafeSwitch;>;"
    const-string v1, "bundleID"

    sget-object v2, Lcom/shishicai/app/Constant;->ApplicationID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/bmob/v3/BmobQuery;->addWhereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcn/bmob/v3/BmobQuery;

    .line 129
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/bmob/v3/BmobQuery;->setLimit(I)V

    .line 130
    new-instance v1, Lcom/shishicai/app/activity/WelcomeActivity$1;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/WelcomeActivity$1;-><init>(Lcom/shishicai/app/activity/WelcomeActivity;)V

    invoke-virtual {v0, v1}, Lcn/bmob/v3/BmobQuery;->findObjects(Lcn/bmob/v3/listener/FindListener;)Lrx/Subscription;

    .line 157
    return-void
.end method
