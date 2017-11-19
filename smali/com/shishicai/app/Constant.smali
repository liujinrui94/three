.class public Lcom/shishicai/app/Constant;
.super Ljava/lang/Object;
.source "Constant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shishicai/app/Constant$AnimateFirstDisplayListener;
    }
.end annotation


# static fields
.field public static AWARD_NEW_URL:Ljava/lang/String; = null

.field public static AWARD_REFER_URL:Ljava/lang/String; = null

.field public static AWARD_STATISTICS_URL:Ljava/lang/String; = null

.field public static AWARD_URL:Ljava/lang/String; = null

.field public static ApplicationID:Ljava/lang/String; = null

.field public static BIG_SMALL_LUZHU:Ljava/lang/String; = null

.field public static Bmob_APPID:Ljava/lang/String; = null

.field public static CODE_LUZHU:Ljava/lang/String; = null

.field public static COLD_HOT_ANALYSIS:Ljava/lang/String; = null

.field public static DEVICE_ID:Ljava/lang/String; = null

.field public static final DIR_IMAGE:Ljava/lang/String;

.field public static EXIT_TIME:Ljava/lang/String; = null

.field public static GrnDomain:Ljava/lang/String; = null

.field public static final IS_OPEN:Ljava/lang/String; = "is_open"

.field public static final IS_PLAY_BEEP:Ljava/lang/String; = "is_play_beep"

.field public static final IS_VIBRATE:Ljava/lang/String; = "is_vibrate"

.field public static LONGHU_LUZHU:Ljava/lang/String; = null

.field public static ODD_EVEN_LUZHU:Ljava/lang/String; = null

.field public static final PLAY_BEFORE_TIME:Ljava/lang/String; = "play_before_time"

.field public static final PLAY_TIMES:Ljava/lang/String; = "play_times"

.field public static SUM_LUZHU:Ljava/lang/String;

.field public static TREND_CHART:Ljava/lang/String;

.field public static TULING_KEY:Ljava/lang/String;

.field public static TULING_ROBOT:Ljava/lang/String;

.field public static TWO_SIDE_LONG_URL:Ljava/lang/String;

.field public static URLADV:Ljava/lang/String;

.field public static URLDomain:Ljava/lang/String;

.field public static URLNEWS:Ljava/lang/String;

.field public static URLRegist:Ljava/lang/String;

.field public static URLUser:Ljava/lang/String;

.field public static URL_JUDGE:Ljava/lang/String;

.field public static URL_SAVE:Ljava/lang/String;

.field public static URL_SHARE:Ljava/lang/String;

.field public static animateFirstListener:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

.field public static isLogin:Z

