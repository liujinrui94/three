.class Lcom/shishicai/app/activity/mine/MineRegister$1;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "MineRegister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/mine/MineRegister;->normalRegist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/mine/MineRegister;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/mine/MineRegister;Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/mine/MineRegister;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineRegister$1;->this$0:Lcom/shishicai/app/activity/mine/MineRegister;

    iput-object p2, p0, Lcom/shishicai/app/activity/mine/MineRegister$1;->val$username:Ljava/lang/String;

    iput-object p3, p0, Lcom/shishicai/app/activity/mine/MineRegister$1;->val$password:Ljava/lang/String;

    iput-object p4, p0, Lcom/shishicai/app/activity/mine/MineRegister$1;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 3
    .param p1, "arg0"    # I
    .param p2, "arg1"    # [Lorg/apache/http/Header;
    .param p3, "arg2"    # [B
    .param p4, "arg3"    # Ljava/lang/Throwable;

    .prologue
    .line 133
    const-string v0, "regist-result"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "regist-result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 11
    .param p1, "arg0"    # I
    .param p2, "arg1"    # [Lorg/apache/http/Header;
    .param p3, "arg2"    # [B

    .prologue
    const/4 v10, 0x1

    .line 138
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p3}, Ljava/lang/String;-><init>([B)V

    .line 139
    .local v5, "str":Ljava/lang/String;
    const-string v7, "regist-result"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "regist-result="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 141
    const-class v7, Lcom/shishicai/app/domain/LoginEntity;

    invoke-static {v5, v7}, Lcom/shishicai/app/utils/GsonUtils;->parseJSON(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shishicai/app/domain/LoginEntity;

    .line 142
    .local v2, "entity":Lcom/shishicai/app/domain/LoginEntity;
    invoke-virtual {v2}, Lcom/shishicai/app/domain/LoginEntity;->getSession_id()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/shishicai/app/Constant;->session_id:Ljava/lang/String;

    .line 143
    sput-boolean v10, Lcom/shishicai/app/Constant;->isLogin:Z

    .line 144
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMddHHmmss"

    invoke-direct {v3, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 145
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 146
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 147
    .local v6, "time":Ljava/lang/String;
    iget-object v7, p0, Lcom/shishicai/app/activity/mine/MineRegister$1;->this$0:Lcom/shishicai/app/activity/mine/MineRegister;

    const-string v8, "is_open"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/shishicai/app/activity/mine/MineRegister;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 148
    .local v4, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 149
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v7, "status"

    invoke-interface {v1, v7, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 150
    const-string v7, "username"

    iget-object v8, p0, Lcom/shishicai/app/activity/mine/MineRegister$1;->val$username:Ljava/lang/String;

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 151
    const-string v7, "password"

    iget-object v8, p0, Lcom/shishicai/app/activity/mine/MineRegister$1;->val$password:Ljava/lang/String;

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 152
    const-string v7, "time"

    invoke-interface {v1, v7, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 153
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 154
    iget-object v7, p0, Lcom/shishicai/app/activity/mine/MineRegister$1;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    .line 155
    iget-object v7, p0, Lcom/shishicai/app/activity/mine/MineRegister$1;->this$0:Lcom/shishicai/app/activity/mine/MineRegister;

    invoke-virtual {v7}, Lcom/shishicai/app/activity/mine/MineRegister;->finish()V

    .line 158
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "entity":Lcom/shishicai/app/domain/LoginEntity;
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v4    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v6    # "time":Ljava/lang/String;
    :cond_0
    return-void
.end method
