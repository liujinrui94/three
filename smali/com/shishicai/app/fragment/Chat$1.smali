.class Lcom/shishicai/app/fragment/Chat$1;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "Chat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/fragment/Chat;->gainData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/fragment/Chat;


# direct methods
.method constructor <init>(Lcom/shishicai/app/fragment/Chat;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/fragment/Chat;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/shishicai/app/fragment/Chat$1;->this$0:Lcom/shishicai/app/fragment/Chat;

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
    .line 75
    iget-object v0, p0, Lcom/shishicai/app/fragment/Chat$1;->this$0:Lcom/shishicai/app/fragment/Chat;

    invoke-static {v0}, Lcom/shishicai/app/fragment/Chat;->access$000(Lcom/shishicai/app/fragment/Chat;)Ljava/lang/String;

    move-result-object v0

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

    .line 76
    iget-object v0, p0, Lcom/shishicai/app/fragment/Chat$1;->this$0:Lcom/shishicai/app/fragment/Chat;

    invoke-static {v0}, Lcom/shishicai/app/fragment/Chat;->access$100(Lcom/shishicai/app/fragment/Chat;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u7f51\u7edc\u5f02\u5e38!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 77
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 7
    .param p1, "arg0"    # I
    .param p2, "arg1"    # [Lorg/apache/http/Header;
    .param p3, "arg2"    # [B

    .prologue
    .line 81
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p3}, Ljava/lang/String;-><init>([B)V

    .line 82
    .local v3, "str":Ljava/lang/String;
    iget-object v4, p0, Lcom/shishicai/app/fragment/Chat$1;->this$0:Lcom/shishicai/app/fragment/Chat;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Chat;->access$000(Lcom/shishicai/app/fragment/Chat;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 85
    .local v1, "jb":Lorg/json/JSONObject;
    const/4 v2, 0x0

    .line 86
    .local v2, "listData":Lcom/shishicai/app/domain/ListData;
    new-instance v2, Lcom/shishicai/app/domain/ListData;

    .end local v2    # "listData":Lcom/shishicai/app/domain/ListData;
    const-string v4, "text"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5}, Lcom/shishicai/app/domain/ListData;-><init>(Ljava/lang/String;I)V

    .line 87
    .restart local v2    # "listData":Lcom/shishicai/app/domain/ListData;
    iget-object v4, p0, Lcom/shishicai/app/fragment/Chat$1;->this$0:Lcom/shishicai/app/fragment/Chat;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Chat;->access$200(Lcom/shishicai/app/fragment/Chat;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v4, p0, Lcom/shishicai/app/fragment/Chat$1;->this$0:Lcom/shishicai/app/fragment/Chat;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Chat;->access$300(Lcom/shishicai/app/fragment/Chat;)Lcom/shishicai/app/activity/adapter/TextAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shishicai/app/activity/adapter/TextAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v1    # "jb":Lorg/json/JSONObject;
    .end local v2    # "listData":Lcom/shishicai/app/domain/ListData;
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Lorg/json/JSONException;
    iget-object v4, p0, Lcom/shishicai/app/fragment/Chat$1;->this$0:Lcom/shishicai/app/fragment/Chat;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Chat;->access$000(Lcom/shishicai/app/fragment/Chat;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "err="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
