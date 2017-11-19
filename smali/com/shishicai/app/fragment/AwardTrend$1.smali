.class Lcom/shishicai/app/fragment/AwardTrend$1;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "AwardTrend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/fragment/AwardTrend;->gainData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/fragment/AwardTrend;


# direct methods
.method constructor <init>(Lcom/shishicai/app/fragment/AwardTrend;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/fragment/AwardTrend;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/shishicai/app/fragment/AwardTrend$1;->this$0:Lcom/shishicai/app/fragment/AwardTrend;

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

    .line 105
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardTrend$1;->this$0:Lcom/shishicai/app/fragment/AwardTrend;

    invoke-static {v0}, Lcom/shishicai/app/fragment/AwardTrend;->access$000(Lcom/shishicai/app/fragment/AwardTrend;)Ljava/lang/String;

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

    .line 106
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardTrend$1;->this$0:Lcom/shishicai/app/fragment/AwardTrend;

    invoke-static {v0}, Lcom/shishicai/app/fragment/AwardTrend;->access$100(Lcom/shishicai/app/fragment/AwardTrend;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardTrend$1;->this$0:Lcom/shishicai/app/fragment/AwardTrend;

    invoke-static {v0}, Lcom/shishicai/app/fragment/AwardTrend;->access$200(Lcom/shishicai/app/fragment/AwardTrend;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardTrend$1;->this$0:Lcom/shishicai/app/fragment/AwardTrend;

    invoke-static {v0, v3}, Lcom/shishicai/app/fragment/AwardTrend;->access$302(Lcom/shishicai/app/fragment/AwardTrend;Z)Z

    .line 109
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardTrend$1;->this$0:Lcom/shishicai/app/fragment/AwardTrend;

    invoke-static {v0}, Lcom/shishicai/app/fragment/AwardTrend;->access$400(Lcom/shishicai/app/fragment/AwardTrend;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u7f51\u7edc\u5f02\u5e38!"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 110
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 12
    .param p1, "arg0"    # I
    .param p2, "arg1"    # [Lorg/apache/http/Header;
    .param p3, "arg2"    # [B

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 114
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p3}, Ljava/lang/String;-><init>([B)V

    .line 115
    .local v5, "str":Ljava/lang/String;
    iget-object v7, p0, Lcom/shishicai/app/fragment/AwardTrend$1;->this$0:Lcom/shishicai/app/fragment/AwardTrend;

    invoke-static {v7}, Lcom/shishicai/app/fragment/AwardTrend;->access$000(Lcom/shishicai/app/fragment/AwardTrend;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "result="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v7, p0, Lcom/shishicai/app/fragment/AwardTrend$1;->this$0:Lcom/shishicai/app/fragment/AwardTrend;

    invoke-static {v7, v10}, Lcom/shishicai/app/fragment/AwardTrend;->access$302(Lcom/shishicai/app/fragment/AwardTrend;Z)Z

    .line 117
    const/4 v3, 0x0

    .line 119
    .local v3, "info":Lcom/shishicai/app/domain/PKshiInfo;
    :try_start_0
    const-class v7, Lcom/shishicai/app/domain/PKshiInfo;

    invoke-static {v5, v7}, Lcom/shishicai/app/utils/GsonUtils;->parseJSON(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/shishicai/app/domain/PKshiInfo;

    move-object v3, v0
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    if-eqz v3, :cond_2

    .line 125
    invoke-virtual {v3}, Lcom/shishicai/app/domain/PKshiInfo;->getItems()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v3}, Lcom/shishicai/app/domain/PKshiInfo;->getItems()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 126
    iget-object v7, p0, Lcom/shishicai/app/fragment/AwardTrend$1;->this$0:Lcom/shishicai/app/fragment/AwardTrend;

    invoke-static {v7}, Lcom/shishicai/app/fragment/AwardTrend;->access$500(Lcom/shishicai/app/fragment/AwardTrend;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v3}, Lcom/shishicai/app/domain/PKshiInfo;->getItems()Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 127
    iget-object v7, p0, Lcom/shishicai/app/fragment/AwardTrend$1;->this$0:Lcom/shishicai/app/fragment/AwardTrend;

    invoke-static {v7}, Lcom/shishicai/app/fragment/AwardTrend;->access$100(Lcom/shishicai/app/fragment/AwardTrend;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 128
    iget-object v7, p0, Lcom/shishicai/app/fragment/AwardTrend$1;->this$0:Lcom/shishicai/app/fragment/AwardTrend;

    invoke-static {v7}, Lcom/shishicai/app/fragment/AwardTrend;->access$200(Lcom/shishicai/app/fragment/AwardTrend;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 129
    iget-object v7, p0, Lcom/shishicai/app/fragment/AwardTrend$1;->this$0:Lcom/shishicai/app/fragment/AwardTrend;

    invoke-static {v7}, Lcom/shishicai/app/fragment/AwardTrend;->access$600(Lcom/shishicai/app/fragment/AwardTrend;)Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;->notifyDataSetChanged()V

    .line 130
    iget-object v7, p0, Lcom/shishicai/app/fragment/AwardTrend$1;->this$0:Lcom/shishicai/app/fragment/AwardTrend;

    iget-object v8, p0, Lcom/shishicai/app/fragment/AwardTrend$1;->this$0:Lcom/shishicai/app/fragment/AwardTrend;

    invoke-static {v8}, Lcom/shishicai/app/fragment/AwardTrend;->access$500(Lcom/shishicai/app/fragment/AwardTrend;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/shishicai/app/fragment/AwardTrend;->access$702(Lcom/shishicai/app/fragment/AwardTrend;[Ljava/lang/String;)[Ljava/lang/String;

    .line 131
    iget-object v7, p0, Lcom/shishicai/app/fragment/AwardTrend$1;->this$0:Lcom/shishicai/app/fragment/AwardTrend;

    iget-object v8, p0, Lcom/shishicai/app/fragment/AwardTrend$1;->this$0:Lcom/shishicai/app/fragment/AwardTrend;

    invoke-static {v8}, Lcom/shishicai/app/fragment/AwardTrend;->access$500(Lcom/shishicai/app/fragment/AwardTrend;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/shishicai/app/fragment/AwardTrend;->access$802(Lcom/shishicai/app/fragment/AwardTrend;[Ljava/lang/String;)[Ljava/lang/String;

    .line 133
    const/4 v4, 0x0

    .line 134
    .local v4, "numbers":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v7, p0, Lcom/shishicai/app/fragment/AwardTrend$1;->this$0:Lcom/shishicai/app/fragment/AwardTrend;

    invoke-static {v7}, Lcom/shishicai/app/fragment/AwardTrend;->access$500(Lcom/shishicai/app/fragment/AwardTrend;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 136
    iget-object v7, p0, Lcom/shishicai/app/fragment/AwardTrend$1;->this$0:Lcom/shishicai/app/fragment/AwardTrend;

    invoke-static {v7}, Lcom/shishicai/app/fragment/AwardTrend;->access$500(Lcom/shishicai/app/fragment/AwardTrend;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;

    invoke-virtual {v7}, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;->getTime()Ljava/lang/String;

    move-result-object v6

    .line 137
    .local v6, "timeStr":Ljava/lang/String;
    iget-object v7, p0, Lcom/shishicai/app/fragment/AwardTrend$1;->this$0:Lcom/shishicai/app/fragment/AwardTrend;

    invoke-static {v7}, Lcom/shishicai/app/fragment/AwardTrend;->access$700(Lcom/shishicai/app/fragment/AwardTrend;)[Ljava/lang/String;

    move-result-object v7

    aput-object v6, v7, v2

    .line 138
    iget-object v7, p0, Lcom/shishicai/app/fragment/AwardTrend$1;->this$0:Lcom/shishicai/app/fragment/AwardTrend;

    invoke-static {v7}, Lcom/shishicai/app/fragment/AwardTrend;->access$500(Lcom/shishicai/app/fragment/AwardTrend;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;

    invoke-virtual {v7}, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;->getResult()Ljava/lang/String;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 139
    iget-object v7, p0, Lcom/shishicai/app/fragment/AwardTrend$1;->this$0:Lcom/shishicai/app/fragment/AwardTrend;

    invoke-static {v7}, Lcom/shishicai/app/fragment/AwardTrend;->access$800(Lcom/shishicai/app/fragment/AwardTrend;)[Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/shishicai/app/fragment/AwardTrend$1;->this$0:Lcom/shishicai/app/fragment/AwardTrend;

    invoke-static {v8}, Lcom/shishicai/app/fragment/AwardTrend;->access$900(Lcom/shishicai/app/fragment/AwardTrend;)I

    move-result v8

    aget-object v8, v4, v8

    aput-object v8, v7, v2

    .line 134
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 120
    .end local v2    # "i":I
    .end local v4    # "numbers":[Ljava/lang/String;
    .end local v6    # "timeStr":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 121
    .local v1, "e":Lcom/google/gson/JsonSyntaxException;
    iget-object v7, p0, Lcom/shishicai/app/fragment/AwardTrend$1;->this$0:Lcom/shishicai/app/fragment/AwardTrend;

    invoke-static {v7}, Lcom/shishicai/app/fragment/AwardTrend;->access$000(Lcom/shishicai/app/fragment/AwardTrend;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "err="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/google/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v1}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    goto/16 :goto_0

    .line 141
    .end local v1    # "e":Lcom/google/gson/JsonSyntaxException;
    .restart local v2    # "i":I
    .restart local v4    # "numbers":[Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lcom/shishicai/app/fragment/AwardTrend$1;->this$0:Lcom/shishicai/app/fragment/AwardTrend;

    array-length v8, v4

    invoke-static {v7, v8}, Lcom/shishicai/app/fragment/AwardTrend;->access$1002(Lcom/shishicai/app/fragment/AwardTrend;I)I

    .line 152
    .end local v2    # "i":I
    .end local v4    # "numbers":[Ljava/lang/String;
    :goto_2
    return-void

    .line 143
    :cond_1
    iget-object v7, p0, Lcom/shishicai/app/fragment/AwardTrend$1;->this$0:Lcom/shishicai/app/fragment/AwardTrend;

    invoke-static {v7}, Lcom/shishicai/app/fragment/AwardTrend;->access$100(Lcom/shishicai/app/fragment/AwardTrend;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 144
    iget-object v7, p0, Lcom/shishicai/app/fragment/AwardTrend$1;->this$0:Lcom/shishicai/app/fragment/AwardTrend;

    invoke-static {v7}, Lcom/shishicai/app/fragment/AwardTrend;->access$200(Lcom/shishicai/app/fragment/AwardTrend;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 145
    iget-object v7, p0, Lcom/shishicai/app/fragment/AwardTrend$1;->this$0:Lcom/shishicai/app/fragment/AwardTrend;

    invoke-static {v7}, Lcom/shishicai/app/fragment/AwardTrend;->access$400(Lcom/shishicai/app/fragment/AwardTrend;)Landroid/app/Activity;

    move-result-object v7

    const-string v8, "\u6682\u65e0\u6570\u636e!"

    invoke-static {v7, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 148
    :cond_2
    iget-object v7, p0, Lcom/shishicai/app/fragment/AwardTrend$1;->this$0:Lcom/shishicai/app/fragment/AwardTrend;

    invoke-static {v7}, Lcom/shishicai/app/fragment/AwardTrend;->access$100(Lcom/shishicai/app/fragment/AwardTrend;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 149
    iget-object v7, p0, Lcom/shishicai/app/fragment/AwardTrend$1;->this$0:Lcom/shishicai/app/fragment/AwardTrend;

    invoke-static {v7}, Lcom/shishicai/app/fragment/AwardTrend;->access$200(Lcom/shishicai/app/fragment/AwardTrend;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 150
    iget-object v7, p0, Lcom/shishicai/app/fragment/AwardTrend$1;->this$0:Lcom/shishicai/app/fragment/AwardTrend;

    invoke-static {v7}, Lcom/shishicai/app/fragment/AwardTrend;->access$400(Lcom/shishicai/app/fragment/AwardTrend;)Landroid/app/Activity;

    move-result-object v7

    const-string v8, "\u6570\u636e\u5f02\u5e38!"

    invoke-static {v7, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method
