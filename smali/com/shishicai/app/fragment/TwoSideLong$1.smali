.class Lcom/shishicai/app/fragment/TwoSideLong$1;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "TwoSideLong.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/fragment/TwoSideLong;->gainData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/fragment/TwoSideLong;


# direct methods
.method constructor <init>(Lcom/shishicai/app/fragment/TwoSideLong;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/fragment/TwoSideLong;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/shishicai/app/fragment/TwoSideLong$1;->this$0:Lcom/shishicai/app/fragment/TwoSideLong;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 6
    .param p1, "arg0"    # I
    .param p2, "arg1"    # [Lorg/apache/http/Header;
    .param p3, "arg2"    # [B
    .param p4, "arg3"    # Ljava/lang/Throwable;

    .prologue
    const/4 v5, 0x0

    .line 93
    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "err":Ljava/lang/String;
    iget-object v2, p0, Lcom/shishicai/app/fragment/TwoSideLong$1;->this$0:Lcom/shishicai/app/fragment/TwoSideLong;

    invoke-static {v2}, Lcom/shishicai/app/fragment/TwoSideLong;->access$000(Lcom/shishicai/app/fragment/TwoSideLong;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "err="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v2, p0, Lcom/shishicai/app/fragment/TwoSideLong$1;->this$0:Lcom/shishicai/app/fragment/TwoSideLong;

    invoke-static {v2, v5}, Lcom/shishicai/app/fragment/TwoSideLong;->access$102(Lcom/shishicai/app/fragment/TwoSideLong;Z)Z

    .line 96
    iget-object v2, p0, Lcom/shishicai/app/fragment/TwoSideLong$1;->this$0:Lcom/shishicai/app/fragment/TwoSideLong;

    invoke-static {v2}, Lcom/shishicai/app/fragment/TwoSideLong;->access$200(Lcom/shishicai/app/fragment/TwoSideLong;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 97
    iget-object v2, p0, Lcom/shishicai/app/fragment/TwoSideLong$1;->this$0:Lcom/shishicai/app/fragment/TwoSideLong;

    invoke-static {v2}, Lcom/shishicai/app/fragment/TwoSideLong;->access$300(Lcom/shishicai/app/fragment/TwoSideLong;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 98
    const-string v1, "\u7f51\u7edc\u5f02\u5e38!"

    .line 99
    .local v1, "toast":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    const-string v1, "\u6682\u65e0\u6570\u636e"

    .line 103
    :cond_0
    iget-object v2, p0, Lcom/shishicai/app/fragment/TwoSideLong$1;->this$0:Lcom/shishicai/app/fragment/TwoSideLong;

    invoke-static {v2}, Lcom/shishicai/app/fragment/TwoSideLong;->access$400(Lcom/shishicai/app/fragment/TwoSideLong;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 104
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

    .line 109
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p3}, Ljava/lang/String;-><init>([B)V

    .line 110
    .local v3, "str":Ljava/lang/String;
    iget-object v4, p0, Lcom/shishicai/app/fragment/TwoSideLong$1;->this$0:Lcom/shishicai/app/fragment/TwoSideLong;

    invoke-static {v4}, Lcom/shishicai/app/fragment/TwoSideLong;->access$000(Lcom/shishicai/app/fragment/TwoSideLong;)Ljava/lang/String;

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

    .line 111
    iget-object v4, p0, Lcom/shishicai/app/fragment/TwoSideLong$1;->this$0:Lcom/shishicai/app/fragment/TwoSideLong;

    invoke-static {v4, v7}, Lcom/shishicai/app/fragment/TwoSideLong;->access$102(Lcom/shishicai/app/fragment/TwoSideLong;Z)Z

    .line 112
    const/4 v2, 0x0

    .line 114
    .local v2, "info":Lcom/shishicai/app/domain/TwoSideLongInfo;
    :try_start_0
    const-class v4, Lcom/shishicai/app/domain/TwoSideLongInfo;

    invoke-static {v3, v4}, Lcom/shishicai/app/utils/GsonUtils;->parseJSON(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/shishicai/app/domain/TwoSideLongInfo;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    if-eqz v2, :cond_1

    .line 120
    invoke-virtual {v2}, Lcom/shishicai/app/domain/TwoSideLongInfo;->getItems()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/shishicai/app/domain/TwoSideLongInfo;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 122
    iget-object v4, p0, Lcom/shishicai/app/fragment/TwoSideLong$1;->this$0:Lcom/shishicai/app/fragment/TwoSideLong;

    invoke-static {v4}, Lcom/shishicai/app/fragment/TwoSideLong;->access$500(Lcom/shishicai/app/fragment/TwoSideLong;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2}, Lcom/shishicai/app/domain/TwoSideLongInfo;->getItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 123
    iget-object v4, p0, Lcom/shishicai/app/fragment/TwoSideLong$1;->this$0:Lcom/shishicai/app/fragment/TwoSideLong;

    invoke-static {v4}, Lcom/shishicai/app/fragment/TwoSideLong;->access$200(Lcom/shishicai/app/fragment/TwoSideLong;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 124
    iget-object v4, p0, Lcom/shishicai/app/fragment/TwoSideLong$1;->this$0:Lcom/shishicai/app/fragment/TwoSideLong;

    invoke-static {v4}, Lcom/shishicai/app/fragment/TwoSideLong;->access$300(Lcom/shishicai/app/fragment/TwoSideLong;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 125
    iget-object v4, p0, Lcom/shishicai/app/fragment/TwoSideLong$1;->this$0:Lcom/shishicai/app/fragment/TwoSideLong;

    invoke-static {v4}, Lcom/shishicai/app/fragment/TwoSideLong;->access$600(Lcom/shishicai/app/fragment/TwoSideLong;)Lcom/shishicai/app/activity/adapter/TwoSideLongAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shishicai/app/activity/adapter/TwoSideLongAdapter;->notifyDataSetChanged()V

    .line 136
    :goto_1
    return-void

    .line 115
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Lcom/google/gson/JsonSyntaxException;
    iget-object v4, p0, Lcom/shishicai/app/fragment/TwoSideLong$1;->this$0:Lcom/shishicai/app/fragment/TwoSideLong;

    invoke-static {v4}, Lcom/shishicai/app/fragment/TwoSideLong;->access$000(Lcom/shishicai/app/fragment/TwoSideLong;)Ljava/lang/String;

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

    .line 117
    invoke-virtual {v1}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    goto :goto_0

    .line 127
    .end local v1    # "e":Lcom/google/gson/JsonSyntaxException;
    :cond_0
    iget-object v4, p0, Lcom/shishicai/app/fragment/TwoSideLong$1;->this$0:Lcom/shishicai/app/fragment/TwoSideLong;

    invoke-static {v4}, Lcom/shishicai/app/fragment/TwoSideLong;->access$200(Lcom/shishicai/app/fragment/TwoSideLong;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 128
    iget-object v4, p0, Lcom/shishicai/app/fragment/TwoSideLong$1;->this$0:Lcom/shishicai/app/fragment/TwoSideLong;

    invoke-static {v4}, Lcom/shishicai/app/fragment/TwoSideLong;->access$300(Lcom/shishicai/app/fragment/TwoSideLong;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 129
    iget-object v4, p0, Lcom/shishicai/app/fragment/TwoSideLong$1;->this$0:Lcom/shishicai/app/fragment/TwoSideLong;

    invoke-static {v4}, Lcom/shishicai/app/fragment/TwoSideLong;->access$400(Lcom/shishicai/app/fragment/TwoSideLong;)Landroid/app/Activity;

    move-result-object v4

    const-string v5, "\u6570\u636e\u5f02\u5e38!"

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 132
    :cond_1
    iget-object v4, p0, Lcom/shishicai/app/fragment/TwoSideLong$1;->this$0:Lcom/shishicai/app/fragment/TwoSideLong;

    invoke-static {v4}, Lcom/shishicai/app/fragment/TwoSideLong;->access$200(Lcom/shishicai/app/fragment/TwoSideLong;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 133
    iget-object v4, p0, Lcom/shishicai/app/fragment/TwoSideLong$1;->this$0:Lcom/shishicai/app/fragment/TwoSideLong;

    invoke-static {v4}, Lcom/shishicai/app/fragment/TwoSideLong;->access$300(Lcom/shishicai/app/fragment/TwoSideLong;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 134
    iget-object v4, p0, Lcom/shishicai/app/fragment/TwoSideLong$1;->this$0:Lcom/shishicai/app/fragment/TwoSideLong;

    invoke-static {v4}, Lcom/shishicai/app/fragment/TwoSideLong;->access$400(Lcom/shishicai/app/fragment/TwoSideLong;)Landroid/app/Activity;

    move-result-object v4

    const-string v5, "\u6682\u65e0\u6570\u636e!"

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
