.class Lcom/shishicai/app/fragment/Read$1;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "Read.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/fragment/Read;->gainData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/fragment/Read;


# direct methods
.method constructor <init>(Lcom/shishicai/app/fragment/Read;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/fragment/Read;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/shishicai/app/fragment/Read$1;->this$0:Lcom/shishicai/app/fragment/Read;

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

    .line 102
    iget-object v4, p0, Lcom/shishicai/app/fragment/Read$1;->this$0:Lcom/shishicai/app/fragment/Read;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Read;->access$000(Lcom/shishicai/app/fragment/Read;)Ljava/lang/String;

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

    .line 103
    iget-object v4, p0, Lcom/shishicai/app/fragment/Read$1;->this$0:Lcom/shishicai/app/fragment/Read;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Read;->access$100(Lcom/shishicai/app/fragment/Read;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 104
    iget-object v4, p0, Lcom/shishicai/app/fragment/Read$1;->this$0:Lcom/shishicai/app/fragment/Read;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Read;->access$200(Lcom/shishicai/app/fragment/Read;)Landroid/widget/LinearLayout;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 105
    const-class v4, Lcom/shishicai/app/db/dao/NewsInfo;

    new-array v5, v7, [J

    invoke-static {v4, v5}, Lorg/litepal/crud/DataSupport;->findAll(Ljava/lang/Class;[J)Ljava/util/List;

    move-result-object v1

    .line 106
    .local v1, "list1":Ljava/util/List;, "Ljava/util/List<Lcom/shishicai/app/db/dao/NewsInfo;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 108
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 109
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shishicai/app/db/dao/NewsInfo;

    .line 110
    .local v2, "news":Lcom/shishicai/app/db/dao/NewsInfo;
    new-instance v3, Lcom/shishicai/app/domain/DayNews;

    invoke-direct {v3}, Lcom/shishicai/app/domain/DayNews;-><init>()V

    .line 111
    .local v3, "newsInfo":Lcom/shishicai/app/domain/DayNews;
    invoke-virtual {v2}, Lcom/shishicai/app/db/dao/NewsInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/shishicai/app/domain/DayNews;->setTitle(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v2}, Lcom/shishicai/app/db/dao/NewsInfo;->getSummary()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/shishicai/app/domain/DayNews;->setSummary(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v2}, Lcom/shishicai/app/db/dao/NewsInfo;->getLogofile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/shishicai/app/domain/DayNews;->setLogofile(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v2}, Lcom/shishicai/app/db/dao/NewsInfo;->getPublishdate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/shishicai/app/domain/DayNews;->setPublishdate(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v2}, Lcom/shishicai/app/db/dao/NewsInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/shishicai/app/domain/DayNews;->setUrl(Ljava/lang/String;)V

    .line 116
    iget-object v4, p0, Lcom/shishicai/app/fragment/Read$1;->this$0:Lcom/shishicai/app/fragment/Read;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Read;->access$300(Lcom/shishicai/app/fragment/Read;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    .end local v2    # "news":Lcom/shishicai/app/db/dao/NewsInfo;
    .end local v3    # "newsInfo":Lcom/shishicai/app/domain/DayNews;
    :cond_0
    iget-object v4, p0, Lcom/shishicai/app/fragment/Read$1;->this$0:Lcom/shishicai/app/fragment/Read;

    iget-object v5, p0, Lcom/shishicai/app/fragment/Read$1;->this$0:Lcom/shishicai/app/fragment/Read;

    invoke-static {v5}, Lcom/shishicai/app/fragment/Read;->access$300(Lcom/shishicai/app/fragment/Read;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    div-int/lit8 v5, v5, 0xa

    invoke-static {v4, v5}, Lcom/shishicai/app/fragment/Read;->access$402(Lcom/shishicai/app/fragment/Read;I)I

    .line 119
    iget-object v4, p0, Lcom/shishicai/app/fragment/Read$1;->this$0:Lcom/shishicai/app/fragment/Read;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Read;->access$000(Lcom/shishicai/app/fragment/Read;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "total page="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/shishicai/app/fragment/Read$1;->this$0:Lcom/shishicai/app/fragment/Read;

    invoke-static {v6}, Lcom/shishicai/app/fragment/Read;->access$400(Lcom/shishicai/app/fragment/Read;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const/4 v0, 0x0

    :goto_1
    const/16 v4, 0xa

    if-ge v0, v4, :cond_1

    .line 121
    iget-object v4, p0, Lcom/shishicai/app/fragment/Read$1;->this$0:Lcom/shishicai/app/fragment/Read;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Read;->access$500(Lcom/shishicai/app/fragment/Read;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/shishicai/app/fragment/Read$1;->this$0:Lcom/shishicai/app/fragment/Read;

    invoke-static {v5}, Lcom/shishicai/app/fragment/Read;->access$300(Lcom/shishicai/app/fragment/Read;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 123
    :cond_1
    iget-object v4, p0, Lcom/shishicai/app/fragment/Read$1;->this$0:Lcom/shishicai/app/fragment/Read;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Read;->access$600(Lcom/shishicai/app/fragment/Read;)Lcom/shishicai/app/activity/adapter/NewsAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shishicai/app/activity/adapter/NewsAdapter;->notifyDataSetChanged()V

    .line 125
    .end local v0    # "i":I
    :cond_2
    iget-object v4, p0, Lcom/shishicai/app/fragment/Read$1;->this$0:Lcom/shishicai/app/fragment/Read;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Read;->access$700(Lcom/shishicai/app/fragment/Read;)Landroid/app/Activity;

    move-result-object v4

    const-string v5, "\u7f51\u7edc\u5f02\u5e38!"

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 126
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 14
    .param p1, "arg0"    # I
    .param p2, "arg1"    # [Lorg/apache/http/Header;
    .param p3, "arg2"    # [B

    .prologue
    .line 131
    new-instance v10, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    .line 132
    .local v10, "str":Ljava/lang/String;
    iget-object v11, p0, Lcom/shishicai/app/fragment/Read$1;->this$0:Lcom/shishicai/app/fragment/Read;

    invoke-static {v11}, Lcom/shishicai/app/fragment/Read;->access$000(Lcom/shishicai/app/fragment/Read;)Ljava/lang/String;

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

    .line 133
    const/4 v4, 0x0

    .line 135
    .local v4, "info":Lcom/shishicai/app/domain/BaseListModel;, "Lcom/shishicai/app/domain/BaseListModel<Lcom/shishicai/app/domain/DayNews;>;"
    :try_start_0
    new-instance v11, Lcom/shishicai/app/fragment/Read$1$1;

    invoke-direct {v11, p0}, Lcom/shishicai/app/fragment/Read$1$1;-><init>(Lcom/shishicai/app/fragment/Read$1;)V

    .line 136
    invoke-virtual {v11}, Lcom/shishicai/app/fragment/Read$1$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v11

    .line 135
    invoke-static {v10, v11}, Lcom/shishicai/app/utils/GsonUtils;->parseJSON(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lcom/shishicai/app/domain/BaseListModel;

    move-object v4, v0
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
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

    .line 142
    iget-object v11, p0, Lcom/shishicai/app/fragment/Read$1;->this$0:Lcom/shishicai/app/fragment/Read;

    invoke-virtual {v4}, Lcom/shishicai/app/domain/BaseListModel;->getMsg()Ljava/util/ArrayList;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/shishicai/app/fragment/Read;->access$302(Lcom/shishicai/app/fragment/Read;Ljava/util/List;)Ljava/util/List;

    .line 143
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/16 v11, 0xa

    if-ge v3, v11, :cond_0

    .line 144
    iget-object v11, p0, Lcom/shishicai/app/fragment/Read$1;->this$0:Lcom/shishicai/app/fragment/Read;

    invoke-static {v11}, Lcom/shishicai/app/fragment/Read;->access$500(Lcom/shishicai/app/fragment/Read;)Ljava/util/List;

    move-result-object v11

    iget-object v12, p0, Lcom/shishicai/app/fragment/Read$1;->this$0:Lcom/shishicai/app/fragment/Read;

    invoke-static {v12}, Lcom/shishicai/app/fragment/Read;->access$300(Lcom/shishicai/app/fragment/Read;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 137
    .end local v3    # "i":I
    :catch_0
    move-exception v2

    .line 138
    .local v2, "e":Lcom/google/gson/JsonSyntaxException;
    iget-object v11, p0, Lcom/shishicai/app/fragment/Read$1;->this$0:Lcom/shishicai/app/fragment/Read;

    invoke-static {v11}, Lcom/shishicai/app/fragment/Read;->access$000(Lcom/shishicai/app/fragment/Read;)Ljava/lang/String;

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

    .line 139
    invoke-virtual {v2}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    goto :goto_0

    .line 146
    .end local v2    # "e":Lcom/google/gson/JsonSyntaxException;
    .restart local v3    # "i":I
    :cond_0
    iget-object v11, p0, Lcom/shishicai/app/fragment/Read$1;->this$0:Lcom/shishicai/app/fragment/Read;

    invoke-static {v11}, Lcom/shishicai/app/fragment/Read;->access$100(Lcom/shishicai/app/fragment/Read;)Landroid/widget/LinearLayout;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 147
    iget-object v11, p0, Lcom/shishicai/app/fragment/Read$1;->this$0:Lcom/shishicai/app/fragment/Read;

    invoke-static {v11}, Lcom/shishicai/app/fragment/Read;->access$200(Lcom/shishicai/app/fragment/Read;)Landroid/widget/LinearLayout;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 148
    iget-object v11, p0, Lcom/shishicai/app/fragment/Read$1;->this$0:Lcom/shishicai/app/fragment/Read;

    invoke-static {v11}, Lcom/shishicai/app/fragment/Read;->access$600(Lcom/shishicai/app/fragment/Read;)Lcom/shishicai/app/activity/adapter/NewsAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/shishicai/app/activity/adapter/NewsAdapter;->notifyDataSetChanged()V

    .line 149
    iget-object v11, p0, Lcom/shishicai/app/fragment/Read$1;->this$0:Lcom/shishicai/app/fragment/Read;

    iget-object v12, p0, Lcom/shishicai/app/fragment/Read$1;->this$0:Lcom/shishicai/app/fragment/Read;

    invoke-static {v12}, Lcom/shishicai/app/fragment/Read;->access$300(Lcom/shishicai/app/fragment/Read;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    div-int/lit8 v12, v12, 0xa

    invoke-static {v11, v12}, Lcom/shishicai/app/fragment/Read;->access$402(Lcom/shishicai/app/fragment/Read;I)I

    .line 150
    iget-object v11, p0, Lcom/shishicai/app/fragment/Read$1;->this$0:Lcom/shishicai/app/fragment/Read;

    invoke-static {v11}, Lcom/shishicai/app/fragment/Read;->access$000(Lcom/shishicai/app/fragment/Read;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "total page="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/shishicai/app/fragment/Read$1;->this$0:Lcom/shishicai/app/fragment/Read;

    invoke-static {v13}, Lcom/shishicai/app/fragment/Read;->access$400(Lcom/shishicai/app/fragment/Read;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v11, p0, Lcom/shishicai/app/fragment/Read$1;->this$0:Lcom/shishicai/app/fragment/Read;

    invoke-static {v11}, Lcom/shishicai/app/fragment/Read;->access$700(Lcom/shishicai/app/fragment/Read;)Landroid/app/Activity;

    move-result-object v11

    sget-object v12, Lcom/shishicai/app/Constant;->EXIT_TIME:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/shishicai/app/utils/PreferencesUtils;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v6

    .line 154
    .local v6, "lastExitTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v6, v7, v12, v13}, Lcom/shishicai/app/utils/DateUtil;->getStampDiffDays(JJ)I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_3

    .line 156
    iget-object v11, p0, Lcom/shishicai/app/fragment/Read$1;->this$0:Lcom/shishicai/app/fragment/Read;

    invoke-static {v11}, Lcom/shishicai/app/fragment/Read;->access$000(Lcom/shishicai/app/fragment/Read;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "delete"

    invoke-static {v11, v12}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-class v11, Lcom/shishicai/app/db/dao/NewsInfo;

    const/4 v12, 0x0

    new-array v12, v12, [J

    invoke-static {v11, v12}, Lorg/litepal/crud/DataSupport;->findAll(Ljava/lang/Class;[J)Ljava/util/List;

    move-result-object v5

    .line 158
    .local v5, "list1":Ljava/util/List;, "Ljava/util/List<Lcom/shishicai/app/db/dao/NewsInfo;>;"
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_1

    .line 161
    const-class v11, Lcom/shishicai/app/db/dao/NewsInfo;

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/String;

    invoke-static {v11, v12}, Lorg/litepal/crud/DataSupport;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 163
    :cond_1
    const/4 v3, 0x0

    :goto_2
    const/16 v11, 0xa

    if-ge v3, v11, :cond_3

    .line 164
    iget-object v11, p0, Lcom/shishicai/app/fragment/Read$1;->this$0:Lcom/shishicai/app/fragment/Read;

    invoke-static {v11}, Lcom/shishicai/app/fragment/Read;->access$300(Lcom/shishicai/app/fragment/Read;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shishicai/app/domain/DayNews;

    .line 165
    .local v8, "news":Lcom/shishicai/app/domain/DayNews;
    new-instance v9, Lcom/shishicai/app/db/dao/NewsInfo;

    invoke-direct {v9}, Lcom/shishicai/app/db/dao/NewsInfo;-><init>()V

    .line 166
    .local v9, "newsInfo":Lcom/shishicai/app/db/dao/NewsInfo;
    invoke-virtual {v8}, Lcom/shishicai/app/domain/DayNews;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/shishicai/app/db/dao/NewsInfo;->setTitle(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v8}, Lcom/shishicai/app/domain/DayNews;->getSummary()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/shishicai/app/db/dao/NewsInfo;->setSummary(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v8}, Lcom/shishicai/app/domain/DayNews;->getLogofile()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/shishicai/app/db/dao/NewsInfo;->setLogofile(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v8}, Lcom/shishicai/app/domain/DayNews;->getPublishdate()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/shishicai/app/db/dao/NewsInfo;->setPublishdate(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v8}, Lcom/shishicai/app/domain/DayNews;->getUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/shishicai/app/db/dao/NewsInfo;->setUrl(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v9}, Lcom/shishicai/app/db/dao/NewsInfo;->save()Z

    .line 163
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 175
    .end local v3    # "i":I
    .end local v5    # "list1":Ljava/util/List;, "Ljava/util/List<Lcom/shishicai/app/db/dao/NewsInfo;>;"
    .end local v6    # "lastExitTime":J
    .end local v8    # "news":Lcom/shishicai/app/domain/DayNews;
    .end local v9    # "newsInfo":Lcom/shishicai/app/db/dao/NewsInfo;
    :cond_2
    iget-object v11, p0, Lcom/shishicai/app/fragment/Read$1;->this$0:Lcom/shishicai/app/fragment/Read;

    invoke-static {v11}, Lcom/shishicai/app/fragment/Read;->access$100(Lcom/shishicai/app/fragment/Read;)Landroid/widget/LinearLayout;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 176
    iget-object v11, p0, Lcom/shishicai/app/fragment/Read$1;->this$0:Lcom/shishicai/app/fragment/Read;

    invoke-static {v11}, Lcom/shishicai/app/fragment/Read;->access$200(Lcom/shishicai/app/fragment/Read;)Landroid/widget/LinearLayout;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 177
    iget-object v11, p0, Lcom/shishicai/app/fragment/Read$1;->this$0:Lcom/shishicai/app/fragment/Read;

    invoke-static {v11}, Lcom/shishicai/app/fragment/Read;->access$700(Lcom/shishicai/app/fragment/Read;)Landroid/app/Activity;

    move-result-object v11

    const-string v12, "\u6682\u65e0\u6570\u636e!"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 179
    :cond_3
    return-void
.end method
