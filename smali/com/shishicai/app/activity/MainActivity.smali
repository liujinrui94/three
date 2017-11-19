.class public Lcom/shishicai/app/activity/MainActivity;
.super Lcom/shishicai/app/utils/BaseActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/shishicai/app/ui/IDialogClick;


# static fields
.field private static final MY_PERMISSIONS_REQUEST_RW:I = 0x3e8


# instance fields
.field final DATE_DIALOG:I

.field private awardCategory:Lcom/shishicai/app/fragment/AwardCategory;

.field private awardStatisticsCategory:Lcom/shishicai/app/fragment/AwardStatisticsCategory;

.field private awardTrend:Lcom/shishicai/app/fragment/AwardTrend;

.field firstBack:J

.field private fragmentManager:Landroid/support/v4/app/FragmentManager;

.field private leftIv:Landroid/widget/ImageView;

.field private lotteryTool:Lcom/shishicai/app/fragment/LotteryTool;

.field private mDay:I

.field private mMonth:I

.field private mYear:I

.field private mdateListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private prediction:Lcom/shishicai/app/fragment/Prediction;

.field private rgBar:Landroid/widget/RadioGroup;

.field private rightIv:Landroid/widget/ImageView;

.field private titleTimeTv:Landroid/widget/TextView;

.field private titleTv:Landroid/widget/TextView;

.field private transaction:Landroid/support/v4/app/FragmentTransaction;

.field private updateManager:Lcom/shishicai/app/utils/UpdateManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/shishicai/app/utils/BaseActivity;-><init>()V

    .line 64
    const/4 v0, 0x1

    iput v0, p0, Lcom/shishicai/app/activity/MainActivity;->DATE_DIALOG:I

    .line 356
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/shishicai/app/activity/MainActivity;->firstBack:J

    .line 408
    new-instance v0, Lcom/shishicai/app/activity/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/shishicai/app/activity/MainActivity$1;-><init>(Lcom/shishicai/app/activity/MainActivity;)V

    iput-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->mdateListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-void
.end method

