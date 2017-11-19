.class public Lcom/shishicai/app/utils/UpdateManager;
.super Ljava/lang/Object;
.source "UpdateManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# static fields
.field private static final CREATE_DIALOG:I = 0x4

.field private static final SHOWTOASH:I = 0x5


# instance fields
.field private final TAG:Ljava/lang/String;

.field private appMV:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private mActivity:Landroid/app/Activity;

.field public mUpdateAPKItem:Lcom/shishicai/app/utils/UpdateAPKItem;

.field mUpdateDialog:Lcom/shishicai/app/ui/NiftyDialog;

.field operationListener:Lcom/shishicai/app/ui/IDialogClick;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "UpdateManager"

    iput-object v0, p0, Lcom/shishicai/app/utils/UpdateManager;->TAG:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/shishicai/app/utils/UpdateManager;->appMV:Ljava/lang/String;

    .line 44
    new-instance v0, Lcom/shishicai/app/utils/UpdateManager$1;

    invoke-direct {v0, p0}, Lcom/shishicai/app/utils/UpdateManager$1;-><init>(Lcom/shishicai/app/utils/UpdateManager;)V

    iput-object v0, p0, Lcom/shishicai/app/utils/UpdateManager;->handler:Landroid/os/Handler;

    .line 64
    iput-object p1, p0, Lcom/shishicai/app/utils/UpdateManager;->mActivity:Landroid/app/Activity;

    .line 65
    invoke-direct {p0}, Lcom/shishicai/app/utils/UpdateManager;->getAppMV()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shishicai/app/utils/UpdateManager;->appMV:Ljava/lang/String;

    .line 66
    const-string v0, "UpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appMv="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shishicai/app/utils/UpdateManager;->appMV:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/shishicai/app/utils/UpdateManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/utils/UpdateManager;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/shishicai/app/utils/UpdateManager;->createUpdateAlertDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/shishicai/app/utils/UpdateManager;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/utils/UpdateManager;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/shishicai/app/utils/UpdateManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/shishicai/app/utils/UpdateManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/utils/UpdateManager;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/shishicai/app/utils/UpdateManager;->appMV:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/shishicai/app/utils/UpdateManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/utils/UpdateManager;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/shishicai/app/utils/UpdateManager;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private createUpdateAlertDialog()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/shishicai/app/utils/UpdateManager;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/shishicai/app/utils/UpdateManager;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/shishicai/app/utils/UpdateManager;->getUpdate(Landroid/app/Activity;)V

    .line 135
    :cond_0
    return-void
.end method

