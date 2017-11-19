.class public Lcom/shishicai/app/fragment/Prediction;
.super Landroid/support/v4/app/Fragment;
.source "Prediction.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shishicai/app/fragment/Prediction$LoadTask;,
        Lcom/shishicai/app/fragment/Prediction$MyCountDownTimer1;,
        Lcom/shishicai/app/fragment/Prediction$MyCountDownTimer;,
        Lcom/shishicai/app/fragment/Prediction$ScrollTask;,
        Lcom/shishicai/app/fragment/Prediction$ScrollToTop;,
        Lcom/shishicai/app/fragment/Prediction$MyHandler;
    }
.end annotation


# static fields
.field private static final BEEP_VOLUME:F = 0.1f

.field private static final VIBRATE_DURATION:J = 0xc8L

.field private static beforeTime:I

.field private static context:Lcom/shishicai/app/activity/MainActivity;

.field private static handler:Landroid/os/Handler;

.field private static mc:Landroid/os/CountDownTimer;

.field private static mc1:Landroid/os/CountDownTimer;

.field private static mediaPlayer:Landroid/media/MediaPlayer;

.field private static playBeep:Z

.field private static playTimes:I

.field private static scrollToTop:Lcom/shishicai/app/fragment/Prediction$ScrollToTop;

.field private static task:Lcom/shishicai/app/fragment/Prediction$LoadTask;

.field private static vibrate:Z


# instance fields
.field private TAG:Ljava/lang/String;

.field private adPic:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private adText:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private adURL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private adapter:Lcom/shishicai/app/activity/adapter/CateAdapter;

.field private appMV:Ljava/lang/String;

.field private final beepListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private categoryGv:Lcom/shishicai/app/ui/NoScrollGridView;

.field private content:Landroid/widget/TextView;

.field private content1:Landroid/widget/TextView;

.field private content2:Landroid/widget/TextView;

.field private content3:Landroid/widget/TextView;

.field private content4:Landroid/widget/TextView;

.field private content5:Landroid/widget/TextView;

.field private content6:Landroid/widget/TextView;

.field private content7:Landroid/widget/TextView;

.field private content8:Landroid/widget/TextView;

.field private content9:Landroid/widget/TextView;

.field private currentItem:I

.field private delay:I

