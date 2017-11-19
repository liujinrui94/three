.class public Lcn/bmob/push/lib/util/BmobPreferenceUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static KEY_SERVERURL:Ljava/lang/String;

.field public static NAME_SPNAME:Ljava/lang/String;


# instance fields
.field private aE:Landroid/content/SharedPreferences;

.field private aF:Landroid/content/SharedPreferences$Editor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "bmob_push"

    sput-object v0, Lcn/bmob/push/lib/util/BmobPreferenceUtil;->NAME_SPNAME:Ljava/lang/String;

    .line 10
    const-string v0, "server_url"

    sput-object v0, Lcn/bmob/push/lib/util/BmobPreferenceUtil;->KEY_SERVERURL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 22
    sget-object v1, Lcn/bmob/push/lib/util/BmobPreferenceUtil;->NAME_SPNAME:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/bmob/push/lib/util/BmobPreferenceUtil;-><init>(Landroid/content/SharedPreferences;)V

    .line 23
    return-void
.end method

.method private constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lcn/bmob/push/lib/util/BmobPreferenceUtil;->aE:Landroid/content/SharedPreferences;

    .line 13
    iput-object v0, p0, Lcn/bmob/push/lib/util/BmobPreferenceUtil;->aF:Landroid/content/SharedPreferences$Editor;

    .line 32
    iput-object p1, p0, Lcn/bmob/push/lib/util/BmobPreferenceUtil;->aE:Landroid/content/SharedPreferences;

    .line 33
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/push/lib/util/BmobPreferenceUtil;->aF:Landroid/content/SharedPreferences$Editor;

    .line 34
    return-void
.end method


# virtual methods
.method public final B(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 52
    sget-object v0, Lcn/bmob/push/lib/util/BmobPreferenceUtil;->KEY_SERVERURL:Ljava/lang/String;

    .line 1039
    iget-object v1, p0, Lcn/bmob/push/lib/util/BmobPreferenceUtil;->aF:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1040
    iget-object v0, p0, Lcn/bmob/push/lib/util/BmobPreferenceUtil;->aF:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 53
    return-void
.end method

.method public final l()Ljava/lang/String;
    .locals 3

    .prologue
    .line 61
    sget-object v0, Lcn/bmob/push/lib/util/BmobPreferenceUtil;->KEY_SERVERURL:Ljava/lang/String;

    const-string v1, ""

    .line 1045
    iget-object v2, p0, Lcn/bmob/push/lib/util/BmobPreferenceUtil;->aE:Landroid/content/SharedPreferences;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    return-object v0
.end method

.method public final m()V
    .locals 2

    .prologue
    .line 68
    sget-object v0, Lcn/bmob/push/lib/util/BmobPreferenceUtil;->KEY_SERVERURL:Ljava/lang/String;

    .line 1073
    iget-object v1, p0, Lcn/bmob/push/lib/util/BmobPreferenceUtil;->aF:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1074
    iget-object v0, p0, Lcn/bmob/push/lib/util/BmobPreferenceUtil;->aF:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 69
    return-void
.end method
