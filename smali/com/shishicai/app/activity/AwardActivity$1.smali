.class Lcom/shishicai/app/activity/AwardActivity$1;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "AwardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/AwardActivity;->gainData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/AwardActivity;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/AwardActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/AwardActivity;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/shishicai/app/activity/AwardActivity$1;->this$0:Lcom/shishicai/app/activity/AwardActivity;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 4
    .param p1, "arg0"    # I
    .param p2, "arg1"    # [Lorg/apache/http/Header;
    .param p3, "arg2"    # [B
    .param p4, "arg3"    # Ljava/lang/Throwable;

    .prologue
    const/4 v3, 0x0

    .line 74
    iget-object v0, p0, Lcom/shishicai/app/activity/AwardActivity$1;->this$0:Lcom/shishicai/app/activity/AwardActivity;

    invoke-static {v0}, Lcom/shishicai/app/activity/AwardActivity;->access$000(Lcom/shishicai/app/activity/AwardActivity;)Ljava/lang/String;

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

    .line 75
    iget-object v0, p0, Lcom/shishicai/app/activity/AwardActivity$1;->this$0:Lcom/shishicai/app/activity/AwardActivity;

    invoke-static {v0}, Lcom/shishicai/app/activity/AwardActivity;->access$100(Lcom/shishicai/app/activity/AwardActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/shishicai/app/activity/AwardActivity$1;->this$0:Lcom/shishicai/app/activity/AwardActivity;

    invoke-static {v0}, Lcom/shishicai/app/activity/AwardActivity;->access$200(Lcom/shishicai/app/activity/AwardActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/shishicai/app/activity/AwardActivity$1;->this$0:Lcom/shishicai/app/activity/AwardActivity;

    const-string v1, "\u7f51\u7edc\u5f02\u5e38!"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 78
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 9
    .param p1, "arg0"    # I
    .param p2, "arg1"    # [Lorg/apache/http/Header;
    .param p3, "arg2"    # [B

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 82
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p3}, Ljava/lang/String;-><init>([B)V

    .line 83
    .local v3, "str":Ljava/lang/String;
    iget-object v4, p0, Lcom/shishicai/app/activity/AwardActivity$1;->this$0:Lcom/shishicai/app/activity/AwardActivity;

    invoke-static {v4}, Lcom/shishicai/app/activity/AwardActivity;->access$300(Lcom/shishicai/app/activity/AwardActivity;)Ljava/lang/String;

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
    const/4 v2, 0x0

    .line 86
    .local v2, "info":Lcom/shishicai/app/domain/AwardInfo;
    :try_start_0
    const-class v4, Lcom/shishicai/app/domain/AwardInfo;

    invoke-static {v3, v4}, Lcom/shishicai/app/utils/GsonUtils;->parseJSON(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/shishicai/app/domain/AwardInfo;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    if-eqz v2, :cond_1

    .line 92
    invoke-virtual {v2}, Lcom/shishicai/app/domain/AwardInfo;->getData()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/shishicai/app/domain/AwardInfo;->getData()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 93
    iget-object v4, p0, Lcom/shishicai/app/activity/AwardActivity$1;->this$0:Lcom/shishicai/app/activity/AwardActivity;

    invoke-virtual {v2}, Lcom/shishicai/app/domain/AwardInfo;->getData()Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/shishicai/app/activity/AwardActivity;->access$502(Lcom/shishicai/app/activity/AwardActivity;Ljava/util/List;)Ljava/util/List;

    .line 94
    iget-object v4, p0, Lcom/shishicai/app/activity/AwardActivity$1;->this$0:Lcom/shishicai/app/activity/AwardActivity;

    invoke-static {v4}, Lcom/shishicai/app/activity/AwardActivity;->access$100(Lcom/shishicai/app/activity/AwardActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 95
    iget-object v4, p0, Lcom/shishicai/app/activity/AwardActivity$1;->this$0:Lcom/shishicai/app/activity/AwardActivity;

    invoke-static {v4}, Lcom/shishicai/app/activity/AwardActivity;->access$200(Lcom/shishicai/app/activity/AwardActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 96
    iget-object v4, p0, Lcom/shishicai/app/activity/AwardActivity$1;->this$0:Lcom/shishicai/app/activity/AwardActivity;

    new-instance v5, Lcom/shishicai/app/activity/adapter/AwardAdapter;

    iget-object v6, p0, Lcom/shishicai/app/activity/AwardActivity$1;->this$0:Lcom/shishicai/app/activity/AwardActivity;

    iget-object v7, p0, Lcom/shishicai/app/activity/AwardActivity$1;->this$0:Lcom/shishicai/app/activity/AwardActivity;

    invoke-static {v7}, Lcom/shishicai/app/activity/AwardActivity;->access$500(Lcom/shishicai/app/activity/AwardActivity;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/shishicai/app/activity/adapter/AwardAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v4, v5}, Lcom/shishicai/app/activity/AwardActivity;->access$602(Lcom/shishicai/app/activity/AwardActivity;Lcom/shishicai/app/activity/adapter/AwardAdapter;)Lcom/shishicai/app/activity/adapter/AwardAdapter;

    .line 97
    iget-object v4, p0, Lcom/shishicai/app/activity/AwardActivity$1;->this$0:Lcom/shishicai/app/activity/AwardActivity;

    invoke-static {v4}, Lcom/shishicai/app/activity/AwardActivity;->access$700(Lcom/shishicai/app/activity/AwardActivity;)Landroid/widget/ListView;

    move-result-object v4

    iget-object v5, p0, Lcom/shishicai/app/activity/AwardActivity$1;->this$0:Lcom/shishicai/app/activity/AwardActivity;

    invoke-static {v5}, Lcom/shishicai/app/activity/AwardActivity;->access$600(Lcom/shishicai/app/activity/AwardActivity;)Lcom/shishicai/app/activity/adapter/AwardAdapter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 104
    :cond_0
    :goto_1
    return-void

    .line 87
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Lcom/google/gson/JsonSyntaxException;
    iget-object v4, p0, Lcom/shishicai/app/activity/AwardActivity$1;->this$0:Lcom/shishicai/app/activity/AwardActivity;

    invoke-static {v4}, Lcom/shishicai/app/activity/AwardActivity;->access$400(Lcom/shishicai/app/activity/AwardActivity;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "err="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/google/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v1}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    goto :goto_0

    .line 100
    .end local v1    # "e":Lcom/google/gson/JsonSyntaxException;
    :cond_1
    iget-object v4, p0, Lcom/shishicai/app/activity/AwardActivity$1;->this$0:Lcom/shishicai/app/activity/AwardActivity;

    invoke-static {v4}, Lcom/shishicai/app/activity/AwardActivity;->access$100(Lcom/shishicai/app/activity/AwardActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 101
    iget-object v4, p0, Lcom/shishicai/app/activity/AwardActivity$1;->this$0:Lcom/shishicai/app/activity/AwardActivity;

    invoke-static {v4}, Lcom/shishicai/app/activity/AwardActivity;->access$200(Lcom/shishicai/app/activity/AwardActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 102
    iget-object v4, p0, Lcom/shishicai/app/activity/AwardActivity$1;->this$0:Lcom/shishicai/app/activity/AwardActivity;

    const-string v5, "\u6682\u65e0\u6570\u636e!"

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
