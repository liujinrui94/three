.class public final Lcn/bmob/v3/b/The;
.super Ljava/lang/Object;
.source "SPUtil.java"


# instance fields
.field private Code:Landroid/content/SharedPreferences;

.field private V:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 28
    invoke-static {}, Lcn/bmob/v3/Bmob;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bmob_sp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/bmob/v3/b/The;-><init>(Landroid/content/SharedPreferences;)V

    .line 30
    return-void
.end method

.method private constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lcn/bmob/v3/b/The;->Code:Landroid/content/SharedPreferences;

    .line 13
    iput-object v0, p0, Lcn/bmob/v3/b/The;->V:Landroid/content/SharedPreferences$Editor;

    .line 45
    iput-object p1, p0, Lcn/bmob/v3/b/The;->Code:Landroid/content/SharedPreferences;

    .line 46
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/b/The;->V:Landroid/content/SharedPreferences$Editor;

    .line 47
    return-void
.end method


# virtual methods
.method public final Code(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcn/bmob/v3/b/The;->V:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 118
    iget-object v0, p0, Lcn/bmob/v3/b/The;->V:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 119
    return-void
.end method

.method public final Code(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcn/bmob/v3/b/The;->V:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 65
    iget-object v0, p0, Lcn/bmob/v3/b/The;->V:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 66
    return-void
.end method

.method public final Code(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcn/bmob/v3/b/The;->V:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 82
    iget-object v0, p0, Lcn/bmob/v3/b/The;->V:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 83
    return-void
.end method

.method public final V(Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcn/bmob/v3/b/The;->Code:Landroid/content/SharedPreferences;

    const/4 v1, -0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final V(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcn/bmob/v3/b/The;->Code:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
