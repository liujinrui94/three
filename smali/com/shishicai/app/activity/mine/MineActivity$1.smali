.class Lcom/shishicai/app/activity/mine/MineActivity$1;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "MineActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/mine/MineActivity;->normalLogin(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/mine/MineActivity;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/mine/MineActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/mine/MineActivity;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineActivity$1;->this$0:Lcom/shishicai/app/activity/mine/MineActivity;

    iput-object p2, p0, Lcom/shishicai/app/activity/mine/MineActivity$1;->val$username:Ljava/lang/String;

    iput-object p3, p0, Lcom/shishicai/app/activity/mine/MineActivity$1;->val$password:Ljava/lang/String;

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
    .line 122
    const-string v0, "login-result"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "err="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 10
    .param p1, "arg0"    # I
    .param p2, "arg1"    # [Lorg/apache/http/Header;
    .param p3, "arg2"    # [B

    .prologue
    const/4 v9, 0x1

    .line 127
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p3}, Ljava/lang/String;-><init>([B)V

    .line 128
    .local v4, "str":Ljava/lang/String;
    const-string v6, "login-result"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "login-result="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 130
    const-class v6, Lcom/shishicai/app/domain/LoginEntity;

    invoke-static {v4, v6}, Lcom/shishicai/app/utils/GsonUtils;->parseJSON(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shishicai/app/domain/LoginEntity;

    .line 131
    .local v2, "entity":Lcom/shishicai/app/domain/LoginEntity;
    invoke-virtual {v2}, Lcom/shishicai/app/domain/LoginEntity;->getSession_id()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/shishicai/app/Constant;->session_id:Ljava/lang/String;

    .line 132
    sput-boolean v9, Lcom/shishicai/app/Constant;->isLogin:Z

    .line 133
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyyMMddHHmmss"

    invoke-direct {v3, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 134
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 135
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 136
    .local v5, "time":Ljava/lang/String;
    iget-object v6, p0, Lcom/shishicai/app/activity/mine/MineActivity$1;->this$0:Lcom/shishicai/app/activity/mine/MineActivity;

    invoke-static {v6}, Lcom/shishicai/app/activity/mine/MineActivity;->access$600(Lcom/shishicai/app/activity/mine/MineActivity;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 137
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "status"

    invoke-interface {v1, v6, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 138
    const-string v6, "rememberPwd"

    iget-object v7, p0, Lcom/shishicai/app/activity/mine/MineActivity$1;->this$0:Lcom/shishicai/app/activity/mine/MineActivity;

    invoke-static {v7}, Lcom/shishicai/app/activity/mine/MineActivity;->access$700(Lcom/shishicai/app/activity/mine/MineActivity;)Landroid/widget/CheckBox;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 139
    const-string v6, "username"

    iget-object v7, p0, Lcom/shishicai/app/activity/mine/MineActivity$1;->val$username:Ljava/lang/String;

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 140
    const-string v6, "password"

    iget-object v7, p0, Lcom/shishicai/app/activity/mine/MineActivity$1;->val$password:Ljava/lang/String;

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 141
    const-string v6, "time"

    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 142
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 143
    iget-object v6, p0, Lcom/shishicai/app/activity/mine/MineActivity$1;->this$0:Lcom/shishicai/app/activity/mine/MineActivity;

    invoke-static {v6}, Lcom/shishicai/app/activity/mine/MineActivity;->access$400(Lcom/shishicai/app/activity/mine/MineActivity;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 144
    iget-object v6, p0, Lcom/shishicai/app/activity/mine/MineActivity$1;->this$0:Lcom/shishicai/app/activity/mine/MineActivity;

    invoke-virtual {v6}, Lcom/shishicai/app/activity/mine/MineActivity;->finish()V

    .line 146
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "entity":Lcom/shishicai/app/domain/LoginEntity;
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v5    # "time":Ljava/lang/String;
    :cond_0
    return-void
.end method
