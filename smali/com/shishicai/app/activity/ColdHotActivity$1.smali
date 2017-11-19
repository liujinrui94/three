.class Lcom/shishicai/app/activity/ColdHotActivity$1;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "ColdHotActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/ColdHotActivity;->gainData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/ColdHotActivity;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/ColdHotActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/ColdHotActivity;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/shishicai/app/activity/ColdHotActivity$1;->this$0:Lcom/shishicai/app/activity/ColdHotActivity;

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

    .line 102
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity$1;->this$0:Lcom/shishicai/app/activity/ColdHotActivity;

    invoke-static {v0}, Lcom/shishicai/app/activity/ColdHotActivity;->access$000(Lcom/shishicai/app/activity/ColdHotActivity;)Ljava/lang/String;

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

    .line 103
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity$1;->this$0:Lcom/shishicai/app/activity/ColdHotActivity;

    invoke-static {v0}, Lcom/shishicai/app/activity/ColdHotActivity;->access$100(Lcom/shishicai/app/activity/ColdHotActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity$1;->this$0:Lcom/shishicai/app/activity/ColdHotActivity;

    invoke-static {v0}, Lcom/shishicai/app/activity/ColdHotActivity;->access$200(Lcom/shishicai/app/activity/ColdHotActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/shishicai/app/activity/ColdHotActivity$1;->this$0:Lcom/shishicai/app/activity/ColdHotActivity;

    const-string v1, "\u7f51\u7edc\u5f02\u5e38!"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 106
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 7
    .param p1, "arg0"    # I
    .param p2, "arg1"    # [Lorg/apache/http/Header;
    .param p3, "arg2"    # [B

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 110
    iget-object v2, p0, Lcom/shishicai/app/activity/ColdHotActivity$1;->this$0:Lcom/shishicai/app/activity/ColdHotActivity;

    invoke-static {v2}, Lcom/shishicai/app/activity/ColdHotActivity;->access$100(Lcom/shishicai/app/activity/ColdHotActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 111
    iget-object v2, p0, Lcom/shishicai/app/activity/ColdHotActivity$1;->this$0:Lcom/shishicai/app/activity/ColdHotActivity;

    invoke-static {v2}, Lcom/shishicai/app/activity/ColdHotActivity;->access$200(Lcom/shishicai/app/activity/ColdHotActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 112
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    .line 113
    .local v1, "str":Ljava/lang/String;
    iget-object v2, p0, Lcom/shishicai/app/activity/ColdHotActivity$1;->this$0:Lcom/shishicai/app/activity/ColdHotActivity;

    invoke-static {v2}, Lcom/shishicai/app/activity/ColdHotActivity;->access$300(Lcom/shishicai/app/activity/ColdHotActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :try_start_0
    iget-object v3, p0, Lcom/shishicai/app/activity/ColdHotActivity$1;->this$0:Lcom/shishicai/app/activity/ColdHotActivity;

    const-class v2, Lcom/shishicai/app/domain/ColdHotBean;

    invoke-static {v1, v2}, Lcom/shishicai/app/utils/GsonUtils;->parseJSON(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shishicai/app/domain/ColdHotBean;

    invoke-static {v3, v2}, Lcom/shishicai/app/activity/ColdHotActivity;->access$402(Lcom/shishicai/app/activity/ColdHotActivity;Lcom/shishicai/app/domain/ColdHotBean;)Lcom/shishicai/app/domain/ColdHotBean;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    iget-object v2, p0, Lcom/shishicai/app/activity/ColdHotActivity$1;->this$0:Lcom/shishicai/app/activity/ColdHotActivity;

    invoke-static {v2}, Lcom/shishicai/app/activity/ColdHotActivity;->access$400(Lcom/shishicai/app/activity/ColdHotActivity;)Lcom/shishicai/app/domain/ColdHotBean;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 122
    iget-object v2, p0, Lcom/shishicai/app/activity/ColdHotActivity$1;->this$0:Lcom/shishicai/app/activity/ColdHotActivity;

    invoke-static {v2}, Lcom/shishicai/app/activity/ColdHotActivity;->access$400(Lcom/shishicai/app/activity/ColdHotActivity;)Lcom/shishicai/app/domain/ColdHotBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shishicai/app/domain/ColdHotBean;->getItems()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/shishicai/app/activity/ColdHotActivity$1;->this$0:Lcom/shishicai/app/activity/ColdHotActivity;

    invoke-static {v2}, Lcom/shishicai/app/activity/ColdHotActivity;->access$400(Lcom/shishicai/app/activity/ColdHotActivity;)Lcom/shishicai/app/domain/ColdHotBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shishicai/app/domain/ColdHotBean;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 124
    iget-object v2, p0, Lcom/shishicai/app/activity/ColdHotActivity$1;->this$0:Lcom/shishicai/app/activity/ColdHotActivity;

    invoke-static {v2}, Lcom/shishicai/app/activity/ColdHotActivity;->access$600(Lcom/shishicai/app/activity/ColdHotActivity;)Ljava/util/List;

    move-result-object v3

    iget-object v2, p0, Lcom/shishicai/app/activity/ColdHotActivity$1;->this$0:Lcom/shishicai/app/activity/ColdHotActivity;

    invoke-static {v2}, Lcom/shishicai/app/activity/ColdHotActivity;->access$400(Lcom/shishicai/app/activity/ColdHotActivity;)Lcom/shishicai/app/domain/ColdHotBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shishicai/app/domain/ColdHotBean;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shishicai/app/domain/ColdHotBean$ItemsBean;

    invoke-virtual {v2}, Lcom/shishicai/app/domain/ColdHotBean$ItemsBean;->getHot()Ljava/util/List;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 125
    iget-object v2, p0, Lcom/shishicai/app/activity/ColdHotActivity$1;->this$0:Lcom/shishicai/app/activity/ColdHotActivity;

    invoke-static {v2}, Lcom/shishicai/app/activity/ColdHotActivity;->access$700(Lcom/shishicai/app/activity/ColdHotActivity;)Ljava/util/List;

    move-result-object v3

    iget-object v2, p0, Lcom/shishicai/app/activity/ColdHotActivity$1;->this$0:Lcom/shishicai/app/activity/ColdHotActivity;

    invoke-static {v2}, Lcom/shishicai/app/activity/ColdHotActivity;->access$400(Lcom/shishicai/app/activity/ColdHotActivity;)Lcom/shishicai/app/domain/ColdHotBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shishicai/app/domain/ColdHotBean;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shishicai/app/domain/ColdHotBean$ItemsBean;

    invoke-virtual {v2}, Lcom/shishicai/app/domain/ColdHotBean$ItemsBean;->getWarm()Ljava/util/List;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 126
    iget-object v2, p0, Lcom/shishicai/app/activity/ColdHotActivity$1;->this$0:Lcom/shishicai/app/activity/ColdHotActivity;

    invoke-static {v2}, Lcom/shishicai/app/activity/ColdHotActivity;->access$800(Lcom/shishicai/app/activity/ColdHotActivity;)Ljava/util/List;

    move-result-object v3

    iget-object v2, p0, Lcom/shishicai/app/activity/ColdHotActivity$1;->this$0:Lcom/shishicai/app/activity/ColdHotActivity;

    invoke-static {v2}, Lcom/shishicai/app/activity/ColdHotActivity;->access$400(Lcom/shishicai/app/activity/ColdHotActivity;)Lcom/shishicai/app/domain/ColdHotBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shishicai/app/domain/ColdHotBean;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shishicai/app/domain/ColdHotBean$ItemsBean;

    invoke-virtual {v2}, Lcom/shishicai/app/domain/ColdHotBean$ItemsBean;->getCold()Ljava/util/List;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 127
    iget-object v2, p0, Lcom/shishicai/app/activity/ColdHotActivity$1;->this$0:Lcom/shishicai/app/activity/ColdHotActivity;

    invoke-static {v2}, Lcom/shishicai/app/activity/ColdHotActivity;->access$900(Lcom/shishicai/app/activity/ColdHotActivity;)Lcom/shishicai/app/activity/adapter/ColdHotAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shishicai/app/activity/adapter/ColdHotAdapter;->notifyDataSetChanged()V

    .line 128
    iget-object v2, p0, Lcom/shishicai/app/activity/ColdHotActivity$1;->this$0:Lcom/shishicai/app/activity/ColdHotActivity;

    invoke-static {v2}, Lcom/shishicai/app/activity/ColdHotActivity;->access$1000(Lcom/shishicai/app/activity/ColdHotActivity;)Lcom/shishicai/app/activity/adapter/ColdHotAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shishicai/app/activity/adapter/ColdHotAdapter;->notifyDataSetChanged()V

    .line 129
    iget-object v2, p0, Lcom/shishicai/app/activity/ColdHotActivity$1;->this$0:Lcom/shishicai/app/activity/ColdHotActivity;

    invoke-static {v2}, Lcom/shishicai/app/activity/ColdHotActivity;->access$1100(Lcom/shishicai/app/activity/ColdHotActivity;)Lcom/shishicai/app/activity/adapter/ColdHotAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shishicai/app/activity/adapter/ColdHotAdapter;->notifyDataSetChanged()V

    .line 141
    :goto_1
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Lcom/google/gson/JsonSyntaxException;
    iget-object v2, p0, Lcom/shishicai/app/activity/ColdHotActivity$1;->this$0:Lcom/shishicai/app/activity/ColdHotActivity;

    invoke-static {v2}, Lcom/shishicai/app/activity/ColdHotActivity;->access$500(Lcom/shishicai/app/activity/ColdHotActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "err="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    goto/16 :goto_0

    .line 131
    .end local v0    # "e":Lcom/google/gson/JsonSyntaxException;
    :cond_0
    iget-object v2, p0, Lcom/shishicai/app/activity/ColdHotActivity$1;->this$0:Lcom/shishicai/app/activity/ColdHotActivity;

    invoke-static {v2}, Lcom/shishicai/app/activity/ColdHotActivity;->access$100(Lcom/shishicai/app/activity/ColdHotActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 132
    iget-object v2, p0, Lcom/shishicai/app/activity/ColdHotActivity$1;->this$0:Lcom/shishicai/app/activity/ColdHotActivity;

    invoke-static {v2}, Lcom/shishicai/app/activity/ColdHotActivity;->access$200(Lcom/shishicai/app/activity/ColdHotActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 133
    iget-object v2, p0, Lcom/shishicai/app/activity/ColdHotActivity$1;->this$0:Lcom/shishicai/app/activity/ColdHotActivity;

    const-string v3, "\u6570\u636e\u5f02\u5e38!"

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 136
    :cond_1
    iget-object v2, p0, Lcom/shishicai/app/activity/ColdHotActivity$1;->this$0:Lcom/shishicai/app/activity/ColdHotActivity;

    invoke-static {v2}, Lcom/shishicai/app/activity/ColdHotActivity;->access$100(Lcom/shishicai/app/activity/ColdHotActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 137
    iget-object v2, p0, Lcom/shishicai/app/activity/ColdHotActivity$1;->this$0:Lcom/shishicai/app/activity/ColdHotActivity;

    invoke-static {v2}, Lcom/shishicai/app/activity/ColdHotActivity;->access$200(Lcom/shishicai/app/activity/ColdHotActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 138
    iget-object v2, p0, Lcom/shishicai/app/activity/ColdHotActivity$1;->this$0:Lcom/shishicai/app/activity/ColdHotActivity;

    const-string v3, "\u6682\u65e0\u6570\u636e!"

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