.method static synthetic access$000(Lcom/shishicai/app/activity/MainActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/MainActivity;

    .prologue
    .line 53
    iget v0, p0, Lcom/shishicai/app/activity/MainActivity;->mYear:I

    return v0
.end method

.method static synthetic access$002(Lcom/shishicai/app/activity/MainActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/MainActivity;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/shishicai/app/activity/MainActivity;->mYear:I

    return p1
.end method

.method static synthetic access$100(Lcom/shishicai/app/activity/MainActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/MainActivity;

    .prologue
    .line 53
    iget v0, p0, Lcom/shishicai/app/activity/MainActivity;->mMonth:I

    return v0
.end method

.method static synthetic access$102(Lcom/shishicai/app/activity/MainActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/MainActivity;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/shishicai/app/activity/MainActivity;->mMonth:I

    return p1
.end method

.method static synthetic access$200(Lcom/shishicai/app/activity/MainActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/MainActivity;

    .prologue
    .line 53
    iget v0, p0, Lcom/shishicai/app/activity/MainActivity;->mDay:I

    return v0
.end method

.method static synthetic access$202(Lcom/shishicai/app/activity/MainActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/MainActivity;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/shishicai/app/activity/MainActivity;->mDay:I

    return p1
.end method

.method static synthetic access$300(Lcom/shishicai/app/activity/MainActivity;)Lcom/shishicai/app/fragment/AwardCategory;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/MainActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->awardCategory:Lcom/shishicai/app/fragment/AwardCategory;

    return-object v0
.end method

.method private intoDownloadManager()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 481
    const-string v6, "download"

    invoke-virtual {p0, v6}, Lcom/shishicai/app/activity/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 482
    .local v0, "dManager":Landroid/app/DownloadManager;
    iget-object v6, p0, Lcom/shishicai/app/activity/MainActivity;->updateManager:Lcom/shishicai/app/utils/UpdateManager;

    iget-object v6, v6, Lcom/shishicai/app/utils/UpdateManager;->mUpdateAPKItem:Lcom/shishicai/app/utils/UpdateAPKItem;

    invoke-virtual {v6}, Lcom/shishicai/app/utils/UpdateAPKItem;->getDownload_url()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 483
    .local v5, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/app/DownloadManager$Request;

    invoke-direct {v1, v5}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 485
    .local v1, "request":Landroid/app/DownloadManager$Request;
    sget-object v6, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f0a000f

    invoke-virtual {p0, v8}, Lcom/shishicai/app/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".apk"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 486
    const-string v6, "\u65b0\u7248\u672c\u4e0b\u8f7d"

    invoke-virtual {v1, v6}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 488
    invoke-virtual {v1, v9}, Landroid/app/DownloadManager$Request;->setShowRunningNotification(Z)Landroid/app/DownloadManager$Request;

    .line 489
    const-string v6, "application/vnd.android.package-archive"

    invoke-virtual {v1, v6}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 491
    invoke-virtual {v1, v9}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    .line 492
    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v2

    .line 494
    .local v2, "refernece":J
    invoke-virtual {p0}, Lcom/shishicai/app/activity/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/shishicai/app/activity/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 495
    .local v4, "sPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "version"

    invoke-interface {v6, v7, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 496
    return-void
.end method

.method private setTabSelection(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    const v2, 0x7f0900f4

    .line 124
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    .line 127
    packed-switch p1, :pswitch_data_0

    .line 326
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 327
    return-void

    .line 129
    :pswitch_0
    invoke-virtual {p0}, Lcom/shishicai/app/activity/MainActivity;->setRightIvGone()V

    .line 130
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->prediction:Lcom/shishicai/app/fragment/Prediction;

    if-nez v0, :cond_4

    .line 131
    new-instance v0, Lcom/shishicai/app/fragment/Prediction;

    invoke-direct {v0}, Lcom/shishicai/app/fragment/Prediction;-><init>()V

    iput-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->prediction:Lcom/shishicai/app/fragment/Prediction;

    .line 132
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    iget-object v1, p0, Lcom/shishicai/app/activity/MainActivity;->prediction:Lcom/shishicai/app/fragment/Prediction;

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 136
    :goto_1
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->prediction:Lcom/shishicai/app/fragment/Prediction;

    invoke-virtual {v0}, Lcom/shishicai/app/fragment/Prediction;->refresh()V

    .line 138
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->awardCategory:Lcom/shishicai/app/fragment/AwardCategory;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    iget-object v1, p0, Lcom/shishicai/app/activity/MainActivity;->awardCategory:Lcom/shishicai/app/fragment/AwardCategory;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->awardStatisticsCategory:Lcom/shishicai/app/fragment/AwardStatisticsCategory;

    if-eqz v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    iget-object v1, p0, Lcom/shishicai/app/activity/MainActivity;->awardStatisticsCategory:Lcom/shishicai/app/fragment/AwardStatisticsCategory;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->awardTrend:Lcom/shishicai/app/fragment/AwardTrend;

    if-eqz v0, :cond_3

    .line 156
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    iget-object v1, p0, Lcom/shishicai/app/activity/MainActivity;->awardTrend:Lcom/shishicai/app/fragment/AwardTrend;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 159
    :cond_3
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->lotteryTool:Lcom/shishicai/app/fragment/LotteryTool;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    iget-object v1, p0, Lcom/shishicai/app/activity/MainActivity;->lotteryTool:Lcom/shishicai/app/fragment/LotteryTool;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 134
    :cond_4
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    iget-object v1, p0, Lcom/shishicai/app/activity/MainActivity;->prediction:Lcom/shishicai/app/fragment/Prediction;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1

    .line 165
    :pswitch_1
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->awardCategory:Lcom/shishicai/app/fragment/AwardCategory;

    if-nez v0, :cond_9

    .line 166
    new-instance v0, Lcom/shishicai/app/fragment/AwardCategory;

    invoke-direct {v0}, Lcom/shishicai/app/fragment/AwardCategory;-><init>()V

    iput-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->awardCategory:Lcom/shishicai/app/fragment/AwardCategory;

    .line 167
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    iget-object v1, p0, Lcom/shishicai/app/activity/MainActivity;->awardCategory:Lcom/shishicai/app/fragment/AwardCategory;

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 171
    :goto_2
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->awardCategory:Lcom/shishicai/app/fragment/AwardCategory;

    invoke-virtual {v0}, Lcom/shishicai/app/fragment/AwardCategory;->getIndex()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 173
    invoke-virtual {p0}, Lcom/shishicai/app/activity/MainActivity;->setRightIvVisable()V

    .line 176
    :cond_5
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->prediction:Lcom/shishicai/app/fragment/Prediction;

    if-eqz v0, :cond_6

    .line 177
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    iget-object v1, p0, Lcom/shishicai/app/activity/MainActivity;->prediction:Lcom/shishicai/app/fragment/Prediction;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 180
    :cond_6
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->awardStatisticsCategory:Lcom/shishicai/app/fragment/AwardStatisticsCategory;

    if-eqz v0, :cond_7

    .line 181
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    iget-object v1, p0, Lcom/shishicai/app/activity/MainActivity;->awardStatisticsCategory:Lcom/shishicai/app/fragment/AwardStatisticsCategory;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 193
    :cond_7
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->awardTrend:Lcom/shishicai/app/fragment/AwardTrend;

    if-eqz v0, :cond_8

    .line 194
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    iget-object v1, p0, Lcom/shishicai/app/activity/MainActivity;->awardTrend:Lcom/shishicai/app/fragment/AwardTrend;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 197
    :cond_8
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->lotteryTool:Lcom/shishicai/app/fragment/LotteryTool;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    iget-object v1, p0, Lcom/shishicai/app/activity/MainActivity;->lotteryTool:Lcom/shishicai/app/fragment/LotteryTool;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto/16 :goto_0

    .line 169
    :cond_9
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    iget-object v1, p0, Lcom/shishicai/app/activity/MainActivity;->awardCategory:Lcom/shishicai/app/fragment/AwardCategory;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_2

    .line 204
    :pswitch_2
    invoke-virtual {p0}, Lcom/shishicai/app/activity/MainActivity;->setRightIvGone()V

    .line 205
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->awardStatisticsCategory:Lcom/shishicai/app/fragment/AwardStatisticsCategory;

    if-nez v0, :cond_d

    .line 206
    new-instance v0, Lcom/shishicai/app/fragment/AwardStatisticsCategory;

    invoke-direct {v0}, Lcom/shishicai/app/fragment/AwardStatisticsCategory;-><init>()V

    iput-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->awardStatisticsCategory:Lcom/shishicai/app/fragment/AwardStatisticsCategory;

    .line 207
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    iget-object v1, p0, Lcom/shishicai/app/activity/MainActivity;->awardStatisticsCategory:Lcom/shishicai/app/fragment/AwardStatisticsCategory;

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 211
    :goto_3
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->awardStatisticsCategory:Lcom/shishicai/app/fragment/AwardStatisticsCategory;

    invoke-virtual {v0}, Lcom/shishicai/app/fragment/AwardStatisticsCategory;->refresh()V

    .line 213
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->prediction:Lcom/shishicai/app/fragment/Prediction;

    if-eqz v0, :cond_a

    .line 214
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    iget-object v1, p0, Lcom/shishicai/app/activity/MainActivity;->prediction:Lcom/shishicai/app/fragment/Prediction;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 217
    :cond_a
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->awardCategory:Lcom/shishicai/app/fragment/AwardCategory;

    if-eqz v0, :cond_b

    .line 218
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    iget-object v1, p0, Lcom/shishicai/app/activity/MainActivity;->awardCategory:Lcom/shishicai/app/fragment/AwardCategory;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 229
    :cond_b
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->awardTrend:Lcom/shishicai/app/fragment/AwardTrend;

    if-eqz v0, :cond_c

    .line 230
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    iget-object v1, p0, Lcom/shishicai/app/activity/MainActivity;->awardTrend:Lcom/shishicai/app/fragment/AwardTrend;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 233
    :cond_c
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->lotteryTool:Lcom/shishicai/app/fragment/LotteryTool;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    iget-object v1, p0, Lcom/shishicai/app/activity/MainActivity;->lotteryTool:Lcom/shishicai/app/fragment/LotteryTool;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto/16 :goto_0

    .line 209
    :cond_d
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    iget-object v1, p0, Lcom/shishicai/app/activity/MainActivity;->awardStatisticsCategory:Lcom/shishicai/app/fragment/AwardStatisticsCategory;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_3

    .line 240
    :pswitch_3
    invoke-virtual {p0}, Lcom/shishicai/app/activity/MainActivity;->setRightIvGone()V

    .line 241
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->awardTrend:Lcom/shishicai/app/fragment/AwardTrend;

    if-nez v0, :cond_11

    .line 242
    new-instance v0, Lcom/shishicai/app/fragment/AwardTrend;

    invoke-direct {v0}, Lcom/shishicai/app/fragment/AwardTrend;-><init>()V

    iput-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->awardTrend:Lcom/shishicai/app/fragment/AwardTrend;

    .line 243
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    iget-object v1, p0, Lcom/shishicai/app/activity/MainActivity;->awardTrend:Lcom/shishicai/app/fragment/AwardTrend;

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 247
    :goto_4
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->awardTrend:Lcom/shishicai/app/fragment/AwardTrend;

    invoke-virtual {v0}, Lcom/shishicai/app/fragment/AwardTrend;->refresh()V

    .line 249
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->prediction:Lcom/shishicai/app/fragment/Prediction;

    if-eqz v0, :cond_e

    .line 250
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    iget-object v1, p0, Lcom/shishicai/app/activity/MainActivity;->prediction:Lcom/shishicai/app/fragment/Prediction;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 257
    :cond_e
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->lotteryTool:Lcom/shishicai/app/fragment/LotteryTool;

    if-eqz v0, :cond_f

    .line 258
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    iget-object v1, p0, Lcom/shishicai/app/activity/MainActivity;->lotteryTool:Lcom/shishicai/app/fragment/LotteryTool;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 265
    :cond_f
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->awardCategory:Lcom/shishicai/app/fragment/AwardCategory;

    if-eqz v0, :cond_10

    .line 266
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    iget-object v1, p0, Lcom/shishicai/app/activity/MainActivity;->awardCategory:Lcom/shishicai/app/fragment/AwardCategory;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 269
    :cond_10
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->awardStatisticsCategory:Lcom/shishicai/app/fragment/AwardStatisticsCategory;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    iget-object v1, p0, Lcom/shishicai/app/activity/MainActivity;->awardStatisticsCategory:Lcom/shishicai/app/fragment/AwardStatisticsCategory;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto/16 :goto_0

    .line 245
    :cond_11
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    iget-object v1, p0, Lcom/shishicai/app/activity/MainActivity;->awardTrend:Lcom/shishicai/app/fragment/AwardTrend;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_4

    .line 276
    :pswitch_4
    invoke-virtual {p0}, Lcom/shishicai/app/activity/MainActivity;->setRightIvGone()V

    .line 287
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->lotteryTool:Lcom/shishicai/app/fragment/LotteryTool;

    if-nez v0, :cond_15

    .line 288
    new-instance v0, Lcom/shishicai/app/fragment/LotteryTool;

    invoke-direct {v0}, Lcom/shishicai/app/fragment/LotteryTool;-><init>()V

    iput-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->lotteryTool:Lcom/shishicai/app/fragment/LotteryTool;

    .line 289
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    iget-object v1, p0, Lcom/shishicai/app/activity/MainActivity;->lotteryTool:Lcom/shishicai/app/fragment/LotteryTool;

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 302
    :goto_5
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->prediction:Lcom/shishicai/app/fragment/Prediction;

    if-eqz v0, :cond_12

    .line 303
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    iget-object v1, p0, Lcom/shishicai/app/activity/MainActivity;->prediction:Lcom/shishicai/app/fragment/Prediction;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 306
    :cond_12
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->awardTrend:Lcom/shishicai/app/fragment/AwardTrend;

    if-eqz v0, :cond_13

    .line 307
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    iget-object v1, p0, Lcom/shishicai/app/activity/MainActivity;->awardTrend:Lcom/shishicai/app/fragment/AwardTrend;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 314
    :cond_13
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->awardCategory:Lcom/shishicai/app/fragment/AwardCategory;

    if-eqz v0, :cond_14

    .line 315
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    iget-object v1, p0, Lcom/shishicai/app/activity/MainActivity;->awardCategory:Lcom/shishicai/app/fragment/AwardCategory;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 318
    :cond_14
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->awardStatisticsCategory:Lcom/shishicai/app/fragment/AwardStatisticsCategory;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    iget-object v1, p0, Lcom/shishicai/app/activity/MainActivity;->awardStatisticsCategory:Lcom/shishicai/app/fragment/AwardStatisticsCategory;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto/16 :goto_0

    .line 291
    :cond_15
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    iget-object v1, p0, Lcom/shishicai/app/activity/MainActivity;->lotteryTool:Lcom/shishicai/app/fragment/LotteryTool;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_5

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getRgBar()Landroid/widget/RadioGroup;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->rgBar:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method public getTitleTimeTv()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->titleTimeTv:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitleTv()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->titleTv:Landroid/widget/TextView;

    return-object v0
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 333
    packed-switch p2, :pswitch_data_0

    .line 353
    :goto_0
    return-void

    .line 335
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/shishicai/app/activity/MainActivity;->setTabSelection(I)V

    goto :goto_0

    .line 338
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/shishicai/app/activity/MainActivity;->setTabSelection(I)V

    goto :goto_0

    .line 341
    :pswitch_2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/shishicai/app/activity/MainActivity;->setTabSelection(I)V

    goto :goto_0

    .line 344
    :pswitch_3
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/shishicai/app/activity/MainActivity;->setTabSelection(I)V

    goto :goto_0

    .line 347
    :pswitch_4
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/shishicai/app/activity/MainActivity;->setTabSelection(I)V

    goto :goto_0

    .line 333
    nop

    :pswitch_data_0
    .packed-switch 0x7f0900f6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 377
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 386
    :goto_0
    return-void

    .line 380
    :sswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/MainActivity;->showDialog(I)V

    goto :goto_0

    .line 383
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/shishicai/app/activity/ToolActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 377
    :sswitch_data_0
    .sparse-switch
        0x7f09005c -> :sswitch_1
        0x7f0900f3 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 75
    invoke-super {p0, p1}, Lcom/shishicai/app/utils/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const v2, 0x7f030047

    invoke-virtual {p0, v2}, Lcom/shishicai/app/activity/MainActivity;->setContentView(I)V

    .line 77
    const-string v2, "MainActivity"

    iput-object v2, p0, Lcom/shishicai/app/activity/MainActivity;->TAG:Ljava/lang/String;

    .line 78
    const v2, 0x7f09005c

    invoke-virtual {p0, v2}, Lcom/shishicai/app/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const v2, 0x7f0900f1

    invoke-virtual {p0, v2}, Lcom/shishicai/app/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/shishicai/app/activity/MainActivity;->titleTv:Landroid/widget/TextView;

    .line 80
    const v2, 0x7f0900f2

    invoke-virtual {p0, v2}, Lcom/shishicai/app/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/shishicai/app/activity/MainActivity;->titleTimeTv:Landroid/widget/TextView;

    .line 81
    const v2, 0x7f0900f3

    invoke-virtual {p0, v2}, Lcom/shishicai/app/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/shishicai/app/activity/MainActivity;->rightIv:Landroid/widget/ImageView;

    .line 82
    const v2, 0x7f0900f0

    invoke-virtual {p0, v2}, Lcom/shishicai/app/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/shishicai/app/activity/MainActivity;->leftIv:Landroid/widget/ImageView;

    .line 83
    const v2, 0x7f0900f5

    invoke-virtual {p0, v2}, Lcom/shishicai/app/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/shishicai/app/activity/MainActivity;->rgBar:Landroid/widget/RadioGroup;

    .line 84
    iget-object v2, p0, Lcom/shishicai/app/activity/MainActivity;->leftIv:Landroid/widget/ImageView;

    const v3, 0x7f02007d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    invoke-virtual {p0}, Lcom/shishicai/app/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iput-object v2, p0, Lcom/shishicai/app/activity/MainActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 87
    iget-object v2, p0, Lcom/shishicai/app/activity/MainActivity;->rgBar:Landroid/widget/RadioGroup;

    invoke-virtual {v2, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 88
    iget-object v2, p0, Lcom/shishicai/app/activity/MainActivity;->rgBar:Landroid/widget/RadioGroup;

    const v3, 0x7f0900f6

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    .line 90
    invoke-direct {p0, v5}, Lcom/shishicai/app/activity/MainActivity;->setTabSelection(I)V

    .line 91
    sget-object v2, Lcom/shishicai/app/Constant;->DEVICE_ID:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/shishicai/app/utils/PreferencesUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "registrationId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->getRegistrationID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 95
    iget-object v2, p0, Lcom/shishicai/app/activity/MainActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Registration Id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    sget-object v2, Lcom/shishicai/app/Constant;->DEVICE_ID:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/shishicai/app/utils/PreferencesUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 99
    :cond_0
    iget-object v2, p0, Lcom/shishicai/app/activity/MainActivity;->rightIv:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v2, p0, Lcom/shishicai/app/activity/MainActivity;->rightIv:Landroid/widget/ImageView;

    const v3, 0x7f02010e

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    iget-object v2, p0, Lcom/shishicai/app/activity/MainActivity;->rightIv:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    iget-object v2, p0, Lcom/shishicai/app/activity/MainActivity;->titleTimeTv:Landroid/widget/TextView;

    const-string v3, "\u6b63\u5728\u5f00\u5956"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 105
    .local v0, "ca":Ljava/util/Calendar;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/shishicai/app/activity/MainActivity;->mYear:I

    .line 106
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/shishicai/app/activity/MainActivity;->mMonth:I

    .line 107
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/shishicai/app/activity/MainActivity;->mDay:I

    .line 108
    invoke-virtual {p0, v5}, Lcom/shishicai/app/activity/MainActivity;->showUpdate(Z)V

    .line 109
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .param p1, "id"    # I

    .prologue
    .line 393
    packed-switch p1, :pswitch_data_0

    .line 397
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 395
    :pswitch_0
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/shishicai/app/activity/MainActivity;->mdateListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v3, p0, Lcom/shishicai/app/activity/MainActivity;->mYear:I

    iget v4, p0, Lcom/shishicai/app/activity/MainActivity;->mMonth:I

    iget v5, p0, Lcom/shishicai/app/activity/MainActivity;->mDay:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_0

    .line 393
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 517
    invoke-super {p0}, Lcom/shishicai/app/utils/BaseActivity;->onDestroy()V

    .line 518
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->updateManager:Lcom/shishicai/app/utils/UpdateManager;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->updateManager:Lcom/shishicai/app/utils/UpdateManager;

    invoke-virtual {v0}, Lcom/shishicai/app/utils/UpdateManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 521
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 359
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    .line 360
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 361
    .local v0, "secondBack":J
    iget-wide v2, p0, Lcom/shishicai/app/activity/MainActivity;->firstBack:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 362
    const-string v2, "\u518d\u6309\u4e00\u6b21\u9000\u51fa\u7a0b\u5e8f"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 363
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 364
    iput-wide v0, p0, Lcom/shishicai/app/activity/MainActivity;->firstBack:J

    .line 365
    const/4 v2, 0x1

    .line 372
    .end local v0    # "secondBack":J
    :goto_0
    return v2

    .line 367
    .restart local v0    # "secondBack":J
    :cond_0
    sget-object v2, Lcom/shishicai/app/Constant;->EXIT_TIME:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {p0, v2, v4, v5}, Lcom/shishicai/app/utils/PreferencesUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 368
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onKillProcess(Landroid/content/Context;)V

    .line 369
    invoke-static {}, Lcom/shishicai/app/utils/ActManager;->getAppManager()Lcom/shishicai/app/utils/ActManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/shishicai/app/utils/ActManager;->AppExit(Landroid/content/Context;)V

    .line 372
    .end local v0    # "secondBack":J
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/shishicai/app/utils/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public onLeftClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 445
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 464
    :goto_0
    return-void

    .line 447
    :pswitch_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 449
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x3e8

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 456
    :cond_0
    invoke-direct {p0}, Lcom/shishicai/app/activity/MainActivity;->intoDownloadManager()V

    goto :goto_0

    .line 459
    :cond_1
    invoke-direct {p0}, Lcom/shishicai/app/activity/MainActivity;->intoDownloadManager()V

    goto :goto_0

    .line 445
    :pswitch_data_0
    .packed-switch 0x7f0900a4
        :pswitch_0
    .end packed-switch
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v1, 0x0

    .line 500
    invoke-super {p0, p1, p2, p3}, Lcom/shishicai/app/utils/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 501
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 503
    aget v0, p3, v1

    if-nez v0, :cond_1

    .line 505
    invoke-direct {p0}, Lcom/shishicai/app/activity/MainActivity;->intoDownloadManager()V

    .line 512
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    const-string v0, "\u8bfb\u5199\u6743\u9650\u88ab\u7981\u6b62\uff0c\u65e0\u6cd5\u66f4\u65b0\u4e0b\u8f7d"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onRightClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 468
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 471
    :pswitch_0
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->updateManager:Lcom/shishicai/app/utils/UpdateManager;

    iget-object v0, v0, Lcom/shishicai/app/utils/UpdateManager;->mUpdateAPKItem:Lcom/shishicai/app/utils/UpdateAPKItem;

    invoke-virtual {v0}, Lcom/shishicai/app/utils/UpdateAPKItem;->getIs_force()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 472
    sget-object v0, Lcom/shishicai/app/Constant;->EXIT_TIME:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p0, v0, v2, v3}, Lcom/shishicai/app/utils/PreferencesUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 473
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onKillProcess(Landroid/content/Context;)V

    .line 474
    invoke-static {}, Lcom/shishicai/app/utils/ActManager;->getAppManager()Lcom/shishicai/app/utils/ActManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shishicai/app/utils/ActManager;->AppExit(Landroid/content/Context;)V

    goto :goto_0

    .line 468
    nop

    :pswitch_data_0
    .packed-switch 0x7f0900a5
        :pswitch_0
    .end packed-switch
.end method

.method public setRightIvGone()V
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->rightIv:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 406
    return-void
.end method

.method public setRightIvVisable()V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->rightIv:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 402
    return-void
.end method

.method public showUpdate(Z)V
    .locals 1
    .param p1, "isAdpic"    # Z

    .prologue
    .line 114
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->updateManager:Lcom/shishicai/app/utils/UpdateManager;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/shishicai/app/utils/UpdateManager;

    invoke-direct {v0, p0}, Lcom/shishicai/app/utils/UpdateManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->updateManager:Lcom/shishicai/app/utils/UpdateManager;

    .line 116
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->updateManager:Lcom/shishicai/app/utils/UpdateManager;

    invoke-virtual {v0, p0}, Lcom/shishicai/app/utils/UpdateManager;->setOperationListener(Lcom/shishicai/app/ui/IDialogClick;)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/shishicai/app/activity/MainActivity;->updateManager:Lcom/shishicai/app/utils/UpdateManager;

    invoke-virtual {v0, p1}, Lcom/shishicai/app/utils/UpdateManager;->checkUpdate(Z)V

    .line 119
    return-void
.end method
