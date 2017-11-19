.class Lcom/shishicai/app/activity/DayNewsActivity$1;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "DayNewsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/DayNewsActivity;->gainData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/DayNewsActivity;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/DayNewsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/DayNewsActivity;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/shishicai/app/activity/DayNewsActivity$1;->this$0:Lcom/shishicai/app/activity/DayNewsActivity;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 8
    .param p1, "arg0"    # I
    .param p2, "arg1"    # [Lorg/apache/http/Header;
    .param p3, "arg2"    # [B
    .param p4, "arg3"    # Ljava/lang/Throwable;

    .prologue
    const/4 v7, 0x0

    .line 85
    iget-object v4, p0, Lcom/shishicai/app/activity/DayNewsActivity$1;->this$0:Lcom/shishicai/app/activity/DayNewsActivity;

    invoke-static {v4}, Lcom/shishicai/app/activity/DayNewsActivity;->access$000(Lcom/shishicai/app/activity/DayNewsActivity;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "err="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v4, p0, Lcom/shishicai/app/activity/DayNewsActivity$1;->this$0:Lcom/shishicai/app/activity/DayNewsActivity;

    invoke-static {v4}, Lcom/shishicai/app/activity/DayNewsActivity;->access$100(Lcom/shishicai/app/activity/DayNewsActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 87
    iget-object v4, p0, Lcom/shishicai/app/activity/DayNewsActivity$1;->this$0:Lcom/shishicai/app/activity/DayNewsActivity;

    invoke-static {v4}, Lcom/shishicai/app/activity/DayNewsActivity;->access$200(Lcom/shishicai/app/activity/DayNewsActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 88
    const-class v4, Lcom/shishicai/app/db/dao/NewsInfo;

    new-array v5, v7, [J

    invoke-static {v4, v5}, Lorg/litepal/crud/DataSupport;->findAll(Ljava/lang/Class;[J)Ljava/util/List;

    move-result-object v1

    .line 89
    .local v1, "list1":Ljava/util/List;, "Ljava/util/List<Lcom/shishicai/app/db/dao/NewsInfo;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 91
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 92
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shishicai/app/db/dao/NewsInfo;

    .line 93
    .local v2, "news":Lcom/shishicai/app/db/dao/NewsInfo;
    new-instance v3, Lcom/shishicai/app/domain/DayNews;

    invoke-direct {v3}, Lcom/shishicai/app/domain/DayNews;-><init>()V

    .line 94
    .local v3, "newsInfo":Lcom/shishicai/app/domain/DayNews;
    invoke-virtual {v2}, Lcom/shishicai/app/db/dao/NewsInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/shishicai/app/domain/DayNews;->setTitle(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v2}, Lcom/shishicai/app/db/dao/NewsInfo;->getSummary()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/shishicai/app/domain/DayNews;->setSummary(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v2}, Lcom/shishicai/app/db/dao/NewsInfo;->getLogofile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/shishicai/app/domain/DayNews;->setLogofile(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v2}, Lcom/shishicai/app/db/dao/NewsInfo;->getPublishdate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/shishicai/app/domain/DayNews;->setPublishdate(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v2}, Lcom/shishicai/app/db/dao/NewsInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/shishicai/app/domain/DayNews;->setUrl(Ljava/lang/String;)V

    .line 99
    iget-object v4, p0, Lcom/shishicai/app/activity/DayNewsActivity$1;->this$0:Lcom/shishicai/app/activity/DayNewsActivity;

    invoke-static {v4}, Lcom/shishicai/app/activity/DayNewsActivity;->access$300(Lcom/shishicai/app/activity/DayNewsActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    .end local v2    # "news":Lcom/shishicai/app/db/dao/NewsInfo;
    .end local v3    # "newsInfo":Lcom/shishicai/app/domain/DayNews;
    :cond_0
    iget-object v4, p0, Lcom/shishicai/app/activity/DayNewsActivity$1;->this$0:Lcom/shishicai/app/activity/DayNewsActivity;

    iget-object v5, p0, Lcom/shishicai/app/activity/DayNewsActivity$1;->this$0:Lcom/shishicai/app/activity/DayNewsActivity;

    invoke-static {v5}, Lcom/shishicai/app/activity/DayNewsActivity;->access$300(Lcom/shishicai/app/activity/DayNewsActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    div-int/lit8 v5, v5, 0xa

    invoke-static {v4, v5}, Lcom/shishicai/app/activity/DayNewsActivity;->access$402(Lcom/shishicai/app/activity/DayNewsActivity;I)I

    .line 102
    iget-object v4, p0, Lcom/shishicai/app/activity/DayNewsActivity$1;->this$0:Lcom/shishicai/app/activity/DayNewsActivity;

    invoke-static {v4}, Lcom/shishicai/app/activity/DayNewsActivity;->access$500(Lcom/shishicai/app/activity/DayNewsActivity;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "total page="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/shishicai/app/activity/DayNewsActivity$1;->this$0:Lcom/shishicai/app/activity/DayNewsActivity;

    invoke-static {v6}, Lcom/shishicai/app/activity/DayNewsActivity;->access$400(Lcom/shishicai/app/activity/DayNewsActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const/4 v0, 0x0

    :goto_1
    const/16 v4, 0xa

    if-ge v0, v4, :cond_1

    .line 104
    iget-object v4, p0, Lcom/shishicai/app/activity/DayNewsActivity$1;->this$0:Lcom/shishicai/app/activity/DayNewsActivity;

    invoke-static {v4}, Lcom/shishicai/app/activity/DayNewsActivity;->access$600(Lcom/shishicai/app/activity/DayNewsActivity;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/shishicai/app/activity/DayNewsActivity$1;->this$0:Lcom/shishicai/app/activity/DayNewsActivity;

    invoke-static {v5}, Lcom/shishicai/app/activity/DayNewsActivity;->access$300(Lcom/shishicai/app/activity/DayNewsActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 106
    :cond_1
    iget-object v4, p0, Lcom/shishicai/app/activity/DayNewsActivity$1;->this$0:Lcom/shishicai/app/activity/DayNewsActivity;

    invoke-static {v4}, Lcom/shishicai/app/activity/DayNewsActivity;->access$700(Lcom/shishicai/app/activity/DayNewsActivity;)Lcom/shishicai/app/activity/adapter/NewsAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shishicai/app/activity/adapter/NewsAdapter;->notifyDataSetChanged()V

    .line 108
    .end local v0    # "i":I
    :cond_2
    iget-object v4, p0, Lcom/shishicai/app/activity/DayNewsActivity$1;->this$0:Lcom/shishicai/app/activity/DayNewsActivity;

    const-string v5, "\u7f51\u7edc\u5f02\u5e38!"

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 109
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 14
    .param p1, "arg0"    # I
    .param p2, "arg1"    # [Lorg/apache/http/Header;
    .param p3, "arg2"    # [B

    .prologue
    .line 114
    new-instance v10, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    .line 115
    .local v10, "str":Ljava/lang/String;
    iget-object v11, p0, Lcom/shishicai/app/activity/DayNewsActivity$1;->this$0:Lcom/shishicai/app/activity/DayNewsActivity;

    invoke-static {v11}, Lcom/shishicai/app/activity/DayNewsActivity;->access$800(Lcom/shishicai/app/activity/DayNewsActivity;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "result="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const/4 v4, 0x0

    .line 118
    .local v4, "info":Lcom/shishicai/app/domain/BaseListModel;, "Lcom/shishicai/app/domain/BaseListModel<Lcom/shishicai/app/domain/DayNews;>;"
    :try_start_0
    new-instance v11, Lcom/shishicai/app/activity/DayNewsActivity$1$1;

    invoke-direct {v11, p0}, Lcom/shishicai/app/activity/DayNewsActivity$1$1;-><init>(Lcom/shishicai/app/activity/DayNewsActivity$1;)V

    .line 119
    invoke-virtual {v11}, Lcom/shishicai/app/activity/DayNewsActivity$1$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v11

    .line 118
    invoke-static {v10, v11}, Lcom/shishicai/app/utils/GsonUtils;->parseJSON(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lcom/shishicai/app/domain/BaseListModel;

    move-object v4, v0
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/shishicai/app/domain/BaseListModel;->getMsg()Ljava/util/ArrayList;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-virtual {v4}, Lcom/shishicai/app/domain/BaseListModel;->getMsg()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_2

    .line 125
    iget-object v11, p0, Lcom/shishicai/app/activity/DayNewsActivity$1;->this$0:Lcom/shishicai/app/activity/DayNewsActivity;

    invoke-virtual {v4}, Lcom/shishicai/app/domain/BaseListModel;->getMsg()Ljava/util/ArrayList;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/shishicai/app/activity/DayNewsActivity;->access$302(Lcom/shishicai/app/activity/DayNewsActivity;Ljava/util/List;)Ljava/util/List;

    .line 126
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/16 v11, 0xa

    if-ge v3, v11, :cond_0

    .line 127
    iget-object v11, p0, Lcom/shishicai/app/activity/DayNewsActivity$1;->this$0:Lcom/shishicai/app/activity/DayNewsActivity;

    invoke-static {v11}, Lcom/shishicai/app/activity/DayNewsActivity;->access$600(Lcom/shishicai/app/activity/DayNewsActivity;)Ljava/util/List;

    move-result-object v11

    iget-object v12, p0, Lcom/shishicai/app/activity/DayNewsActivity$1;->this$0:Lcom/shishicai/app/activity/DayNewsActivity;

    invoke-static {v12}, Lcom/shishicai/app/activity/DayNewsActivity;->access$300(Lcom/shishicai/app/activity/DayNewsActivity;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 120
    .end local v3    # "i":I
    :catch_0
    move-exception v2

    .line 121
    .local v2, "e":Lcom/google/gson/JsonSyntaxException;
    iget-object v11, p0, Lcom/shishicai/app/activity/DayNewsActivity$1;->this$0:Lcom/shishicai/app/activity/DayNewsActivity;

    invoke-static {v11}, Lcom/shishicai/app/activity/DayNewsActivity;->access$900(Lcom/shishicai/app/activity/DayNewsActivity;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "err="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Lcom/google/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v2}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    goto :goto_0

    .line 129
    .end local v2    # "e":Lcom/google/gson/JsonSyntaxException;
    .restart local v3    # "i":I
    :cond_0
    iget-object v11, p0, Lcom/shishicai/app/activity/DayNewsActivity$1;->this$0:Lcom/shishicai/app/activity/DayNewsActivity;

    invoke-static {v11}, Lcom/shishicai/app/activity/DayNewsActivity;->access$100(Lcom/shishicai/app/activity/DayNewsActivity;)Landroid/widget/LinearLayout;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 130
    iget-object v11, p0, Lcom/shishicai/app/activity/DayNewsActivity$1;->this$0:Lcom/shishicai/app/activity/DayNewsActivity;

    invoke-static {v11}, Lcom/shishicai/app/activity/DayNewsActivity;->access$200(Lcom/shishicai/app/activity/DayNewsActivity;)Landroid/widget/LinearLayout;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 131
    iget-object v11, p0, Lcom/shishicai/app/activity/DayNewsActivity$1;->this$0:Lcom/shishicai/app/activity/DayNewsActivity;

    invoke-static {v11}, Lcom/shishicai/app/activity/DayNewsActivity;->access$700(Lcom/shishicai/app/activity/DayNewsActivity;)Lcom/shishicai/app/activity/adapter/NewsAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/shishicai/app/activity/adapter/NewsAdapter;->notifyDataSetChanged()V

    .line 132
    iget-object v11, p0, Lcom/shishicai/app/activity/DayNewsActivity$1;->this$0:Lcom/shishicai/app/activity/DayNewsActivity;

    iget-object v12, p0, Lcom/shishicai/app/activity/DayNewsActivity$1;->this$0:Lcom/shishicai/app/activity/DayNewsActivity;

    invoke-static {v12}, Lcom/shishicai/app/activity/DayNewsActivity;->access$300(Lcom/shishicai/app/activity/DayNewsActivity;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    div-int/lit8 v12, v12, 0xa

    invoke-static {v11, v12}, Lcom/shishicai/app/activity/DayNewsActivity;->access$402(Lcom/shishicai/app/activity/DayNewsActivity;I)I

    .line 133
    iget-object v11, p0, Lcom/shishicai/app/activity/DayNewsActivity$1;->this$0:Lcom/shishicai/app/activity/DayNewsActivity;

    invoke-static {v11}, Lcom/shishicai/app/activity/DayNewsActivity;->access$1000(Lcom/shishicai/app/activity/DayNewsActivity;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "total page="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/shishicai/app/activity/DayNewsActivity$1;->this$0:Lcom/shishicai/app/activity/DayNewsActivity;

    invoke-static {v13}, Lcom/shishicai/app/activity/DayNewsActivity;->access$400(Lcom/shishicai/app/activity/DayNewsActivity;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v11, p0, Lcom/shishicai/app/activity/DayNewsActivity$1;->this$0:Lcom/shishicai/app/activity/DayNewsActivity;

    sget-object v12, Lcom/shishicai/app/Constant;->EXIT_TIME:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/shishicai/app/utils/PreferencesUtils;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v6

    .line 137
    .local v6, "lastExitTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v6, v7, v12, v13}, Lcom/shishicai/app/utils/DateUtil;->getStampDiffDays(JJ)I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_3

    .line 139
    iget-object v11, p0, Lcom/shishicai/app/activity/DayNewsActivity$1;->this$0:Lcom/shishicai/app/activity/DayNewsActivity;

    invoke-static {v11}, Lcom/shishicai/app/activity/DayNewsActivity;->access$1100(Lcom/shishicai/app/activity/DayNewsActivity;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "delete"

    invoke-static {v11, v12}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-class v11, Lcom/shishicai/app/db/dao/NewsInfo;

    const/4 v12, 0x0

    new-array v12, v12, [J

    invoke-static {v11, v12}, Lorg/litepal/crud/DataSupport;->findAll(Ljava/lang/Class;[J)Ljava/util/List;

    move-result-object v5

    .line 141
    .local v5, "list1":Ljava/util/List;, "Ljava/util/List<Lcom/shishicai/app/db/dao/NewsInfo;>;"
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_1

    .line 144
    const-class v11, Lcom/shishicai/app/db/dao/NewsInfo;

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/String;

    invoke-static {v11, v12}, Lorg/litepal/crud/DataSupport;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 146
    :cond_1
    const/4 v3, 0x0

    :goto_2
    const/16 v11, 0xa

    if-ge v3, v11, :cond_3

    .line 147
    iget-object v11, p0, Lcom/shishicai/app/activity/DayNewsActivity$1;->this$0:Lcom/shishicai/app/activity/DayNewsActivity;

    invoke-static {v11}, Lcom/shishicai/app/activity/DayNewsActivity;->access$300(Lcom/shishicai/app/activity/DayNewsActivity;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shishicai/app/domain/DayNews;

    .line 148
    .local v8, "news":Lcom/shishicai/app/domain/DayNews;
    new-instance v9, Lcom/shishicai/app/db/dao/NewsInfo;

    invoke-direct {v9}, Lcom/shishicai/app/db/dao/NewsInfo;-><init>()V

    .line 149
    .local v9, "newsInfo":Lcom/shishicai/app/db/dao/NewsInfo;
    invoke-virtual {v8}, Lcom/shishicai/app/domain/DayNews;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/shishicai/app/db/dao/NewsInfo;->setTitle(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v8}, Lcom/shishicai/app/domain/DayNews;->getSummary()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/shishicai/app/db/dao/NewsInfo;->setSummary(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v8}, Lcom/shishicai/app/domain/DayNews;->getLogofile()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/shishicai/app/db/dao/NewsInfo;->setLogofile(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v8}, Lcom/shishicai/app/domain/DayNews;->getPublishdate()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/shishicai/app/db/dao/NewsInfo;->setPublishdate(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v8}, Lcom/shishicai/app/domain/DayNews;->getUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/shishicai/app/db/dao/NewsInfo;->setUrl(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v9}, Lcom/shishicai/app/db/dao/NewsInfo;->save()Z

    .line 146
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 158
    .end local v3    # "i":I
    .end local v5    # "list1":Ljava/util/List;, "Ljava/util/List<Lcom/shishicai/app/db/dao/NewsInfo;>;"
    .end local v6    # "lastExitTime":J
    .end local v8    # "news":Lcom/shishicai/app/domain/DayNews;
    .end local v9    # "newsInfo":Lcom/shishicai/app/db/dao/NewsInfo;
    :cond_2
    iget-object v11, p0, Lcom/shishicai/app/activity/DayNewsActivity$1;->this$0:Lcom/shishicai/app/activity/DayNewsActivity;

    invoke-static {v11}, Lcom/shishicai/app/activity/DayNewsActivity;->access$100(Lcom/shishicai/app/activity/DayNewsActivity;)Landroid/widget/LinearLayout;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 159
    iget-object v11, p0, Lcom/shishicai/app/activity/DayNewsActivity$1;->this$0:Lcom/shishicai/app/activity/DayNewsActivity;

    invoke-static {v11}, Lcom/shishicai/app/activity/DayNewsActivity;->access$200(Lcom/shishicai/app/activity/DayNewsActivity;)Landroid/widget/LinearLayout;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 160
    iget-object v11, p0, Lcom/shishicai/app/activity/DayNewsActivity$1;->this$0:Lcom/shishicai/app/activity/DayNewsActivity;

    const-string v12, "\u6682\u65e0\u6570\u636e!"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 162
    :cond_3
    return-void
.end method
