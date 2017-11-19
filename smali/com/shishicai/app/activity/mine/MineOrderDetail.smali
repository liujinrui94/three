.class public Lcom/shishicai/app/activity/mine/MineOrderDetail;
.super Landroid/app/Activity;
.source "MineOrderDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter;,
        Lcom/shishicai/app/activity/mine/MineOrderDetail$MyClickListener;
    }
.end annotation


# static fields
.field private static final SDK_PAY_FLAG:I = 0x1

.field private static TAG:Ljava/lang/String;


# instance fields
.field private address:Lcom/shishicai/app/domain/Addresses;

.field private bestTime:Landroid/widget/TextView;

.field private btnPayfor:Landroid/widget/Button;

.field private cart:Lcom/shishicai/app/domain/Cart;

.field private carts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/shishicai/app/domain/Cart;",
            ">;"
        }
    .end annotation
.end field

.field private consignee:Landroid/widget/TextView;

.field private email:Landroid/widget/TextView;

.field private format:Ljava/text/DecimalFormat;

.field private goodAmount:Landroid/widget/TextView;

.field private goodSubject:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private imageLoader:Lcom/shishicai/app/image/CustomImageLoader;

.field private linear:Landroid/widget/LinearLayout;

.field private listView:Landroid/widget/ListView;

.field private mobile:Landroid/widget/TextView;

.field private myAdapter:Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter;

.field private myOrder:Lcom/shishicai/app/domain/MyOrder;

.field private oosName:Landroid/widget/TextView;

.field private orderAmount:Landroid/widget/TextView;

.field private orderAmount2:Landroid/widget/TextView;

.field private orderId:Landroid/widget/TextView;

.field private orderStatus:Landroid/widget/TextView;

.field private payName:Landroid/widget/TextView;

.field private payName2:Landroid/widget/TextView;

.field private payStatus:Landroid/widget/TextView;

.field private shipFee:Landroid/widget/TextView;

.field private shipName:Landroid/widget/TextView;

.field private shipStatus:Landroid/widget/TextView;

.field private signBuilding:Landroid/widget/TextView;

.field private tel:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;

.field private titleimgLeft:Landroid/widget/ImageView;

.field private tv_address:Landroid/widget/TextView;

.field private userBonus:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "MineOrderDetail"

    sput-object v0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->goodSubject:Ljava/lang/String;

    .line 64
    new-instance v0, Lcom/shishicai/app/activity/mine/MineOrderDetail$1;

    invoke-direct {v0, p0}, Lcom/shishicai/app/activity/mine/MineOrderDetail$1;-><init>(Lcom/shishicai/app/activity/mine/MineOrderDetail;)V

    iput-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrderDetail;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->linear:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/MyOrder;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrderDetail;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->myOrder:Lcom/shishicai/app/domain/MyOrder;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrderDetail;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->consignee:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/shishicai/app/activity/mine/MineOrderDetail;Lcom/shishicai/app/domain/MyOrder;)Lcom/shishicai/app/domain/MyOrder;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrderDetail;
    .param p1, "x1"    # Lcom/shishicai/app/domain/MyOrder;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->myOrder:Lcom/shishicai/app/domain/MyOrder;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrderDetail;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->email:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrderDetail;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->tv_address:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrderDetail;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->mobile:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrderDetail;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->tel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrderDetail;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->signBuilding:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrderDetail;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->bestTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrderDetail;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->payName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrderDetail;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->orderAmount2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrderDetail;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->userBonus:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrderDetail;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->orderId:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrderDetail;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->shipName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrderDetail;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->payName2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrderDetail;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->oosName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrderDetail;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->myAdapter:Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrderDetail;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/shishicai/app/activity/mine/MineOrderDetail;)V
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrderDetail;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->pay()V

    return-void
.end method