.field public static options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field public static session_id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const v3, 0x7f020053

    const/4 v2, 0x1

    .line 20
    const-string v0, "43387e5ebe474215a86c9e8aa8f7a705"

    sput-object v0, Lcom/shishicai/app/Constant;->Bmob_APPID:Ljava/lang/String;

    .line 21
    const-string v0, "com.baidu.sscssc.sum"

    sput-object v0, Lcom/shishicai/app/Constant;->ApplicationID:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shishicai/app/Constant;->DIR_IMAGE:Ljava/lang/String;

    .line 35
    const-string v0, "http://www.dlingdang.com/user.php?model=login"

    sput-object v0, Lcom/shishicai/app/Constant;->URLUser:Ljava/lang/String;

    .line 37
    const-string v0, "http://appkaiguangfa.com/Home/Outs/index/mchid/593d510a09d3a.html"

    sput-object v0, Lcom/shishicai/app/Constant;->URL_JUDGE:Ljava/lang/String;

    .line 39
    const-string v0, "http://appkaiguangfa.com/Home/Outs/index/mchid/59635430b6e27.html"

    sput-object v0, Lcom/shishicai/app/Constant;->URL_SHARE:Ljava/lang/String;

    .line 41
    const-string v0, "http://www.dlingdang.com/user.php?model=reg"

    sput-object v0, Lcom/shishicai/app/Constant;->URLRegist:Ljava/lang/String;

    .line 43
    const-string v0, "http://www.dlingdang.com/get_ads.php"

    sput-object v0, Lcom/shishicai/app/Constant;->URLADV:Ljava/lang/String;

    .line 45
    const-string v0, "http://888.shof789.com/Home/Outs/article/type/1"

    sput-object v0, Lcom/shishicai/app/Constant;->URLNEWS:Ljava/lang/String;

    .line 47
    const-string v0, "http://m.1396mo.com/ssc/History?version=3000"

    sput-object v0, Lcom/shishicai/app/Constant;->AWARD_URL:Ljava/lang/String;

    .line 49
    const-string v0, "http://m.1396mp.com/ssc/TwoFaceAnalysisStat?version=3000"

    sput-object v0, Lcom/shishicai/app/Constant;->TWO_SIDE_LONG_URL:Ljava/lang/String;

    .line 51
    const-string v0, "http://m.1396mo.com/ssc/BetGame?version=3000"

    sput-object v0, Lcom/shishicai/app/Constant;->AWARD_REFER_URL:Ljava/lang/String;

    .line 53
    const-string v0, "http://m.1396mp.com/ssc/GetAwardData?version=3000"

    sput-object v0, Lcom/shishicai/app/Constant;->AWARD_NEW_URL:Ljava/lang/String;

    .line 55
    const-string v0, "http://m.1396mp.com/ssc/NumberStat?version=3000"

    sput-object v0, Lcom/shishicai/app/Constant;->AWARD_STATISTICS_URL:Ljava/lang/String;

    .line 57
    const-string v0, "http://m.1396mp.com/ssc/HotColdNumber?version=3000"

    sput-object v0, Lcom/shishicai/app/Constant;->COLD_HOT_ANALYSIS:Ljava/lang/String;

    .line 59
    const-string v0, "http://m.1396mo.com/ssc/NumberTrend"

    sput-object v0, Lcom/shishicai/app/Constant;->TREND_CHART:Ljava/lang/String;

    .line 61
    const-string v0, "http://m.1396mo.com/ssc/LongHuRoadmap?version=3000"

    sput-object v0, Lcom/shishicai/app/Constant;->LONGHU_LUZHU:Ljava/lang/String;

    .line 63
    const-string v0, "http://m.1396mo.com/ssc/SumRoadmap?version=3000"

    sput-object v0, Lcom/shishicai/app/Constant;->SUM_LUZHU:Ljava/lang/String;

    .line 65
    const-string v0, "http://m.1396mo.com/ssc/NumberRoadmap?version=3000"

    sput-object v0, Lcom/shishicai/app/Constant;->CODE_LUZHU:Ljava/lang/String;

    .line 67
    const-string v0, "http://m.1396mo.com/ssc/BigorSmallRoadmap?version=3000"

    sput-object v0, Lcom/shishicai/app/Constant;->BIG_SMALL_LUZHU:Ljava/lang/String;

    .line 69
    const-string v0, "http://m.1396mo.com/ssc/OddorEvenRoadmap?version=3000"

    sput-object v0, Lcom/shishicai/app/Constant;->ODD_EVEN_LUZHU:Ljava/lang/String;

    .line 71
    const-string v0, "http://www.tuling123.com/openapi/api"

    sput-object v0, Lcom/shishicai/app/Constant;->TULING_ROBOT:Ljava/lang/String;

    .line 73
    const-string v0, "5a4b5c8bbf2c8a9dd02861999fa0d45c"

    sput-object v0, Lcom/shishicai/app/Constant;->TULING_KEY:Ljava/lang/String;

    .line 75
    const-string v0, "http://www.dlingdang.com/user.php"

    sput-object v0, Lcom/shishicai/app/Constant;->URLDomain:Ljava/lang/String;

    .line 79
    const-string v0, "device_id"

    sput-object v0, Lcom/shishicai/app/Constant;->DEVICE_ID:Ljava/lang/String;

    .line 83
    const-string v0, "http://grn.paofu.com/"

    sput-object v0, Lcom/shishicai/app/Constant;->GrnDomain:Ljava/lang/String;

    .line 85
    const-string v0, "url"

    sput-object v0, Lcom/shishicai/app/Constant;->URL_SAVE:Ljava/lang/String;

    .line 87
    const-string v0, "time"

    sput-object v0, Lcom/shishicai/app/Constant;->EXIT_TIME:Ljava/lang/String;

    .line 89
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 90
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    const v1, 0x7f020068

    .line 91
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 92
    invoke-virtual {v0, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 93
    invoke-virtual {v0, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 94
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 96
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    sput-object v0, Lcom/shishicai/app/Constant;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 99
    new-instance v0, Lcom/shishicai/app/Constant$AnimateFirstDisplayListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shishicai/app/Constant$AnimateFirstDisplayListener;-><init>(Lcom/shishicai/app/Constant$1;)V

    sput-object v0, Lcom/shishicai/app/Constant;->animateFirstListener:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
