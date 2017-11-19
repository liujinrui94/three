.class Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;
.super Ljava/lang/Object;
.source "MineOrder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Holder"
.end annotation


# instance fields
.field private fee:Landroid/widget/TextView;

.field private goods_attr:Landroid/widget/TextView;

.field private goods_logo:Landroid/widget/ImageView;

.field private goods_name:Landroid/widget/TextView;

.field private goods_num:Landroid/widget/TextView;

.field private goods_price:Landroid/widget/TextView;

.field private goods_sn:Landroid/widget/TextView;

.field private orderSn:Landroid/widget/TextView;

.field private status:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter;


# direct methods
.method private constructor <init>(Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;->this$1:Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter;Lcom/shishicai/app/activity/mine/MineOrder$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter;
    .param p2, "x1"    # Lcom/shishicai/app/activity/mine/MineOrder$1;

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;-><init>(Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;->goods_logo:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;->goods_logo:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;->goods_name:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;->goods_name:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;->goods_price:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;->goods_price:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;->goods_attr:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;->goods_attr:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;->goods_sn:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;->goods_sn:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;->goods_num:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;->goods_num:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;->fee:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;->fee:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;->status:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;->status:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;->orderSn:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;->orderSn:Landroid/widget/TextView;

    return-object p1
.end method