.method static synthetic access$2800(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrderDetail;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrderDetail;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->carts:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrderDetail;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->orderStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/Cart;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrderDetail;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->cart:Lcom/shishicai/app/domain/Cart;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/shishicai/app/activity/mine/MineOrderDetail;Lcom/shishicai/app/domain/Cart;)Lcom/shishicai/app/domain/Cart;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrderDetail;
    .param p1, "x1"    # Lcom/shishicai/app/domain/Cart;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->cart:Lcom/shishicai/app/domain/Cart;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/image/CustomImageLoader;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrderDetail;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->imageLoader:Lcom/shishicai/app/image/CustomImageLoader;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/shishicai/app/activity/mine/MineOrderDetail;Lcom/shishicai/app/image/CustomImageLoader;)Lcom/shishicai/app/image/CustomImageLoader;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrderDetail;
    .param p1, "x1"    # Lcom/shishicai/app/image/CustomImageLoader;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->imageLoader:Lcom/shishicai/app/image/CustomImageLoader;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrderDetail;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->goodSubject:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/shishicai/app/activity/mine/MineOrderDetail;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrderDetail;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->goodSubject:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrderDetail;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->payStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrderDetail;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->shipStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrderDetail;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->goodAmount:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrderDetail;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->shipFee:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrderDetail;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->orderAmount:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/Addresses;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrderDetail;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->address:Lcom/shishicai/app/domain/Addresses;

    return-object v0
.end method

.method static synthetic access$902(Lcom/shishicai/app/activity/mine/MineOrderDetail;Lcom/shishicai/app/domain/Addresses;)Lcom/shishicai/app/domain/Addresses;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrderDetail;
    .param p1, "x1"    # Lcom/shishicai/app/domain/Addresses;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->address:Lcom/shishicai/app/domain/Addresses;

    return-object p1
.end method

.method private getOutTradeNo()Ljava/lang/String;
    .locals 6

    .prologue
    .line 259
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "MMddHHmmss"

    .line 260
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 261
    .local v1, "format":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 262
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, "key":Ljava/lang/String;
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 264
    .local v3, "r":Ljava/util/Random;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 265
    const/4 v4, 0x0

    const/16 v5, 0xf

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 266
    return-object v2
.end method

.method private getSignType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    const-string v0, "sign_type=\"RSA\""

    return-object v0
.end method