.field private dots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private imgIds:[I

.field private imgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private info:Lcom/shishicai/app/domain/AwardNewInfo;

.field private isAdInited:Z

.field private isRequesting:Z

.field private isRequesting1:Z

.field private layout:Landroid/widget/LinearLayout;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/shishicai/app/domain/CategoryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private lp:Landroid/widget/LinearLayout$LayoutParams;

.field private mScrollView:Landroid/widget/ScrollView;

.field private myPageChangeListener:Lcom/shishicai/app/activity/adapter/MyPageChangeListener;

.field private prediction:Landroid/view/View;

.field private scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private scrollTask:Lcom/shishicai/app/fragment/Prediction$ScrollTask;

.field private settings:Landroid/content/SharedPreferences;

.field private subTitle:[Ljava/lang/String;

.field private time:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;

.field private titles:[Ljava/lang/String;

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 70
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 74
    const-string v0, "Prediction"

    iput-object v0, p0, Lcom/shishicai/app/fragment/Prediction;->TAG:Ljava/lang/String;

    .line 88
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/shishicai/app/fragment/Prediction;->imgIds:[I

    .line 92
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u5f00\u5956\u5386\u53f2"

    aput-object v1, v0, v3

    const-string v1, "\u53f7\u7801\u9884\u6d4b"

    aput-object v1, v0, v5

    const-string v1, "\u6570\u636e\u7edf\u8ba1"

    aput-object v1, v0, v6

    const-string v1, "\u8d70\u52bf\uff08\u6570\u8868\uff09"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\u8def\u73e0"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u51b7\u70ed\u5206\u6790"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u8d70\u52bf\uff08\u56fe\u8868\uff09"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u4e24\u9762\u957f\u9f99"

    aput-object v2, v0, v1

    const-string v1, "\u5386\u53f2"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/shishicai/app/fragment/Prediction;->titles:[Ljava/lang/String;

    .line 96
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u4eca\u65e5\u53ca\u5f80\u6614\u5f00\u5956\u7ed3\u679c"

    aput-object v1, v0, v3

    const-string v1, "\u4eca\u65e5\u9884\u6d4b"

    aput-object v1, v0, v5

    const-string v1, "\u5404\u6392\u540d\u6b32\u6f0f\uff0c\u6b32\u51fa\u6982\u7387"

    aput-object v1, v0, v6

    const-string v1, "\u7eaf\u6570\u5b57\u8d70\u52bf\u56fe"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\u9f99\u864e\u8def\u73e0\u3001\u51a0\u4e9a\u548c\u8def\u73e0\u7b49"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u65f6\u65f6\u5f69\u51b7\u70ed\u5206\u6790"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u56fe\u8868\u8d70\u52bf\u56fe"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u8fd1\u671f\u65f6\u5f69\u65b0\u95fb\u8d44\u8baf"

    aput-object v2, v0, v1

    const-string v1, "\u5355\u53cc\u3001\u5927\u5c0f\u5386\u53f2"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/shishicai/app/fragment/Prediction;->subTitle:[Ljava/lang/String;

    .line 115
    const-string v0, ""

    iput-object v0, p0, Lcom/shishicai/app/fragment/Prediction;->appMV:Ljava/lang/String;

    .line 237
    iput v3, p0, Lcom/shishicai/app/fragment/Prediction;->currentItem:I

    .line 344
    new-instance v0, Lcom/shishicai/app/fragment/Prediction$1;

    invoke-direct {v0, p0}, Lcom/shishicai/app/fragment/Prediction$1;-><init>(Lcom/shishicai/app/fragment/Prediction;)V

    iput-object v0, p0, Lcom/shishicai/app/fragment/Prediction;->beepListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void

    .line 88
    :array_0
    .array-data 4
        0x7f0200c1
        0x7f02003e
        0x7f02004b
        0x7f020076
        0x7f0200a6
        0x7f020040
        0x7f020038
        0x7f020113
    .end array-data
.end method

.method static synthetic access$000(Lcom/shishicai/app/fragment/Prediction;)I
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Prediction;

    .prologue
    .line 70
    iget v0, p0, Lcom/shishicai/app/fragment/Prediction;->currentItem:I

    return v0
.end method

.method static synthetic access$002(Lcom/shishicai/app/fragment/Prediction;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Prediction;
    .param p1, "x1"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/shishicai/app/fragment/Prediction;->currentItem:I

    return p1
.end method

.method static synthetic access$100(Lcom/shishicai/app/fragment/Prediction;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Prediction;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/shishicai/app/fragment/Prediction;->viewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/shishicai/app/fragment/Prediction;)Lcom/shishicai/app/activity/adapter/MyPageChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Prediction;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/shishicai/app/fragment/Prediction;->myPageChangeListener:Lcom/shishicai/app/activity/adapter/MyPageChangeListener;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/shishicai/app/fragment/Prediction;Lcom/shishicai/app/activity/adapter/MyPageChangeListener;)Lcom/shishicai/app/activity/adapter/MyPageChangeListener;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Prediction;
    .param p1, "x1"    # Lcom/shishicai/app/activity/adapter/MyPageChangeListener;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/shishicai/app/fragment/Prediction;->myPageChangeListener:Lcom/shishicai/app/activity/adapter/MyPageChangeListener;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/shishicai/app/fragment/Prediction;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Prediction;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/shishicai/app/fragment/Prediction;->isAdInited:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/shishicai/app/fragment/Prediction;)V
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Prediction;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/shishicai/app/fragment/Prediction;->adPlay()V

    return-void
.end method

.method static synthetic access$1600(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/ScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Prediction;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/shishicai/app/fragment/Prediction;->mScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$1700()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/shishicai/app/fragment/Prediction;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/shishicai/app/fragment/Prediction;)V
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Prediction;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/shishicai/app/fragment/Prediction;->stop()V

    return-void
.end method

.method static synthetic access$200(Lcom/shishicai/app/fragment/Prediction;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Prediction;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/shishicai/app/fragment/Prediction;->adURL:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/shishicai/app/fragment/Prediction;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Prediction;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/shishicai/app/fragment/Prediction;->isRequesting1:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/shishicai/app/fragment/Prediction;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Prediction;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/shishicai/app/fragment/Prediction;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/shishicai/app/fragment/Prediction;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Prediction;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/shishicai/app/fragment/Prediction;->appMV:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/shishicai/app/fragment/Prediction;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Prediction;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/shishicai/app/fragment/Prediction;->isRequesting:Z

    return p1
.end method

.method static synthetic access$2400()Lcom/shishicai/app/fragment/Prediction$LoadTask;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/shishicai/app/fragment/Prediction;->task:Lcom/shishicai/app/fragment/Prediction$LoadTask;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/shishicai/app/fragment/Prediction;)I
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Prediction;

    .prologue
    .line 70
    iget v0, p0, Lcom/shishicai/app/fragment/Prediction;->delay:I

    return v0
.end method

.method static synthetic access$2502(Lcom/shishicai/app/fragment/Prediction;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Prediction;
    .param p1, "x1"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/shishicai/app/fragment/Prediction;->delay:I

    return p1
.end method

.method static synthetic access$2600(Lcom/shishicai/app/fragment/Prediction;)Lcom/shishicai/app/domain/AwardNewInfo;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Prediction;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/shishicai/app/fragment/Prediction;->info:Lcom/shishicai/app/domain/AwardNewInfo;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/shishicai/app/fragment/Prediction;Lcom/shishicai/app/domain/AwardNewInfo;)Lcom/shishicai/app/domain/AwardNewInfo;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Prediction;
    .param p1, "x1"    # Lcom/shishicai/app/domain/AwardNewInfo;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/shishicai/app/fragment/Prediction;->info:Lcom/shishicai/app/domain/AwardNewInfo;

    return-object p1
.end method

.method static synthetic access$2700()Landroid/os/CountDownTimer;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/shishicai/app/fragment/Prediction;->mc:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$2702(Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0
    .param p0, "x0"    # Landroid/os/CountDownTimer;

    .prologue
    .line 70
    sput-object p0, Lcom/shishicai/app/fragment/Prediction;->mc:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Prediction;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/shishicai/app/fragment/Prediction;->time:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Prediction;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/shishicai/app/fragment/Prediction;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/shishicai/app/fragment/Prediction;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Prediction;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/shishicai/app/fragment/Prediction;->adPic:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Prediction;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/shishicai/app/fragment/Prediction;->content:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/shishicai/app/fragment/Prediction;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Prediction;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/shishicai/app/fragment/Prediction;->getBackGround(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Prediction;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/shishicai/app/fragment/Prediction;->content1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Prediction;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/shishicai/app/fragment/Prediction;->content2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Prediction;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/shishicai/app/fragment/Prediction;->content3:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Prediction;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/shishicai/app/fragment/Prediction;->content4:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Prediction;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/shishicai/app/fragment/Prediction;->content5:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Prediction;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/shishicai/app/fragment/Prediction;->content6:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Prediction;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/shishicai/app/fragment/Prediction;->content7:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Prediction;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/shishicai/app/fragment/Prediction;->content8:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400()Lcom/shishicai/app/activity/MainActivity;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/shishicai/app/fragment/Prediction;->context:Lcom/shishicai/app/activity/MainActivity;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Prediction;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/shishicai/app/fragment/Prediction;->content9:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4100()I
    .locals 1

    .prologue
    .line 70
    sget v0, Lcom/shishicai/app/fragment/Prediction;->beforeTime:I

    return v0
.end method

.method static synthetic access$4200()Landroid/os/CountDownTimer;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/shishicai/app/fragment/Prediction;->mc1:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$4202(Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0
    .param p0, "x0"    # Landroid/os/CountDownTimer;

    .prologue
    .line 70
    sput-object p0, Lcom/shishicai/app/fragment/Prediction;->mc1:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static synthetic access$4300()I
    .locals 1

    .prologue
    .line 70
    sget v0, Lcom/shishicai/app/fragment/Prediction;->playTimes:I

    return v0
.end method

.method static synthetic access$500(Lcom/shishicai/app/fragment/Prediction;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Prediction;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/shishicai/app/fragment/Prediction;->imgList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/shishicai/app/fragment/Prediction;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Prediction;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/shishicai/app/fragment/Prediction;->dots:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$602(Lcom/shishicai/app/fragment/Prediction;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Prediction;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/shishicai/app/fragment/Prediction;->dots:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$700(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Prediction;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/shishicai/app/fragment/Prediction;->lp:Landroid/widget/LinearLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic access$702(Lcom/shishicai/app/fragment/Prediction;Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Prediction;
    .param p1, "x1"    # Landroid/widget/LinearLayout$LayoutParams;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/shishicai/app/fragment/Prediction;->lp:Landroid/widget/LinearLayout$LayoutParams;

    return-object p1
.end method

.method static synthetic access$800(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Prediction;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/shishicai/app/fragment/Prediction;->layout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/shishicai/app/fragment/Prediction;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Prediction;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/shishicai/app/fragment/Prediction;->adText:Ljava/util/List;

    return-object v0
.end method

.method private adPlay()V
    .locals 7

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/shishicai/app/fragment/Prediction;->isAdInited:Z

    if-eqz v0, :cond_0

    .line 298
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/shishicai/app/fragment/Prediction;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 300
    new-instance v0, Lcom/shishicai/app/fragment/Prediction$ScrollTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shishicai/app/fragment/Prediction$ScrollTask;-><init>(Lcom/shishicai/app/fragment/Prediction;Lcom/shishicai/app/fragment/Prediction$1;)V

    iput-object v0, p0, Lcom/shishicai/app/fragment/Prediction;->scrollTask:Lcom/shishicai/app/fragment/Prediction$ScrollTask;

    .line 301
    iget-object v0, p0, Lcom/shishicai/app/fragment/Prediction;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/shishicai/app/fragment/Prediction;->scrollTask:Lcom/shishicai/app/fragment/Prediction$ScrollTask;

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 304
    :cond_0
    return-void
.end method

.method private gainHomeAd()V
    .locals 2

    .prologue
    .line 387
    iget-boolean v1, p0, Lcom/shishicai/app/fragment/Prediction;->isRequesting1:Z

    if-nez v1, :cond_0

    .line 389
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/shishicai/app/fragment/Prediction;->isRequesting1:Z

    .line 390
    new-instance v0, Lcn/bmob/v3/BmobQuery;

    invoke-direct {v0}, Lcn/bmob/v3/BmobQuery;-><init>()V

    .line 391
    .local v0, "query":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<Lcom/shishicai/app/domain/Banner;>;"
    new-instance v1, Lcom/shishicai/app/fragment/Prediction$2;

    invoke-direct {v1, p0}, Lcom/shishicai/app/fragment/Prediction$2;-><init>(Lcom/shishicai/app/fragment/Prediction;)V

    invoke-virtual {v0, v1}, Lcn/bmob/v3/BmobQuery;->findObjects(Lcn/bmob/v3/listener/FindListener;)Lrx/Subscription;

    .line 437
    .end local v0    # "query":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<Lcom/shishicai/app/domain/Banner;>;"
    :cond_0
    return-void
.end method

.method private getAppMV()Ljava/lang/String;
    .locals 6

    .prologue
    .line 811
    const-string v1, ""

    .line 813
    .local v1, "appMV":Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/shishicai/app/fragment/Prediction;->context:Lcom/shishicai/app/activity/MainActivity;

    invoke-virtual {v3}, Lcom/shishicai/app/activity/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    sget-object v4, Lcom/shishicai/app/fragment/Prediction;->context:Lcom/shishicai/app/activity/MainActivity;

    invoke-virtual {v4}, Lcom/shishicai/app/activity/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 814
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "UMENG_CHANNEL"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 818
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object v1

    .line 815
    :catch_0
    move-exception v2

    .line 816
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private getBackGround(Ljava/lang/String;)I
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 660
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 661
    .local v0, "num":I
    const/4 v1, 0x0

    .line 662
    .local v1, "res":I
    packed-switch v0, :pswitch_data_0

    .line 698
    const v1, 0x7f020007

    .line 701
    :goto_0
    return v1

    .line 665
    :pswitch_0
    const v1, 0x7f02000e

    .line 666
    goto :goto_0

    .line 668
    :pswitch_1
    const v1, 0x7f02000b

    .line 669
    goto :goto_0

    .line 671
    :pswitch_2
    const v1, 0x7f020010

    .line 672
    goto :goto_0

    .line 674
    :pswitch_3
    const v1, 0x7f02000f

    .line 675
    goto :goto_0

    .line 677
    :pswitch_4
    const v1, 0x7f020009

    .line 678
    goto :goto_0

    .line 680
    :pswitch_5
    const v1, 0x7f020008

    .line 681
    goto :goto_0

    .line 683
    :pswitch_6
    const v1, 0x7f02000d

    .line 684
    goto :goto_0

    .line 686
    :pswitch_7
    const v1, 0x7f02000c

    .line 687
    goto :goto_0

    .line 689
    :pswitch_8
    const v1, 0x7f020007

    .line 690
    goto :goto_0

    .line 692
    :pswitch_9
    const v1, 0x7f02000a

    .line 693
    goto :goto_0

    .line 695
    :pswitch_a
    const v1, 0x7f02000e

    .line 696
    goto :goto_0

    .line 662
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private initBeepSound()V
    .locals 8

    .prologue
    .line 308
    sget-boolean v0, Lcom/shishicai/app/fragment/Prediction;->playBeep:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/shishicai/app/fragment/Prediction;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 312
    sget-object v0, Lcom/shishicai/app/fragment/Prediction;->context:Lcom/shishicai/app/activity/MainActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/shishicai/app/activity/MainActivity;->setVolumeControlStream(I)V

    .line 313
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v0, Lcom/shishicai/app/fragment/Prediction;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 314
    sget-object v0, Lcom/shishicai/app/fragment/Prediction;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 315
    sget-object v0, Lcom/shishicai/app/fragment/Prediction;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/shishicai/app/fragment/Prediction;->beepListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 317
    invoke-virtual {p0}, Lcom/shishicai/app/fragment/Prediction;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f050000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    .line 319
    .local v7, "file":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    sget-object v0, Lcom/shishicai/app/fragment/Prediction;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 320
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    .line 319
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 321
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 322
    sget-object v0, Lcom/shishicai/app/fragment/Prediction;->mediaPlayer:Landroid/media/MediaPlayer;

    const v1, 0x3dcccccd    # 0.1f

    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 323
    sget-object v0, Lcom/shishicai/app/fragment/Prediction;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    .end local v7    # "file":Landroid/content/res/AssetFileDescriptor;
    :cond_0
    :goto_0
    return-void

    .line 324
    .restart local v7    # "file":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v6

    .line 325
    .local v6, "e":Ljava/io/IOException;
    const/4 v0, 0x0

    sput-object v0, Lcom/shishicai/app/fragment/Prediction;->mediaPlayer:Landroid/media/MediaPlayer;

    goto :goto_0
.end method

.method private initData()V
    .locals 3

    .prologue
    .line 363
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->list:Ljava/util/List;

    .line 364
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->imgIds:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 365
    new-instance v1, Lcom/shishicai/app/domain/CategoryInfo;

    invoke-direct {v1}, Lcom/shishicai/app/domain/CategoryInfo;-><init>()V

    .line 366
    .local v1, "info":Lcom/shishicai/app/domain/CategoryInfo;
    iget-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->imgIds:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/shishicai/app/domain/CategoryInfo;->setImgID(I)V

    .line 367
    iget-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->titles:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/shishicai/app/domain/CategoryInfo;->setName(Ljava/lang/String;)V

    .line 368
    iget-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->subTitle:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/shishicai/app/domain/CategoryInfo;->setUrl(Ljava/lang/String;)V

    .line 369
    iget-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 372
    .end local v1    # "info":Lcom/shishicai/app/domain/CategoryInfo;
    :cond_0
    return-void
.end method

.method public static playBeepSoundAndVibrate()V
    .locals 4

    .prologue
    .line 331
    sget-boolean v1, Lcom/shishicai/app/fragment/Prediction;->playBeep:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/shishicai/app/fragment/Prediction;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 332
    sget-object v1, Lcom/shishicai/app/fragment/Prediction;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 334
    :cond_0
    sget-boolean v1, Lcom/shishicai/app/fragment/Prediction;->vibrate:Z

    if-eqz v1, :cond_1

    .line 335
    sget-object v1, Lcom/shishicai/app/fragment/Prediction;->context:Lcom/shishicai/app/activity/MainActivity;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Lcom/shishicai/app/activity/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 336
    .local v0, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 338
    :cond_1
    return-void
.end method

.method private scrollToTop()V
    .locals 4

    .prologue
    .line 224
    sget-object v0, Lcom/shishicai/app/fragment/Prediction;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 225
    sget-object v0, Lcom/shishicai/app/fragment/Prediction;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/shishicai/app/fragment/Prediction;->scrollToTop:Lcom/shishicai/app/fragment/Prediction$ScrollToTop;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 226
    :cond_0
    return-void
.end method

.method private stop()V
    .locals 3

    .prologue
    .line 351
    sget-object v1, Lcom/shishicai/app/fragment/Prediction;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 352
    sget-object v1, Lcom/shishicai/app/fragment/Prediction;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 354
    :try_start_0
    sget-object v1, Lcom/shishicai/app/fragment/Prediction;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 355
    sget-object v1, Lcom/shishicai/app/fragment/Prediction;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public gainNewData()V
    .locals 4

    .prologue
    .line 520
    iget-boolean v1, p0, Lcom/shishicai/app/fragment/Prediction;->isRequesting:Z

    if-nez v1, :cond_0

    .line 522
    sget-object v0, Lcom/shishicai/app/Constant;->AWARD_NEW_URL:Ljava/lang/String;

    .line 523
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/shishicai/app/fragment/Prediction;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/shishicai/app/fragment/Prediction;->isRequesting:Z

    .line 525
    new-instance v1, Lcom/shishicai/app/fragment/Prediction$3;

    invoke-direct {v1, p0}, Lcom/shishicai/app/fragment/Prediction$3;-><init>(Lcom/shishicai/app/fragment/Prediction;)V

    invoke-static {v0, v1}, Lcom/shishicai/app/service/HttpUser;->get(Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 655
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 378
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 379
    check-cast p1, Lcom/shishicai/app/activity/MainActivity;

    .end local p1    # "activity":Landroid/app/Activity;
    sput-object p1, Lcom/shishicai/app/fragment/Prediction;->context:Lcom/shishicai/app/activity/MainActivity;

    .line 380
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 166
    iget-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->prediction:Landroid/view/View;

    if-nez v2, :cond_0

    .line 167
    const v2, 0x7f030061

    invoke-virtual {p1, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->prediction:Landroid/view/View;

    .line 170
    :cond_0
    iget-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->prediction:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 171
    .local v1, "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    .line 173
    iget-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->prediction:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 176
    :cond_1
    iget-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->prediction:Landroid/view/View;

    const v3, 0x7f090188

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->mScrollView:Landroid/widget/ScrollView;

    .line 177
    iget-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->prediction:Landroid/view/View;

    const v3, 0x7f09005a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->time:Landroid/widget/TextView;

    .line 178
    iget-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->prediction:Landroid/view/View;

    const v3, 0x7f090059

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->title:Landroid/widget/TextView;

    .line 179
    iget-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->prediction:Landroid/view/View;

    const v3, 0x7f090055

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->content:Landroid/widget/TextView;

    .line 180
    iget-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->prediction:Landroid/view/View;

    const v3, 0x7f09017e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->content1:Landroid/widget/TextView;

    .line 181
    iget-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->prediction:Landroid/view/View;

    const v3, 0x7f09017f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->content2:Landroid/widget/TextView;

    .line 182
    iget-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->prediction:Landroid/view/View;

    const v3, 0x7f090180

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->content3:Landroid/widget/TextView;

    .line 183
    iget-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->prediction:Landroid/view/View;

    const v3, 0x7f090181

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->content4:Landroid/widget/TextView;

    .line 184
    iget-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->prediction:Landroid/view/View;

    const v3, 0x7f090182

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->content5:Landroid/widget/TextView;

    .line 185
    iget-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->prediction:Landroid/view/View;

    const v3, 0x7f090183

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->content6:Landroid/widget/TextView;

    .line 186
    iget-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->prediction:Landroid/view/View;

    const v3, 0x7f090184

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->content7:Landroid/widget/TextView;

    .line 187
    iget-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->prediction:Landroid/view/View;

    const v3, 0x7f090185

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->content8:Landroid/widget/TextView;

    .line 188
    iget-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->prediction:Landroid/view/View;

    const v3, 0x7f090186

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->content9:Landroid/widget/TextView;

    .line 189
    iget-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->prediction:Landroid/view/View;

    const v3, 0x7f090189

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/shishicai/app/ui/NoScrollGridView;

    iput-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->categoryGv:Lcom/shishicai/app/ui/NoScrollGridView;

    .line 191
    iget-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->categoryGv:Lcom/shishicai/app/ui/NoScrollGridView;

    invoke-virtual {v2, p0}, Lcom/shishicai/app/ui/NoScrollGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 193
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->imgList:Ljava/util/List;

    .line 194
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->adURL:Ljava/util/List;

    .line 195
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->adPic:Ljava/util/List;

    .line 196
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->adText:Ljava/util/List;

    .line 197
    iget-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->prediction:Landroid/view/View;

    const v3, 0x7f090083

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 198
    iget-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->prediction:Landroid/view/View;

    const v3, 0x7f090084

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->layout:Landroid/widget/LinearLayout;

    .line 199
    invoke-direct {p0}, Lcom/shishicai/app/fragment/Prediction;->initData()V

    .line 200
    new-instance v2, Lcom/shishicai/app/activity/adapter/CateAdapter;

    sget-object v3, Lcom/shishicai/app/fragment/Prediction;->context:Lcom/shishicai/app/activity/MainActivity;

    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction;->list:Ljava/util/List;

    invoke-direct {v2, v3, v4}, Lcom/shishicai/app/activity/adapter/CateAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->adapter:Lcom/shishicai/app/activity/adapter/CateAdapter;

    .line 201
    iget-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->categoryGv:Lcom/shishicai/app/ui/NoScrollGridView;

    iget-object v3, p0, Lcom/shishicai/app/fragment/Prediction;->adapter:Lcom/shishicai/app/activity/adapter/CateAdapter;

    invoke-virtual {v2, v3}, Lcom/shishicai/app/ui/NoScrollGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 202
    sget-object v2, Lcom/shishicai/app/fragment/Prediction;->context:Lcom/shishicai/app/activity/MainActivity;

    const-string v3, "AndroidCommon"

    invoke-virtual {v2, v3, v5}, Lcom/shishicai/app/activity/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->settings:Landroid/content/SharedPreferences;

    .line 204
    iget-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->settings:Landroid/content/SharedPreferences;

    const-string v3, "is_play_beep"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/shishicai/app/fragment/Prediction;->playBeep:Z

    .line 205
    sget-object v2, Lcom/shishicai/app/fragment/Prediction;->context:Lcom/shishicai/app/activity/MainActivity;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Lcom/shishicai/app/activity/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 206
    .local v0, "audioService":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    .line 207
    sput-boolean v5, Lcom/shishicai/app/fragment/Prediction;->playBeep:Z

    .line 209
    :cond_2
    iget-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->settings:Landroid/content/SharedPreferences;

    const-string v3, "is_vibrate"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/shishicai/app/fragment/Prediction;->vibrate:Z

    .line 210
    iget-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->settings:Landroid/content/SharedPreferences;

    const-string v3, "play_before_time"

    const/16 v4, 0x1e

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/shishicai/app/fragment/Prediction;->beforeTime:I

    .line 211
    iget-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->settings:Landroid/content/SharedPreferences;

    const-string v3, "play_times"

    const/4 v4, 0x5

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/shishicai/app/fragment/Prediction;->playTimes:I

    .line 212
    new-instance v2, Lcom/shishicai/app/fragment/Prediction$LoadTask;

    invoke-direct {v2, p0, v6}, Lcom/shishicai/app/fragment/Prediction$LoadTask;-><init>(Lcom/shishicai/app/fragment/Prediction;Lcom/shishicai/app/fragment/Prediction$1;)V

    sput-object v2, Lcom/shishicai/app/fragment/Prediction;->task:Lcom/shishicai/app/fragment/Prediction$LoadTask;

    .line 213
    new-instance v2, Lcom/shishicai/app/fragment/Prediction$MyHandler;

    invoke-direct {v2, p0, v6}, Lcom/shishicai/app/fragment/Prediction$MyHandler;-><init>(Lcom/shishicai/app/fragment/Prediction;Lcom/shishicai/app/fragment/Prediction$1;)V

    sput-object v2, Lcom/shishicai/app/fragment/Prediction;->handler:Landroid/os/Handler;

    .line 214
    new-instance v2, Lcom/shishicai/app/fragment/Prediction$ScrollToTop;

    invoke-direct {v2, p0, v6}, Lcom/shishicai/app/fragment/Prediction$ScrollToTop;-><init>(Lcom/shishicai/app/fragment/Prediction;Lcom/shishicai/app/fragment/Prediction$1;)V

    sput-object v2, Lcom/shishicai/app/fragment/Prediction;->scrollToTop:Lcom/shishicai/app/fragment/Prediction$ScrollToTop;

    .line 215
    invoke-direct {p0}, Lcom/shishicai/app/fragment/Prediction;->getAppMV()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->appMV:Ljava/lang/String;

    .line 216
    iget-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appMv="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction;->appMV:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-direct {p0}, Lcom/shishicai/app/fragment/Prediction;->initBeepSound()V

    .line 218
    invoke-direct {p0}, Lcom/shishicai/app/fragment/Prediction;->gainHomeAd()V

    .line 219
    invoke-virtual {p0}, Lcom/shishicai/app/fragment/Prediction;->gainNewData()V

    .line 220
    iget-object v2, p0, Lcom/shishicai/app/fragment/Prediction;->prediction:Landroid/view/View;

    return-object v2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 495
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 496
    sget-object v0, Lcom/shishicai/app/fragment/Prediction;->mc:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 498
    sget-object v0, Lcom/shishicai/app/fragment/Prediction;->mc:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 499
    sput-object v1, Lcom/shishicai/app/fragment/Prediction;->mc:Landroid/os/CountDownTimer;

    .line 501
    :cond_0
    sget-object v0, Lcom/shishicai/app/fragment/Prediction;->mc1:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 503
    sget-object v0, Lcom/shishicai/app/fragment/Prediction;->mc1:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 504
    sput-object v1, Lcom/shishicai/app/fragment/Prediction;->mc1:Landroid/os/CountDownTimer;

    .line 506
    :cond_1
    sget-object v0, Lcom/shishicai/app/fragment/Prediction;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 507
    sget-object v0, Lcom/shishicai/app/fragment/Prediction;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 508
    sget-object v0, Lcom/shishicai/app/fragment/Prediction;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 509
    sput-object v1, Lcom/shishicai/app/fragment/Prediction;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 511
    :cond_2
    sget-object v0, Lcom/shishicai/app/fragment/Prediction;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 512
    sget-object v0, Lcom/shishicai/app/fragment/Prediction;->context:Lcom/shishicai/app/activity/MainActivity;

    invoke-static {v0}, Lcom/shishicai/app/service/HttpUser;->cancel(Landroid/content/Context;)V

    .line 513
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 769
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    .line 770
    .local v0, "intent":Landroid/content/Intent;
    packed-switch p3, :pswitch_data_0

    .line 800
    :goto_0
    if-eqz v0, :cond_0

    .line 802
    sget-object v1, Lcom/shishicai/app/fragment/Prediction;->context:Lcom/shishicai/app/activity/MainActivity;

    invoke-virtual {v1, v0}, Lcom/shishicai/app/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 804
    :cond_0
    return-void

    .line 773
    :pswitch_0
    sget-object v1, Lcom/shishicai/app/fragment/Prediction;->context:Lcom/shishicai/app/activity/MainActivity;

    invoke-virtual {v1}, Lcom/shishicai/app/activity/MainActivity;->getRgBar()Landroid/widget/RadioGroup;

    move-result-object v1

    const v2, 0x7f0900f7

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 776
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    sget-object v1, Lcom/shishicai/app/fragment/Prediction;->context:Lcom/shishicai/app/activity/MainActivity;

    const-class v2, Lcom/shishicai/app/activity/PredictActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 777
    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 779
    :pswitch_2
    sget-object v1, Lcom/shishicai/app/fragment/Prediction;->context:Lcom/shishicai/app/activity/MainActivity;

    invoke-virtual {v1}, Lcom/shishicai/app/activity/MainActivity;->getRgBar()Landroid/widget/RadioGroup;

    move-result-object v1

    const v2, 0x7f0900f8

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 782
    :pswitch_3
    sget-object v1, Lcom/shishicai/app/fragment/Prediction;->context:Lcom/shishicai/app/activity/MainActivity;

    invoke-virtual {v1}, Lcom/shishicai/app/activity/MainActivity;->getRgBar()Landroid/widget/RadioGroup;

    move-result-object v1

    const v2, 0x7f0900f9

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 785
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    sget-object v1, Lcom/shishicai/app/fragment/Prediction;->context:Lcom/shishicai/app/activity/MainActivity;

    const-class v2, Lcom/shishicai/app/activity/LuzhuActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 786
    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 788
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    sget-object v1, Lcom/shishicai/app/fragment/Prediction;->context:Lcom/shishicai/app/activity/MainActivity;

    const-class v2, Lcom/shishicai/app/activity/ColdHotActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 789
    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 791
    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    sget-object v1, Lcom/shishicai/app/fragment/Prediction;->context:Lcom/shishicai/app/activity/MainActivity;

    const-class v2, Lcom/shishicai/app/activity/ChartActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 792
    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 794
    :pswitch_7
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    sget-object v1, Lcom/shishicai/app/fragment/Prediction;->context:Lcom/shishicai/app/activity/MainActivity;

    const-class v2, Lcom/shishicai/app/activity/TwoSideLongActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 795
    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 770
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 254
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 255
    invoke-direct {p0}, Lcom/shishicai/app/fragment/Prediction;->scrollToTop()V

    .line 256
    invoke-direct {p0}, Lcom/shishicai/app/fragment/Prediction;->adPlay()V

    .line 257
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 274
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 275
    iget-object v0, p0, Lcom/shishicai/app/fragment/Prediction;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/shishicai/app/fragment/Prediction;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 280
    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/shishicai/app/fragment/Prediction;->scrollToTop()V

    .line 262
    iget-object v0, p0, Lcom/shishicai/app/fragment/Prediction;->info:Lcom/shishicai/app/domain/AwardNewInfo;

    if-nez v0, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/shishicai/app/fragment/Prediction;->gainNewData()V

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/shishicai/app/fragment/Prediction;->imgList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shishicai/app/fragment/Prediction;->imgList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 268
    invoke-direct {p0}, Lcom/shishicai/app/fragment/Prediction;->gainHomeAd()V

    .line 270
    :cond_1
    return-void
.end method