.method private getAppMV()Ljava/lang/String;
    .locals 6

    .prologue
    .line 176
    const-string v1, ""

    .line 178
    .local v1, "appMV":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/shishicai/app/utils/UpdateManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/shishicai/app/utils/UpdateManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 179
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "UMENG_CHANNEL"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 183
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object v1

    .line 180
    :catch_0
    move-exception v2

    .line 181
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private getUpdate(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 142
    iget-object v1, p0, Lcom/shishicai/app/utils/UpdateManager;->mUpdateDialog:Lcom/shishicai/app/ui/NiftyDialog;

    if-nez v1, :cond_0

    .line 143
    new-instance v1, Lcom/shishicai/app/ui/NiftyDialog;

    invoke-direct {v1, p1}, Lcom/shishicai/app/ui/NiftyDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/shishicai/app/utils/UpdateManager;->mUpdateDialog:Lcom/shishicai/app/ui/NiftyDialog;

    .line 144
    iget-object v1, p0, Lcom/shishicai/app/utils/UpdateManager;->mUpdateDialog:Lcom/shishicai/app/ui/NiftyDialog;

    const-string v2, "\u5e94\u7528\u7a0b\u5e8f\u6709\u65b0\u7248\u672c\u66f4\u65b0"

    invoke-virtual {v1, v2}, Lcom/shishicai/app/ui/NiftyDialog;->withTitle(Ljava/lang/CharSequence;)V

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "\u6700\u65b0\u7248\u672c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shishicai/app/utils/UpdateManager;->mUpdateAPKItem:Lcom/shishicai/app/utils/UpdateAPKItem;

    invoke-virtual {v2}, Lcom/shishicai/app/utils/UpdateAPKItem;->getVersion_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    .line 147
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shishicai/app/utils/UpdateManager;->mUpdateAPKItem:Lcom/shishicai/app/utils/UpdateAPKItem;

    invoke-virtual {v2}, Lcom/shishicai/app/utils/UpdateAPKItem;->getUpdate_log()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    iget-object v1, p0, Lcom/shishicai/app/utils/UpdateManager;->mUpdateDialog:Lcom/shishicai/app/ui/NiftyDialog;

    invoke-virtual {v1, v0}, Lcom/shishicai/app/ui/NiftyDialog;->withMessage(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v1, p0, Lcom/shishicai/app/utils/UpdateManager;->mUpdateDialog:Lcom/shishicai/app/ui/NiftyDialog;

    const-string v2, "\u7acb\u5373\u66f4\u65b0"

    invoke-virtual {v1, v2}, Lcom/shishicai/app/ui/NiftyDialog;->withButtonLeftText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v1, p0, Lcom/shishicai/app/utils/UpdateManager;->mUpdateDialog:Lcom/shishicai/app/ui/NiftyDialog;

    const-string v2, "\u4ee5\u540e\u518d\u8bf4"

    invoke-virtual {v1, v2}, Lcom/shishicai/app/ui/NiftyDialog;->withButtonRightText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v1, p0, Lcom/shishicai/app/utils/UpdateManager;->mUpdateDialog:Lcom/shishicai/app/ui/NiftyDialog;

    new-instance v2, Lcom/shishicai/app/utils/UpdateManager$3;

    invoke-direct {v2, p0}, Lcom/shishicai/app/utils/UpdateManager$3;-><init>(Lcom/shishicai/app/utils/UpdateManager;)V

    invoke-virtual {v1, v2}, Lcom/shishicai/app/ui/NiftyDialog;->setButtonLeftClick(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v1, p0, Lcom/shishicai/app/utils/UpdateManager;->mUpdateDialog:Lcom/shishicai/app/ui/NiftyDialog;

    new-instance v2, Lcom/shishicai/app/utils/UpdateManager$4;

    invoke-direct {v2, p0}, Lcom/shishicai/app/utils/UpdateManager$4;-><init>(Lcom/shishicai/app/utils/UpdateManager;)V

    invoke-virtual {v1, v2}, Lcom/shishicai/app/ui/NiftyDialog;->setButtonRightClick(Landroid/view/View$OnClickListener;)V

    .line 168
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    iget-object v1, p0, Lcom/shishicai/app/utils/UpdateManager;->mUpdateDialog:Lcom/shishicai/app/ui/NiftyDialog;

    invoke-virtual {v1}, Lcom/shishicai/app/ui/NiftyDialog;->show()V

    .line 169
    return-void
.end method


# virtual methods
.method public checkUpdate(Z)V
    .locals 3
    .param p1, "isAdpic"    # Z

    .prologue
    .line 78
    const-string v1, "UpdateManager"

    const-string v2, "check"

    invoke-static {v1, v2}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    new-instance v0, Lcn/bmob/v3/BmobQuery;

    invoke-direct {v0}, Lcn/bmob/v3/BmobQuery;-><init>()V

    .line 80
    .local v0, "query":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<Lcom/shishicai/app/domain/DownloadDialog;>;"
    new-instance v1, Lcom/shishicai/app/utils/UpdateManager$2;

    invoke-direct {v1, p0, p1}, Lcom/shishicai/app/utils/UpdateManager$2;-><init>(Lcom/shishicai/app/utils/UpdateManager;Z)V

    invoke-virtual {v0, v1}, Lcn/bmob/v3/BmobQuery;->findObjects(Lcn/bmob/v3/listener/FindListener;)Lrx/Subscription;

    .line 123
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/shishicai/app/utils/UpdateManager;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public setOperationListener(Lcom/shishicai/app/ui/IDialogClick;)V
    .locals 0
    .param p1, "operationListener"    # Lcom/shishicai/app/ui/IDialogClick;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/shishicai/app/utils/UpdateManager;->operationListener:Lcom/shishicai/app/ui/IDialogClick;

    .line 71
    return-void
.end method