.method private pay()V
    .locals 9

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->getOrderInfor()Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "orderInfo":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/shishicai/app/activity/mine/MineOrderDetail;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "orderInfo"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "orderInfo:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-direct {p0, v1}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->sign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 186
    .local v5, "sign":Ljava/lang/String;
    :try_start_0
    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 190
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&sign=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\"&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 191
    invoke-direct {p0}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->getSignType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, "payInfo":Ljava/lang/String;
    new-instance v3, Lcom/shishicai/app/activity/mine/MineOrderDetail$3;

    invoke-direct {v3, p0}, Lcom/shishicai/app/activity/mine/MineOrderDetail$3;-><init>(Lcom/shishicai/app/activity/mine/MineOrderDetail;)V

    .line 206
    .local v3, "payRunnable":Ljava/lang/Runnable;
    new-instance v4, Ljava/lang/Thread;

    invoke-direct {v4, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 207
    .local v4, "payThread":Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 208
    return-void

    .line 187
    .end local v2    # "payInfo":Ljava/lang/String;
    .end local v3    # "payRunnable":Ljava/lang/Runnable;
    .end local v4    # "payThread":Ljava/lang/Thread;
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v6, Lcom/shishicai/app/activity/mine/MineOrderDetail;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sign(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "orderInfo"    # Ljava/lang/String;

    .prologue
    .line 211
    return-object p1
.end method


# virtual methods
.method public gainOrderDetail(Ljava/lang/String;)V
    .locals 3
    .param p1, "orderId"    # Ljava/lang/String;

    .prologue
    .line 371
    invoke-static {p0}, Lcom/shishicai/app/service/HttpMethod;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/shishicai/app/Constant;->URLUser:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?act=order_detail&authkey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/shishicai/app/Constant;->session_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&order_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Lcom/shishicai/app/activity/mine/MineOrderDetail$4;

    invoke-direct {v1, p0, p1}, Lcom/shishicai/app/activity/mine/MineOrderDetail$4;-><init>(Lcom/shishicai/app/activity/mine/MineOrderDetail;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/shishicai/app/service/HttpUser;->get(Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 441
    .end local v0    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 439
    :cond_0
    invoke-static {p0}, Lcom/shishicai/app/service/HttpMethod;->Toast(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public getOrderInfor()Ljava/lang/String;
    .locals 8

    .prologue
    .line 220
    iget-object v5, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->orderAmount2:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, "str":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 222
    .local v4, "substring":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 223
    .local v0, "i":Ljava/lang/Double;
    iget-object v5, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->format:Ljava/text/DecimalFormat;

    invoke-virtual {v5, v0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 225
    .local v3, "submitSum":Ljava/lang/String;
    const-string v1, ""

    .line 230
    .local v1, "orderInfo":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&out_trade_no=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->getOutTradeNo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 232
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&subject=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->goodSubject:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 234
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&body=\"hiyoga\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 236
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&total_fee=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 238
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&notify_url=\"http://hiyoga.xianshan.cn/paysdk/notify_url.php\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 240
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&service=\"mobile.securitypay.pay\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 242
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&payment_type=\"1\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 244
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&_input_charset=\"utf-8\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 250
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&it_b_pay=\"30m\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 252
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&return_url=\"m.alipay.com\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 255
    return-object v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 112
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    const v2, 0x7f030055

    invoke-virtual {p0, v2}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->setContentView(I)V

    .line 114
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "#.00"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->format:Ljava/text/DecimalFormat;

    .line 116
    const v2, 0x7f0900f1

    invoke-virtual {p0, v2}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->title:Landroid/widget/TextView;

    .line 117
    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->title:Landroid/widget/TextView;

    const-string v3, "\u8ba2\u5355\u8be6\u60c5"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    const v2, 0x7f0900f0

    invoke-virtual {p0, v2}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->titleimgLeft:Landroid/widget/ImageView;

    .line 119
    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->titleimgLeft:Landroid/widget/ImageView;

    const v3, 0x7f02010c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 120
    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->titleimgLeft:Landroid/widget/ImageView;

    new-instance v3, Lcom/shishicai/app/activity/mine/MineOrderDetail$MyClickListener;

    invoke-direct {v3, p0, v5}, Lcom/shishicai/app/activity/mine/MineOrderDetail$MyClickListener;-><init>(Lcom/shishicai/app/activity/mine/MineOrderDetail;Lcom/shishicai/app/activity/mine/MineOrderDetail$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    const v2, 0x7f090147

    invoke-virtual {p0, v2}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->orderId:Landroid/widget/TextView;

    .line 123
    const v2, 0x7f090148

    invoke-virtual {p0, v2}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->orderStatus:Landroid/widget/TextView;

    .line 124
    const v2, 0x7f090149

    invoke-virtual {p0, v2}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->payStatus:Landroid/widget/TextView;

    .line 125
    const v2, 0x7f09014a

    invoke-virtual {p0, v2}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->shipStatus:Landroid/widget/TextView;

    .line 126
    const v2, 0x7f09014c

    invoke-virtual {p0, v2}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->goodAmount:Landroid/widget/TextView;

    .line 127
    const v2, 0x7f09014d

    invoke-virtual {p0, v2}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->shipFee:Landroid/widget/TextView;

    .line 128
    const v2, 0x7f09014f

    invoke-virtual {p0, v2}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->orderAmount:Landroid/widget/TextView;

    .line 129
    const v2, 0x7f090150

    invoke-virtual {p0, v2}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->consignee:Landroid/widget/TextView;

    .line 130
    const v2, 0x7f090151

    invoke-virtual {p0, v2}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->email:Landroid/widget/TextView;

    .line 131
    const v2, 0x7f090152

    invoke-virtual {p0, v2}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->tv_address:Landroid/widget/TextView;

    .line 132
    const v2, 0x7f090153

    invoke-virtual {p0, v2}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->mobile:Landroid/widget/TextView;

    .line 133
    const v2, 0x7f090154

    invoke-virtual {p0, v2}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->tel:Landroid/widget/TextView;

    .line 134
    const v2, 0x7f090155

    invoke-virtual {p0, v2}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->signBuilding:Landroid/widget/TextView;

    .line 135
    const v2, 0x7f090156

    invoke-virtual {p0, v2}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->bestTime:Landroid/widget/TextView;

    .line 136
    const v2, 0x7f090157

    invoke-virtual {p0, v2}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->payName:Landroid/widget/TextView;

    .line 137
    const v2, 0x7f090158

    invoke-virtual {p0, v2}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->orderAmount2:Landroid/widget/TextView;

    .line 138
    const v2, 0x7f090159

    invoke-virtual {p0, v2}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->shipName:Landroid/widget/TextView;

    .line 139
    const v2, 0x7f09015a

    invoke-virtual {p0, v2}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->payName2:Landroid/widget/TextView;

    .line 140
    const v2, 0x7f09015b

    invoke-virtual {p0, v2}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->oosName:Landroid/widget/TextView;

    .line 141
    const v2, 0x7f09014e

    invoke-virtual {p0, v2}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->userBonus:Landroid/widget/TextView;

    .line 142
    const v2, 0x7f09015c

    invoke-virtual {p0, v2}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->btnPayfor:Landroid/widget/Button;

    .line 143
    const v2, 0x7f09015d

    invoke-virtual {p0, v2}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->linear:Landroid/widget/LinearLayout;

    .line 144
    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->linear:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 146
    invoke-virtual {p0}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 147
    .local v0, "bl":Landroid/os/Bundle;
    const-string v2, "orderId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "orderId":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->carts:Ljava/util/List;

    .line 149
    invoke-virtual {p0, v1}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->gainOrderDetail(Ljava/lang/String;)V

    .line 150
    const v2, 0x7f09014b

    invoke-virtual {p0, v2}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->listView:Landroid/widget/ListView;

    .line 151
    new-instance v2, Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter;

    invoke-direct {v2, p0, v5}, Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter;-><init>(Lcom/shishicai/app/activity/mine/MineOrderDetail;Lcom/shishicai/app/activity/mine/MineOrderDetail$1;)V

    iput-object v2, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->myAdapter:Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter;

    .line 152
    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->listView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->myAdapter:Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 153
    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->btnPayfor:Landroid/widget/Button;

    new-instance v3, Lcom/shishicai/app/activity/mine/MineOrderDetail$2;

    invoke-direct {v3, p0}, Lcom/shishicai/app/activity/mine/MineOrderDetail$2;-><init>(Lcom/shishicai/app/activity/mine/MineOrderDetail;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 165
    return-void
.end method

.method public setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V
    .locals 8
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    const/4 v7, 0x0

    .line 284
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 285
    .local v2, "listAdapter":Landroid/widget/ListAdapter;
    if-nez v2, :cond_0

    .line 302
    :goto_0
    return-void

    .line 288
    :cond_0
    const/4 v5, 0x0

    .line 289
    .local v5, "totalHeight":I
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .local v1, "len":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 291
    const/4 v6, 0x0

    invoke-interface {v2, v0, v6, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 293
    .local v3, "listItem":Landroid/view/View;
    invoke-virtual {v3, v7, v7}, Landroid/view/View;->measure(II)V

    .line 295
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    .line 289
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 297
    .end local v3    # "listItem":Landroid/view/View;
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 298
    .local v4, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v6

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    mul-int/2addr v6, v7

    add-int/2addr v6, v5

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 301
    invoke-virtual {p1, v4}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
