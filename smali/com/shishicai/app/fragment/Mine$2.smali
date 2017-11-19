.class Lcom/shishicai/app/fragment/Mine$2;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "Mine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/fragment/Mine;->normalLogin(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/fragment/Mine;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/shishicai/app/fragment/Mine;Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/fragment/Mine;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/shishicai/app/fragment/Mine$2;->this$0:Lcom/shishicai/app/fragment/Mine;

    iput-object p2, p0, Lcom/shishicai/app/fragment/Mine$2;->val$username:Ljava/lang/String;

    iput-object p3, p0, Lcom/shishicai/app/fragment/Mine$2;->val$password:Ljava/lang/String;

    iput-object p4, p0, Lcom/shishicai/app/fragment/Mine$2;->val$dialog:Landroid/app/ProgressDialog;

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
    .line 262
    const-string v0, "login-result"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "login-result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 10
    .param p1, "arg0"    # I
    .param p2, "arg1"    # [Lorg/apache/http/Header;
    .param p3, "arg2"    # [B

    .prologue
    const/4 v9, 0x1

    .line 267
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p3}, Ljava/lang/String;-><init>([B)V

    .line 268
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

    .line 269
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 270
    const-class v6, Lcom/shishicai/app/domain/LoginEntity;

    invoke-static {v4, v6}, Lcom/shishicai/app/utils/GsonUtils;->parseJSON(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shishicai/app/domain/LoginEntity;

    .line 271
    .local v1, "entity":Lcom/shishicai/app/domain/LoginEntity;
    invoke-virtual {v1}, Lcom/shishicai/app/domain/LoginEntity;->getSession_id()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/shishicai/app/Constant;->session_id:Ljava/lang/String;

    .line 272
    sput-boolean v9, Lcom/shishicai/app/Constant;->isLogin:Z

    .line 273
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyyMMddHHmmss"

    invoke-direct {v3, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 274
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 275
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 276
    .local v5, "time":Ljava/lang/String;
    iget-object v6, p0, Lcom/shishicai/app/fragment/Mine$2;->this$0:Lcom/shishicai/app/fragment/Mine;

    iget-object v7, p0, Lcom/shishicai/app/fragment/Mine$2;->this$0:Lcom/shishicai/app/fragment/Mine;

    invoke-static {v7}, Lcom/shishicai/app/fragment/Mine;->access$100(Lcom/shishicai/app/fragment/Mine;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/shishicai/app/fragment/Mine;->access$602(Lcom/shishicai/app/fragment/Mine;Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;

    .line 277
    iget-object v6, p0, Lcom/shishicai/app/fragment/Mine$2;->this$0:Lcom/shishicai/app/fragment/Mine;

    invoke-static {v6}, Lcom/shishicai/app/fragment/Mine;->access$600(Lcom/shishicai/app/fragment/Mine;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "status"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 278
    iget-object v6, p0, Lcom/shishicai/app/fragment/Mine$2;->this$0:Lcom/shishicai/app/fragment/Mine;

    invoke-static {v6}, Lcom/shishicai/app/fragment/Mine;->access$600(Lcom/shishicai/app/fragment/Mine;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "rememberPwd"

    iget-object v8, p0, Lcom/shishicai/app/fragment/Mine$2;->this$0:Lcom/shishicai/app/fragment/Mine;

    invoke-static {v8}, Lcom/shishicai/app/fragment/Mine;->access$700(Lcom/shishicai/app/fragment/Mine;)Landroid/widget/CheckBox;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 279
    iget-object v6, p0, Lcom/shishicai/app/fragment/Mine$2;->this$0:Lcom/shishicai/app/fragment/Mine;

    invoke-static {v6}, Lcom/shishicai/app/fragment/Mine;->access$600(Lcom/shishicai/app/fragment/Mine;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "username"

    iget-object v8, p0, Lcom/shishicai/app/fragment/Mine$2;->val$username:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 280
    iget-object v6, p0, Lcom/shishicai/app/fragment/Mine$2;->this$0:Lcom/shishicai/app/fragment/Mine;

    invoke-static {v6}, Lcom/shishicai/app/fragment/Mine;->access$600(Lcom/shishicai/app/fragment/Mine;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "password"

    iget-object v8, p0, Lcom/shishicai/app/fragment/Mine$2;->val$password:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 281
    iget-object v6, p0, Lcom/shishicai/app/fragment/Mine$2;->this$0:Lcom/shishicai/app/fragment/Mine;

    invoke-static {v6}, Lcom/shishicai/app/fragment/Mine;->access$600(Lcom/shishicai/app/fragment/Mine;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "time"

    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 282
    iget-object v6, p0, Lcom/shishicai/app/fragment/Mine$2;->this$0:Lcom/shishicai/app/fragment/Mine;

    invoke-static {v6}, Lcom/shishicai/app/fragment/Mine;->access$600(Lcom/shishicai/app/fragment/Mine;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 283
    iget-object v6, p0, Lcom/shishicai/app/fragment/Mine$2;->this$0:Lcom/shishicai/app/fragment/Mine;

    invoke-static {v6}, Lcom/shishicai/app/fragment/Mine;->access$800(Lcom/shishicai/app/fragment/Mine;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 284
    .local v2, "msg":Landroid/os/Message;
    const/16 v6, 0x69

    iput v6, v2, Landroid/os/Message;->what:I

    .line 285
    iget-object v6, p0, Lcom/shishicai/app/fragment/Mine$2;->this$0:Lcom/shishicai/app/fragment/Mine;

    invoke-static {v6}, Lcom/shishicai/app/fragment/Mine;->access$800(Lcom/shishicai/app/fragment/Mine;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 286
    iget-object v6, p0, Lcom/shishicai/app/fragment/Mine$2;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 289
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "entity":Lcom/shishicai/app/domain/LoginEntity;
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v5    # "time":Ljava/lang/String;
    :cond_0
    return-void
.end method
