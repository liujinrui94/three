.class public final Lcn/jiguang/b/b/e;
.super Ljava/lang/Object;


# static fields
.field private static d:Z

.field private static final j:Ljava/lang/Object;

.field private static volatile l:Lcn/jiguang/b/b/e;

.field private static final z:[Ljava/lang/String;


# instance fields
.field private a:Lcn/jiguang/b/b/g;

.field private b:Lcn/jiguang/b/b/f;

.field private c:Landroid/os/HandlerThread;

.field private e:I

.field private f:I

.field private g:J

.field private h:Landroid/content/Context;

.field private i:Z

.field private k:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field

.field private m:I

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x33

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, ":,l\u0000\r\u0015o5I\u0006\u001e<l\u0006\u0010\u0002"

    const/4 v0, -0x1

    move-object v4, v3

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-gt v5, v7, :cond_2

    :cond_0
    move-object v7, v1

    move v8, v6

    move v11, v5

    move-object v5, v1

    move v1, v11

    :goto_1
    aget-char v10, v5, v6

    rem-int/lit8 v9, v8, 0x5

    packed-switch v9, :pswitch_data_0

    const/16 v9, 0x62

    :goto_2
    xor-int/2addr v9, v10

    int-to-char v9, v9

    aput-char v9, v5, v6

    add-int/lit8 v6, v8, 0x1

    if-nez v1, :cond_1

    move-object v5, v7

    move v8, v6

    move v6, v1

    goto :goto_1

    :cond_1
    move v5, v1

    move-object v1, v7

    :cond_2
    if-gt v5, v6, :cond_0

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    packed-switch v0, :pswitch_data_1

    aput-object v1, v3, v2

    const/4 v2, 0x1

    const-string v1, "1&\u007f\u001c\u0003\u0015(L\n\u00126.v\u0008\u0005\u001e="

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "<&n\u000cB\u000e?8\u001d\r[=}\u001d\u0010\u0002o{\u0006\u000c\u0015*{\u001dL"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "\u0014!\\\u0000\u0011\u0018 v\u0007\u0007\u0018;}\rB\u001a!|I\u0010\u001e;j\u0010B\t*k\u001d\u0003\t;8\n\r\u0015!8DB\u001f*t\u0008\u001bA"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, ":,l\u0000\r\u0015o5I\u0010\u001e;j\u0010!\u0014!v\u000c\u0001\u000fo5I\u0006\u0012<{\u0006\u000c\u0015*{\u001d\u0007\u001f\u001bq\u0004\u0007\u0008u"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "\u0015*l\u001e\r\t$8\u0000\u0011[!w\u001dB\u0018 v\u0007\u0007\u0018;8\u0006\u0010[\'zI\u000b\u0008ow\u0007\u0007[+y\u0010J\u000e<}\u001bB\u0008;w\u0019B\u0008*j\u001f\u000b\u0018*1I"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, ":#j\u000c\u0003\u001f68\u0001\u0003\u0008oU:%$\u001d]:6:\u001dL6!4\u0001V"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, ":,l\u0000\r\u0015o5I\r\u0015\u0007}\u0008\u0010\u000f-}\u0008\u0016(:{\n\u0007\u001e+8DB\u0018 v\u0007\u0007\u0018;q\u0006\u000cA"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, "3*y\u001b\u0016\u0019*y\u001dB\u0008:{\n\u0007\u001e+8\n\r\u0015!}\n\u0016\u0012 vI\u000b\u0008oy\u0005\u0010\u001e.|\u0010B\u0014:lD\u0006\u001a;}\rL[\u0006\u007f\u0007\r\t*8\u0000\u0016U"

    const/4 v0, 0x7

    move-object v3, v4

    goto :goto_0

    :pswitch_7
    aput-object v1, v3, v2

    const/16 v2, 0x9

    const-string v1, "\u0008 {\u0002\u0007\u000foq\u001aB\u0018#w\u001a\u0007\u001fow\u001bB\u000b:k\u0001B\u0012<vN\u0016[#w\u000e\u000b\u0015"

    const/16 v0, 0x8

    move-object v3, v4

    goto :goto_0

    :pswitch_8
    aput-object v1, v3, v2

    const/16 v2, 0xa

    const-string v1, "\u0008*v\rB\u0013-8\u000f\u0003\u0012#}\rX\u0008*v\r&\u001a;yI\u000b\u0008ov\u001c\u000e\u0017"

    const/16 v0, 0x9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9
    aput-object v1, v3, v2

    const/16 v2, 0xb

    const-string v1, "5 8\u0007\u0007\u001e+8\u001d\r[=l\nN[\r}\n\u0003\u000e<}I\u000b\u000fop\u0008\u0014\u001eok\u001c\u0001\u0018*}\rB\t*{\u000c\u000c\u000f#a"

    const/16 v0, 0xa

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a
    aput-object v1, v3, v2

    const/16 v2, 0xc

    const-string v1, "\u0013*y\u001b\u0016\u0019*y\u001dBVor\u001c\u000b\u001fu"

    const/16 v0, 0xb

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b
    aput-object v1, v3, v2

    const/16 v2, 0xd

    const-string v1, "Wo~\u0005\u0003\u001cu"

    const/16 v0, 0xc

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c
    aput-object v1, v3, v2

    const/16 v2, 0xe

    const-string v1, "(*v\rB\u0013*y\u001b\u0016[-}\u0008\u0016"

    const/16 v0, 0xd

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_d
    aput-object v1, v3, v2

    const/16 v2, 0xf

    const-string v1, "/\'}I\u000c\u001e;o\u0006\u0010\u0010&v\u000eB\u0018#q\u000c\u000c\u000foq\u001aB\u0018 v\u0007\u0007\u0018;}\rL[\u0008q\u001f\u0007[:hG"

    const/16 v0, 0xe

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_e
    aput-object v1, v3, v2

    const/16 v2, 0x10

    const-string v1, "\t;{6\u0006\u001e#y\u0010"

    const/16 v0, 0xf

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_f
    aput-object v1, v3, v2

    const/16 v2, 0x11

    const-string v1, "\u000f,hI\n\u001a<8\n\u000e\u0014<}I\u0000\u0002oy\n\u0016\u00129}"

    const/16 v0, 0x10

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_10
    aput-object v1, v3, v2

    const/16 v2, 0x12

    const-string v1, "\t;{"

    const/16 v0, 0x11

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_11
    aput-object v1, v3, v2

    const/16 v2, 0x13

    const-string v1, ":,l\u0000\r\u0015o5I\r\u0015\u0003w\u000e\u0005\u001e+Q\u0007BVo{\u0006\u000c\u0015*{\u001d\u000b\u0014!\""

    const/16 v0, 0x12

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_12
    aput-object v1, v3, v2

    const/16 v2, 0x14

    const-string v1, "\u0008;w\u0019B\u0008*j\u001f\u000b\u0018*"

    const/16 v0, 0x13

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_13
    aput-object v1, v3, v2

    const/16 v2, 0x15

    const-string v1, "3*y\u001b\u0016\u0019*y\u001dB\u001a,sI\u0011\u000e,{\u000c\u0007\u001fn8"

    const/16 v0, 0x14

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_14
    aput-object v1, v3, v2

    const/16 v2, 0x16

    const-string v1, ".!s\u0007\r\u000c!8(\u0001\u0010oj\u000c\u0013\u000e*k\u001dBVo{\u0004\u0006A"

    const/16 v0, 0x15

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_15
    aput-object v1, v3, v2

    const/16 v2, 0x17

    const-string v1, "/.\u007fI\u0003\u0017&y\u001aB\u001a,sI\u0011\u000e,{\u000c\u0007\u001fn8"

    const/16 v0, 0x16

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_16
    aput-object v1, v3, v2

    const/16 v2, 0x18

    const-string v1, "Woj\u000c\u0011\u000b\u000cw\r\u0007A"

    const/16 v0, 0x17

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_17
    aput-object v1, v3, v2

    const/16 v2, 0x19

    const-string v1, "\u0014!T\u0006\u0005\u0012!^\u0008\u000b\u0017*|IO[,w\u0007\u000c\u001e,l\u0000\r\u0015u"

    const/16 v0, 0x18

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_18
    aput-object v1, v3, v2

    const/16 v2, 0x1a

    const-string v1, ":,l\u0000\r\u0015u8\u0001\u0003\u0015+t\u000c1\u000f h9\u0017\u0008\'8DB\u0018.vN\u0016[<l\u0006\u0012[;{\u0019"

    const/16 v0, 0x19

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_19
    aput-object v1, v3, v2

    const/16 v2, 0x1b

    const-string v1, ":,l\u0000\r\u0015u8\u0001\u0003\u0015+t\u000c1\u000f h9\u0017\u0008\'8DB\u001a?h\"\u0007\u0002u"

    const/16 v0, 0x1a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1a
    aput-object v1, v3, v2

    const/16 v2, 0x1c

    const-string v1, "\u0013.v\r\u000e\u001e\u001cl\u0006\u0012+:k\u0001B\u001a?hEB\u0008*v\r\u0007\to}\u001b\u0010\u0014=\"IG\u0008"

    const/16 v0, 0x1b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1b
    aput-object v1, v3, v2

    const/16 v2, 0x1d

    const-string v1, ":,l\u0000\r\u0015o5I\r\u0015\u0007}\u0008\u0010\u000f-}\u0008\u0016/&u\u000c\r\u000e;8DB\u000f&u\u000c\r\u000e;L\u0000\u000f\u001e<\""

    const/16 v0, 0x1c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1c
    aput-object v1, v3, v2

    const/16 v2, 0x1e

    const-string v1, ":#j\u000c\u0003\u001f68\u0005\r\u001c(}\rB\u0012!6I%\u00129}I\u0017\u000bol\u0006B\t*l\u001b\u001bU"

    const/16 v0, 0x1d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1d
    aput-object v1, v3, v2

    const/16 v2, 0x1f

    const-string v1, "\u0014!P\u000c\u0003\t;z\u000c\u0003\u000f\u001bq\u0004\u0007\u0014:lEB\u001f 8\u0007\r\u000fov\u000c\u0007\u001fop\u000c\u0003\t;z\u000c\u0003\u000fn"

    const/16 v0, 0x1e

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1e
    aput-object v1, v3, v2

    const/16 v2, 0x20

    const-string v1, "2<8\n\r\u0015!}\n\u0016\u0012!\u007fI\u000c\u001486I%\u00129}I\u0017\u000bol\u0006B\t*l\u001b\u001bU"

    const/16 v0, 0x1f

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1f
    aput-object v1, v3, v2

    const/16 v2, 0x21

    const-string v1, "Fr%T_Fr%T_Fr%T_Fr%T_Fr%T_Fr%T_Fr%T_Fr%T_Fr%T_Fr%T_Fr%T_Fr%T_"

    const/16 v0, 0x20

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_20
    aput-object v1, v3, v2

    const/16 v2, 0x22

    const-string v1, ":,l\u0000\r\u0015o5I\u0010\u001e<l\u0008\u0010\u000f\u001bp\u000c\u000c3*y\u001b\u0016\u0019*y\u001d"

    const/16 v0, 0x21

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_21
    aput-object v1, v3, v2

    const/16 v2, 0x23

    const-string v1, "2<8\n\r\u0015!}\n\u0016\u0012!\u007fI\u000c\u001486I%\u00129}I\u0017\u000bol\u0006B\t*k\u001d\u0003\t;6"

    const/16 v0, 0x22

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_22
    aput-object v1, v3, v2

    const/16 v2, 0x24

    const-string v1, ":#j\u000c\u0003\u001f68\u0005\r\u001c(}\rB\u0012!6I%\u00129}I\u0017\u000bol\u0006B\t*k\u001d\u0003\t;6"

    const/16 v0, 0x23

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_23
    aput-object v1, v3, v2

    const/16 v2, 0x25

    const-string v1, ":,l\u0000\r\u0015o5I\r\u0015\u000bq\u001a\u0001\u0014!v\u000c\u0001\u000f*|IO[,w\u0007\u000c\u001e,l\u0000\r\u0015u"

    const/16 v0, 0x24

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_24
    aput-object v1, v3, v2

    const/16 v2, 0x26

    const-string v1, "\u000b:k\u0001B\u001a#j\u000c\u0003\u001f68\u001a\u0016\u0014?h\u000c\u0006Zn9"

    const/16 v0, 0x25

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_25
    aput-object v1, v3, v2

    const/16 v2, 0x27

    const-string v1, "3.v\r\u000e\u001eo{\u0006\u000c\u0015*{\u001d\u0007\u001fok\u001d\u0003\u000f*6"

    const/16 v0, 0x26

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_26
    aput-object v1, v3, v2

    const/16 v2, 0x28

    const-string v1, "\u0018 v\u0007\u0007\u0018;q\u0006\u000cV<l\u0008\u0016\u001e"

    const/16 v0, 0x27

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_27
    aput-object v1, v3, v2

    const/16 v2, 0x29

    const-string v1, "3.v\r\u000e\u001eo|\u0000\u0011\u0018 v\u0007\u0007\u0018;}\rB\u0008;y\u001d\u0007U"

    const/16 v0, 0x28

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_28
    aput-object v1, v3, v2

    const/16 v2, 0x2a

    const-string v1, ".!}\u0011\u0012\u001e,l\u000c\u0006[b8\n\r\u0015!}\n\u0016\u0012 v:\u0016\u001a;}I\u0001\u001a!v\u0006\u0016[-}I\u000c\u000e#t"

    const/16 v0, 0x29

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_29
    aput-object v1, v3, v2

    const/16 v2, 0x2b

    const-string v1, "4;p\u000c\u0010[,w\u0007\u000c\u001e,l\u0000\r\u0015ok\u001d\u0003\u000f*"

    const/16 v0, 0x2a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2a
    aput-object v1, v3, v2

    const/16 v2, 0x2c

    const-string v1, "\u0012!q\u001dB\u0018 v\u001d\u0007\u0003;8\u0000\u0011[!m\u0005\u000e"

    const/16 v0, 0x2b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2b
    aput-object v1, v3, v2

    const/16 v2, 0x2d

    const-string v1, "1\u000cw\u001b\u0007"

    const/16 v0, 0x2c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2c
    aput-object v1, v3, v2

    const/16 v2, 0x2e

    const-string v1, "\u0012!q\u001dB\u000f,hI\u000f\u001a!y\u000e\u0007\ta6G"

    const/16 v0, 0x2d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2d
    aput-object v1, v3, v2

    const/16 v2, 0x2f

    const-string v1, ":,l\u0000\r\u0015o5I\u0010\u001e<l\u0008\u0010\u000f\u0001}\u001d\u0015\u0014=s\u0000\u000c\u001c\u000ct\u0000\u0007\u0015;4I\u0012\u0012+\""

    const/16 v0, 0x2e

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2e
    aput-object v1, v3, v2

    const/16 v2, 0x30

    const-string v1, "\u0012<J\u001c\u000c\u0015&v\u000eX"

    const/16 v0, 0x2f

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2f
    aput-object v1, v3, v2

    const/16 v2, 0x31

    const-string v1, "5 8\u0007\u0007\u000f8w\u001b\t[,w\u0007\u000c\u001e,l\u0000\r\u0015a8.\u000b\r*8\u001c\u0012[;wI\u0011\u000f.j\u001dB\u0018 v\u0007\u0007\u0018;q\u0006\u000c[;p\u001b\u0007\u001a+6"

    const/16 v0, 0x30

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_30
    aput-object v1, v3, v2

    const/16 v2, 0x32

    const-string v1, "\u0017 \u007f\u0000\u000c[)y\u0000\u000e\u001e+\"XRIc\u007f\u0000\u0014\u001eom\u0019B\u0008;y\u001b\u0016[,w\u0007\u000c\u001e,l\u0000\r\u0015ol\u0001\u0010\u001e.|G\u0010\u001e<}\u001dB\u001d=w\u0004B\u0015*`\u001dB\u001a?hI\u0011\u000f.j\u001d"

    const/16 v0, 0x31

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_31
    aput-object v1, v3, v2

    sput-object v4, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcn/jiguang/b/b/e;->d:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/jiguang/b/b/e;->j:Ljava/lang/Object;

    return-void

    :pswitch_32
    const/16 v9, 0x7b

    goto/16 :goto_2

    :pswitch_33
    const/16 v9, 0x4f

    goto/16 :goto_2

    :pswitch_34
    const/16 v9, 0x18

    goto/16 :goto_2

    :pswitch_35
    const/16 v9, 0x69

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
    .end packed-switch

    :pswitch_data_1
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
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
    .end packed-switch
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcn/jiguang/b/b/e;->e:I

    iput v0, p0, Lcn/jiguang/b/b/e;->f:I

    iput-boolean v0, p0, Lcn/jiguang/b/b/e;->i:Z

    return-void
.end method

.method static synthetic a(Lcn/jiguang/b/b/e;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/jiguang/b/b/e;->h:Landroid/content/Context;

    return-object v0
.end method

.method public static a()Lcn/jiguang/b/b/e;
    .locals 2

    sget-object v0, Lcn/jiguang/b/b/e;->l:Lcn/jiguang/b/b/e;

    if-nez v0, :cond_1

    sget-object v1, Lcn/jiguang/b/b/e;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/jiguang/b/b/e;->l:Lcn/jiguang/b/b/e;

    if-nez v0, :cond_0

    new-instance v0, Lcn/jiguang/b/b/e;

    invoke-direct {v0}, Lcn/jiguang/b/b/e;-><init>()V

    sput-object v0, Lcn/jiguang/b/b/e;->l:Lcn/jiguang/b/b/e;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcn/jiguang/b/b/e;->l:Lcn/jiguang/b/b/e;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcn/jiguang/b/b/e;J)V
    .locals 7

    const/4 v5, 0x0

    const/4 v4, 0x1

    sget-object v0, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    aget-object v0, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/16 v3, 0x13

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v4, Lcn/jiguang/b/b/e;->d:Z

    iput v5, p0, Lcn/jiguang/b/b/e;->e:I

    iput v5, p0, Lcn/jiguang/b/b/e;->f:I

    iget-object v0, p0, Lcn/jiguang/b/b/e;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/jiguang/b/b/a;->a:Lcn/jiguang/b/b/a;

    invoke-static {v0, v1}, Lcn/jiguang/b/d/c;->a(Landroid/content/Context;Lcn/jiguang/b/b/a;)V

    iget-object v0, p0, Lcn/jiguang/b/b/e;->b:Lcn/jiguang/b/b/f;

    const/16 v1, 0x3ed

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Lcn/jiguang/b/b/f;->sendEmptyMessageDelayed(IJ)Z

    invoke-static {}, Lcn/jiguang/b/b/h;->a()Lcn/jiguang/b/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jiguang/b/b/h;->c()V

    iget-object v0, p0, Lcn/jiguang/b/b/e;->b:Lcn/jiguang/b/b/f;

    const/16 v1, 0x408

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcn/jiguang/b/b/f;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcn/jiguang/b/b/e;->h:Landroid/content/Context;

    invoke-static {v0}, Lcn/jiguang/a/c/c;->d(Landroid/content/Context;)V

    invoke-static {}, Lcn/jiguang/b/d/b;->a()Lcn/jiguang/b/d/b;

    iget-object v0, p0, Lcn/jiguang/b/b/e;->h:Landroid/content/Context;

    invoke-static {v0, p1, p2, v4}, Lcn/jiguang/b/d/b;->a(Landroid/content/Context;JI)V

    return-void
.end method

.method static synthetic a(Lcn/jiguang/b/b/e;JI)V
    .locals 5

    sget-object v0, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/16 v3, 0x19

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/16 v3, 0x18

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcn/jiguang/b/b/e;Z)V
    .locals 12

    const/16 v11, 0x3fe

    const/4 v10, 0x0

    const/4 v9, 0x1

    if-nez p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/jiguang/b/b/e;->g:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    sget-object v0, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    aget-object v0, v0, v9

    sget-object v1, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    aget-object v0, v0, v9

    sget-object v1, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/16 v2, 0xe

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/b/b/e;->b:Lcn/jiguang/b/b/f;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Lcn/jiguang/b/b/f;->removeMessages(I)V

    sget-object v0, Lcn/jiguang/b/b/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcn/jiguang/b/b/e;->d:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcn/jiguang/b/a/a;->j()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {}, Lcn/jiguang/b/a/a;->F()I

    move-result v1

    invoke-static {}, Lcn/jiguang/b/a/a;->s()J

    move-result-wide v2

    invoke-static {}, Lcn/jiguang/b/d/h;->a()Lcn/jiguang/b/d/h;

    move-result-object v4

    invoke-virtual {v4}, Lcn/jiguang/b/d/h;->c()S

    move-result v4

    sget-object v5, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    aget-object v5, v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/16 v8, 0xc

    aget-object v7, v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/16 v8, 0xd

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/jiguang/c/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    new-instance v0, Lcn/jiguang/api/utils/OutputDataUtil;

    const/16 v5, 0x5000

    invoke-direct {v0, v5}, Lcn/jiguang/api/utils/OutputDataUtil;-><init>(I)V

    invoke-virtual {v0, v10}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU16(I)V

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU8(I)V

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU8(I)V

    invoke-virtual {v0, v6, v7}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU64(J)V

    int-to-long v6, v1

    invoke-virtual {v0, v6, v7}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU32(J)V

    invoke-virtual {v0, v2, v3}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU64(J)V

    invoke-virtual {v0, v4}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU8(I)V

    invoke-virtual {v0}, Lcn/jiguang/api/utils/OutputDataUtil;->current()I

    move-result v1

    invoke-virtual {v0, v1, v10}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU16At(II)V

    invoke-virtual {v0}, Lcn/jiguang/api/utils/OutputDataUtil;->toByteArray()[B

    move-result-object v0

    invoke-static {v0, v9}, Lcn/jiguang/b/e/a/a/b;->a([BI)[B

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Lcn/jiguang/b/b/g;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const/4 v1, 0x3

    invoke-static {v2, v3, v0, v1}, Lcn/jiguang/service/Protocol;->SendData(J[BI)I

    :goto_1
    iget-object v0, p0, Lcn/jiguang/b/b/e;->b:Lcn/jiguang/b/b/f;

    invoke-virtual {v0, v11}, Lcn/jiguang/b/b/f;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/jiguang/b/b/e;->b:Lcn/jiguang/b/b/f;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v11, v2, v3}, Lcn/jiguang/b/b/f;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_2
    sget-object v0, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    aget-object v0, v0, v9

    sget-object v1, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sget-object v0, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    aget-object v0, v0, v9

    sget-object v1, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcn/jiguang/b/b/h;->a()Lcn/jiguang/b/b/h;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcn/jiguang/b/b/h;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static a([BLjava/lang/String;I)V
    .locals 1

    invoke-static {}, Lcn/jiguang/b/b/h;->a()Lcn/jiguang/b/b/h;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcn/jiguang/b/b/h;->a([BLjava/lang/String;I)V

    return-void
.end method

.method static synthetic b(Lcn/jiguang/b/b/e;)Lcn/jiguang/b/b/g;
    .locals 1

    iget-object v0, p0, Lcn/jiguang/b/b/e;->a:Lcn/jiguang/b/b/g;

    return-object v0
.end method

.method static synthetic b(Lcn/jiguang/b/b/e;J)V
    .locals 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    aget-object v0, v0, v5

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/16 v3, 0x25

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v4, Lcn/jiguang/b/b/e;->d:Z

    invoke-static {}, Lcn/jiguang/b/b/h;->a()Lcn/jiguang/b/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jiguang/b/b/h;->b()V

    sget-object v0, Lcn/jiguang/b/b/g;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/jiguang/b/b/e;->h:Landroid/content/Context;

    invoke-static {v0}, Lcn/jiguang/b/a/a;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    aget-object v0, v0, v5

    sget-object v1, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/16 v2, 0x26

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/jiguang/b/d/b;->a()Lcn/jiguang/b/d/b;

    iget-object v0, p0, Lcn/jiguang/b/b/e;->h:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-static {v0, p1, p2, v1}, Lcn/jiguang/b/d/b;->a(Landroid/content/Context;JI)V

    iput v4, p0, Lcn/jiguang/b/b/e;->f:I

    iget-object v0, p0, Lcn/jiguang/b/b/e;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/jiguang/b/b/a;->b:Lcn/jiguang/b/b/a;

    invoke-static {v0, v1}, Lcn/jiguang/b/d/c;->a(Landroid/content/Context;Lcn/jiguang/b/b/a;)V

    iget-object v0, p0, Lcn/jiguang/b/b/e;->a:Lcn/jiguang/b/b/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jiguang/b/b/e;->a:Lcn/jiguang/b/b/g;

    invoke-virtual {v0}, Lcn/jiguang/b/b/g;->c()V

    :cond_1
    iget-object v0, p0, Lcn/jiguang/b/b/e;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/e/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcn/jiguang/b/b/e;->k()V

    :cond_2
    iget v0, p0, Lcn/jiguang/b/b/e;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/jiguang/b/b/e;->e:I

    goto :goto_0
.end method

.method static synthetic c(Lcn/jiguang/b/b/e;)V
    .locals 6

    const/16 v5, 0x3ed

    const/4 v4, 0x1

    invoke-static {}, Lcn/jiguang/b/d/h;->a()Lcn/jiguang/b/d/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jiguang/b/d/h;->g()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    aget-object v0, v0, v4

    sget-object v1, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/16 v2, 0x1f

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcn/jiguang/b/b/e;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/jiguang/b/b/e;->f:I

    sget-object v0, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    aget-object v0, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/16 v3, 0x1d

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcn/jiguang/b/b/e;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    aget-object v0, v0, v4

    sget-object v1, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/16 v2, 0x21

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jiguang/b/b/e;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    aget-object v0, v0, v4

    sget-object v1, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/16 v2, 0x20

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/b/b/e;->b:Lcn/jiguang/b/b/f;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v5, v2, v3}, Lcn/jiguang/b/b/f;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcn/jiguang/b/b/e;->d:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcn/jiguang/b/b/e;->i()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    aget-object v0, v0, v4

    sget-object v1, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/16 v2, 0x1e

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/b/b/e;->b:Lcn/jiguang/b/b/f;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v5, v2, v3}, Lcn/jiguang/b/b/f;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/jiguang/b/b/e;->a:Lcn/jiguang/b/b/g;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/jiguang/b/b/e;->a:Lcn/jiguang/b/b/g;

    invoke-virtual {v0}, Lcn/jiguang/b/b/g;->a()V

    :cond_3
    invoke-direct {p0}, Lcn/jiguang/b/b/e;->k()V

    goto :goto_0
.end method

.method static synthetic c(Lcn/jiguang/b/b/e;J)V
    .locals 7

    const/16 v5, 0x3fe

    const/4 v4, 0x1

    sget-object v0, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    aget-object v0, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/jiguang/b/b/g;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    aget-object v0, v0, v4

    sget-object v1, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/jiguang/b/b/e;->b:Lcn/jiguang/b/b/f;

    invoke-virtual {v0, v5}, Lcn/jiguang/b/b/f;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jiguang/b/b/e;->b:Lcn/jiguang/b/b/f;

    invoke-virtual {v0, v5}, Lcn/jiguang/b/b/f;->removeMessages(I)V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jiguang/b/b/e;->g:J

    const/4 v0, 0x0

    iput v0, p0, Lcn/jiguang/b/b/e;->f:I

    invoke-static {}, Lcn/jiguang/b/d/b;->a()Lcn/jiguang/b/d/b;

    iget-object v0, p0, Lcn/jiguang/b/b/e;->h:Landroid/content/Context;

    const/16 v1, 0x13

    invoke-static {v0, p1, p2, v1}, Lcn/jiguang/b/d/b;->a(Landroid/content/Context;JI)V

    goto :goto_0
.end method

.method public static d()Z
    .locals 1

    sget-boolean v0, Lcn/jiguang/b/b/e;->d:Z

    return v0
.end method

.method public static h()J
    .locals 2

    sget-object v0, Lcn/jiguang/b/b/g;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method private i()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcn/jiguang/b/b/e;->f:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static j()Z
    .locals 4

    sget-object v0, Lcn/jiguang/b/b/g;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    sget-boolean v0, Lcn/jiguang/b/b/e;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()V
    .locals 9

    const/16 v8, 0x3f3

    const/4 v7, 0x5

    const/4 v6, 0x1

    sget-object v0, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    aget-object v0, v0, v6

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcn/jiguang/b/b/e;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/b/b/e;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/e/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcn/jiguang/b/d/c;->a()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcn/jiguang/b/b/e;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/e/a;->e(Landroid/content/Context;)I

    move-result v1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    iget v0, p0, Lcn/jiguang/b/b/e;->e:I

    int-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    mul-double/2addr v2, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    invoke-static {}, Lcn/jiguang/b/a/a;->k()I

    move-result v2

    mul-int/lit16 v3, v2, 0x3e8

    div-int/lit8 v3, v3, 0x2

    if-le v0, v3, :cond_0

    mul-int/lit16 v0, v2, 0x3e8

    div-int/lit8 v0, v0, 0x2

    :cond_0
    iget v2, p0, Lcn/jiguang/b/b/e;->e:I

    if-lt v2, v7, :cond_1

    if-ne v1, v6, :cond_3

    :cond_1
    iget-object v1, p0, Lcn/jiguang/b/b/e;->b:Lcn/jiguang/b/b/f;

    invoke-virtual {v1, v8}, Lcn/jiguang/b/b/f;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    aget-object v1, v1, v6

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jiguang/b/b/e;->b:Lcn/jiguang/b/b/f;

    int-to-long v2, v0

    invoke-virtual {v1, v8, v2, v3}, Lcn/jiguang/b/b/f;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    aget-object v0, v0, v6

    sget-object v1, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    aget-object v0, v0, v6

    sget-object v1, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    aget-object v0, v0, v6

    sget-object v1, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iput p1, p0, Lcn/jiguang/b/b/e;->m:I

    return-void
.end method

.method public final a(Landroid/app/Service;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/jiguang/b/b/e;->k:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcn/jiguang/b/b/e;->i:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    sget-object v0, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    aget-object v0, v0, v3

    sget-object v1, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/16 v2, 0x2c

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    aget-object v0, v0, v3

    sget-object v1, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/16 v2, 0x2e

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/jiguang/b/b/e;->h:Landroid/content/Context;

    invoke-static {p1}, Lcn/jiguang/b/a/a;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/jiguang/b/b/e;->h:Landroid/content/Context;

    invoke-static {v0}, Lcn/jiguang/e/a;->i(Landroid/content/Context;)V

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcn/jiguang/b/b/e;->c:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/jiguang/b/b/e;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/16 v2, 0x2d

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/jiguang/b/b/e;->c:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcn/jiguang/b/b/e;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    :cond_4
    new-instance v1, Lcn/jiguang/b/b/f;

    iget-object v0, p0, Lcn/jiguang/b/b/e;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_1
    invoke-direct {v1, p0, v0}, Lcn/jiguang/b/b/f;-><init>(Lcn/jiguang/b/b/e;Landroid/os/Looper;)V

    iput-object v1, p0, Lcn/jiguang/b/b/e;->b:Lcn/jiguang/b/b/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-static {}, Lcn/jiguang/b/d/j;->a()Lcn/jiguang/b/d/j;

    move-result-object v0

    iget-object v1, p0, Lcn/jiguang/b/b/e;->h:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/jiguang/b/d/j;->a(Landroid/content/Context;)V

    invoke-static {}, Lcn/jiguang/b/b/h;->a()Lcn/jiguang/b/b/h;

    move-result-object v0

    iget-object v1, p0, Lcn/jiguang/b/b/e;->h:Landroid/content/Context;

    iget-object v2, p0, Lcn/jiguang/b/b/e;->b:Lcn/jiguang/b/b/f;

    invoke-virtual {v0, v1, v2}, Lcn/jiguang/b/b/h;->a(Landroid/content/Context;Landroid/os/Handler;)V

    iput-boolean v3, p0, Lcn/jiguang/b/b/e;->i:Z

    goto :goto_0

    :cond_5
    :try_start_1
    iget-object v0, p0, Lcn/jiguang/b/b/e;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v0, Lcn/jiguang/b/b/f;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/jiguang/b/b/f;-><init>(Lcn/jiguang/b/b/e;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/jiguang/b/b/e;->b:Lcn/jiguang/b/b/f;

    goto :goto_2
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcn/jiguang/b/b/e;->h:Landroid/content/Context;

    invoke-static {v0}, Lcn/jiguang/b/a/a;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    aget-object v0, v0, v2

    sget-object v1, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/jiguang/b/b/e;->h:Landroid/content/Context;

    invoke-static {v0}, Lcn/jiguang/e/a;->n(Landroid/content/Context;)V

    sget-object v0, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/16 v1, 0x28

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/e/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    aget-object v0, v0, v2

    sget-object v1, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/16 v2, 0x2a

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Lcn/jiguang/e/a;->a()V

    goto :goto_0

    :cond_1
    sget-object v1, Lcn/jiguang/b/b/a;->a:Lcn/jiguang/b/b/a;

    invoke-virtual {v1}, Lcn/jiguang/b/b/a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    aget-object v0, v0, v2

    sget-object v1, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/16 v2, 0x27

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/jiguang/b/b/g;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcn/jiguang/b/b/e;->e()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcn/jiguang/b/b/e;->b:Lcn/jiguang/b/b/f;

    const/16 v1, 0x3ee

    invoke-virtual {v0, v1}, Lcn/jiguang/b/b/f;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_3
    sget-object v1, Lcn/jiguang/b/b/a;->b:Lcn/jiguang/b/b/a;

    invoke-virtual {v1}, Lcn/jiguang/b/b/a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    aget-object v0, v0, v2

    sget-object v1, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/16 v2, 0x29

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    sget-object v0, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    aget-object v0, v0, v2

    sget-object v1, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/16 v2, 0x2b

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final a(Lcn/jiguang/api/JResponse;J)V
    .locals 6

    const/4 v2, 0x1

    move-object v0, p1

    check-cast v0, Lcn/jiguang/b/e/a/a;

    invoke-virtual {v0}, Lcn/jiguang/b/e/a/a;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget-object v0, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    aget-object v0, v0, v2

    sget-object v1, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/16 v2, 0x15

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/b/b/e;->b:Lcn/jiguang/b/b/f;

    const/16 v1, 0x1c87

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcn/jiguang/b/d/c;->a(Landroid/os/Message;J)V

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    sget-object v0, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    aget-object v0, v0, v2

    sget-object v1, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/16 v2, 0x17

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/jiguang/api/JResponse;->getHead()Lcn/jiguang/b/e/a/a/c;

    move-result-object v0

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/jiguang/b/e/a/a/c;->a(Ljava/lang/Long;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/16 v4, 0x16

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/c/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    iget-object v0, p0, Lcn/jiguang/b/b/e;->h:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/jiguang/b/a/a;->a(Landroid/content/Context;Z)V

    invoke-static {}, Lcn/jiguang/b/d/b;->a()Lcn/jiguang/b/d/b;

    iget-object v0, p0, Lcn/jiguang/b/b/e;->h:Landroid/content/Context;

    sget-object v1, Lcn/jiguang/b/b/g;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    iget-object v5, p0, Lcn/jiguang/b/b/e;->b:Lcn/jiguang/b/b/f;

    move-object v1, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcn/jiguang/b/d/b;->a(Landroid/content/Context;Ljava/lang/String;JLandroid/os/Bundle;Landroid/os/Handler;)V

    sget-object v0, Lcn/jiguang/b/b/g;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/jiguang/b/b/e;->f()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v1, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x0

    const/16 v7, 0x14

    const/4 v6, 0x1

    invoke-static {}, Lcn/jiguang/b/d/b;->a()Lcn/jiguang/b/d/b;

    iget-object v0, p0, Lcn/jiguang/b/b/e;->h:Landroid/content/Context;

    sget-object v1, Lcn/jiguang/b/b/g;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    iget-object v5, p0, Lcn/jiguang/b/b/e;->b:Lcn/jiguang/b/b/f;

    move-object v1, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcn/jiguang/b/d/b;->a(Landroid/content/Context;Ljava/lang/String;JLandroid/os/Bundle;Landroid/os/Handler;)V

    invoke-static {}, Lcn/jiguang/b/d/h;->a()Lcn/jiguang/b/d/h;

    invoke-static {}, Lcn/jiguang/b/d/h;->f()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    aget-object v0, v0, v6

    sget-object v1, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/16 v2, 0x1a

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/jiguang/b/b/e;->h:Landroid/content/Context;

    invoke-static {v0, v8}, Lcn/jiguang/b/b/b;->a(Landroid/content/Context;Z)V

    :try_start_0
    iget-object v0, p0, Lcn/jiguang/b/b/e;->h:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/jiguang/b/a/a;->a(Landroid/content/Context;Z)V

    sget-object v0, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/16 v3, 0x1b

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Lcn/jiguang/e/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v1, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/16 v2, 0x1c

    aget-object v1, v1, v2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcn/jiguang/b/b/e;->k:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/jiguang/b/b/e;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    aget-object v0, v0, v6

    sget-object v1, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/b/b/e;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    :cond_2
    invoke-virtual {p0}, Lcn/jiguang/b/b/e;->c()V

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcn/jiguang/b/b/e;->k:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/jiguang/b/b/e;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    aget-object v0, v0, v6

    sget-object v1, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/b/b/e;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    :cond_3
    invoke-virtual {p0}, Lcn/jiguang/b/b/e;->c()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Lcn/jiguang/b/b/e;->k:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/jiguang/b/b/e;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v0, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    aget-object v0, v0, v6

    sget-object v2, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-static {v0, v2}, Lcn/jiguang/c/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/b/b/e;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    :cond_4
    invoke-virtual {p0}, Lcn/jiguang/b/b/e;->c()V

    throw v1
.end method

.method public final b()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcn/jiguang/b/b/e;->b:Lcn/jiguang/b/b/f;

    return-object v0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcn/jiguang/b/b/e;->n:I

    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 6

    const/16 v5, 0x3ec

    const/16 v4, 0x3ed

    iget-object v0, p0, Lcn/jiguang/b/b/e;->h:Landroid/content/Context;

    invoke-static {v0}, Lcn/jiguang/b/a/a;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v1, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/jiguang/b/b/e;->h:Landroid/content/Context;

    invoke-static {v0}, Lcn/jiguang/e/a;->n(Landroid/content/Context;)V

    sget-object v0, Lcn/jiguang/b/b/g;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcn/jiguang/b/b/e;->e()V

    :cond_1
    :goto_1
    invoke-static {}, Lcn/jiguang/e/a;->a()V

    goto :goto_0

    :cond_2
    sget-object v0, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/16 v1, 0x10

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/jiguang/e/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/jiguang/b/b/e;->b:Lcn/jiguang/b/b/f;

    invoke-virtual {v0, v4}, Lcn/jiguang/b/b/f;->removeMessages(I)V

    iget-object v0, p0, Lcn/jiguang/b/b/e;->b:Lcn/jiguang/b/b/f;

    invoke-virtual {v0, v5}, Lcn/jiguang/b/b/f;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/jiguang/b/b/e;->b:Lcn/jiguang/b/b/f;

    invoke-virtual {v0, v4}, Lcn/jiguang/b/b/f;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcn/jiguang/b/b/e;->b:Lcn/jiguang/b/b/f;

    invoke-virtual {v1, v4}, Lcn/jiguang/b/b/f;->removeMessages(I)V

    iget-object v1, p0, Lcn/jiguang/b/b/e;->b:Lcn/jiguang/b/b/f;

    invoke-virtual {v1, v5}, Lcn/jiguang/b/b/f;->removeMessages(I)V

    iget-object v1, p0, Lcn/jiguang/b/b/e;->b:Lcn/jiguang/b/b/f;

    int-to-long v2, v0

    invoke-virtual {v1, v5, v2, v3}, Lcn/jiguang/b/b/f;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcn/jiguang/b/b/e;->b:Lcn/jiguang/b/b/f;

    invoke-virtual {v0, v4}, Lcn/jiguang/b/b/f;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method public final c()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v1, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/b/b/e;->b:Lcn/jiguang/b/b/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jiguang/b/b/e;->b:Lcn/jiguang/b/b/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/jiguang/b/b/f;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    sput-boolean v2, Lcn/jiguang/b/b/e;->d:Z

    iput v2, p0, Lcn/jiguang/b/b/e;->e:I

    iput v2, p0, Lcn/jiguang/b/b/e;->f:I

    iget-object v0, p0, Lcn/jiguang/b/b/e;->h:Landroid/content/Context;

    sget-object v1, Lcn/jiguang/b/b/a;->b:Lcn/jiguang/b/b/a;

    invoke-static {v0, v1}, Lcn/jiguang/b/d/c;->a(Landroid/content/Context;Lcn/jiguang/b/b/a;)V

    iget-object v0, p0, Lcn/jiguang/b/b/e;->a:Lcn/jiguang/b/b/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jiguang/b/b/e;->a:Lcn/jiguang/b/b/g;

    invoke-virtual {v0}, Lcn/jiguang/b/b/g;->c()V

    :cond_1
    invoke-static {}, Lcn/jiguang/b/f/d;->a()Lcn/jiguang/b/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jiguang/b/f/d;->b()V

    return-void
.end method

.method public final e()V
    .locals 4

    const/4 v3, 0x1

    sget-object v0, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    aget-object v0, v0, v3

    sget-object v1, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/16 v2, 0x22

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jiguang/b/b/e;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    aget-object v0, v0, v3

    sget-object v1, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/16 v2, 0x23

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcn/jiguang/b/b/e;->d:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcn/jiguang/b/b/e;->i()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    aget-object v0, v0, v3

    sget-object v1, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/16 v2, 0x24

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/jiguang/b/b/e;->b:Lcn/jiguang/b/b/f;

    const/16 v1, 0x3f3

    invoke-virtual {v0, v1}, Lcn/jiguang/b/b/f;->removeMessages(I)V

    iget-object v0, p0, Lcn/jiguang/b/b/e;->b:Lcn/jiguang/b/b/f;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Lcn/jiguang/b/b/f;->removeMessages(I)V

    invoke-virtual {p0}, Lcn/jiguang/b/b/e;->f()V

    goto :goto_0
.end method

.method public final declared-synchronized f()V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/16 v3, 0x2f

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/b/b/e;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/e/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v1, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/16 v2, 0x31

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcn/jiguang/b/b/e;->h:Landroid/content/Context;

    invoke-static {v0}, Lcn/jiguang/b/a/a;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v1, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    iget v0, p0, Lcn/jiguang/b/b/e;->m:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_3

    sget-object v0, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v1, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/16 v2, 0x32

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcn/jiguang/b/b/e;->a:Lcn/jiguang/b/b/g;

    if-eqz v0, :cond_4

    sget-object v0, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/16 v3, 0x30

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/jiguang/b/b/e;->a:Lcn/jiguang/b/b/g;

    invoke-virtual {v2}, Lcn/jiguang/b/b/g;->e()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/b/b/e;->a:Lcn/jiguang/b/b/g;

    invoke-virtual {v0}, Lcn/jiguang/b/b/g;->e()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    iget-object v0, p0, Lcn/jiguang/b/b/e;->a:Lcn/jiguang/b/b/g;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/jiguang/b/b/e;->a:Lcn/jiguang/b/b/g;

    invoke-virtual {v0}, Lcn/jiguang/b/b/g;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jiguang/b/b/e;->a:Lcn/jiguang/b/b/g;

    :cond_5
    new-instance v0, Lcn/jiguang/b/b/g;

    iget-object v1, p0, Lcn/jiguang/b/b/e;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/jiguang/b/b/e;->b:Lcn/jiguang/b/b/f;

    invoke-direct {v0, v1, v2}, Lcn/jiguang/b/b/g;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/jiguang/b/b/e;->a:Lcn/jiguang/b/b/g;

    iget-object v0, p0, Lcn/jiguang/b/b/e;->a:Lcn/jiguang/b/b/g;

    invoke-virtual {v0}, Lcn/jiguang/b/b/g;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, Lcn/jiguang/b/b/e;->k:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jiguang/b/b/e;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v1, Lcn/jiguang/b/b/e;->z:[Ljava/lang/String;

    const/16 v2, 0x14

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/b/b/e;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    :cond_0
    iget-object v0, p0, Lcn/jiguang/b/b/e;->h:Landroid/content/Context;

    invoke-static {v0}, Lcn/jiguang/e/a;->m(Landroid/content/Context;)V

    invoke-static {}, Lcn/jiguang/b/d/j;->a()Lcn/jiguang/b/d/j;

    invoke-static {}, Lcn/jiguang/b/d/j;->c()V

    invoke-virtual {p0}, Lcn/jiguang/b/b/e;->c()V

    return-void
.end method
