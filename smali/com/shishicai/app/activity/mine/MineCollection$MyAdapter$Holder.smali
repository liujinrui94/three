.class Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;
.super Ljava/lang/Object;
.source "MineCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Holder"
.end annotation


# instance fields
.field private delbtn:Landroid/widget/Button;

.field private goods_logo:Landroid/widget/ImageView;

.field private goods_name:Landroid/widget/TextView;

.field private market_price:Landroid/widget/TextView;

.field private promote_price:Landroid/widget/TextView;

.field private shop_price:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter;


# direct methods
.method private constructor <init>(Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter;)V
    .locals 0

    .prologue
    .line 456
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;->this$1:Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter;Lcom/shishicai/app/activity/mine/MineCollection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter;
    .param p2, "x1"    # Lcom/shishicai/app/activity/mine/MineCollection$1;

    .prologue
    .line 456
    invoke-direct {p0, p1}, Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;-><init>(Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;

    .prologue
    .line 456
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;->goods_logo:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 456
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;->goods_logo:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;

    .prologue
    .line 456
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;->goods_name:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 456
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;->goods_name:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;

    .prologue
    .line 456
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;->market_price:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 456
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;->market_price:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;

    .prologue
    .line 456
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;->shop_price:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 456
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;->shop_price:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;

    .prologue
    .line 456
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;->promote_price:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 456
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;->promote_price:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;

    .prologue
    .line 456
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;->delbtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;
    .param p1, "x1"    # Landroid/widget/Button;

    .prologue
    .line 456
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;->delbtn:Landroid/widget/Button;

    return-object p1
.end method
