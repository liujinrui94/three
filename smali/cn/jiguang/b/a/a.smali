.class public final Lcn/jiguang/b/a/a;
.super Lcn/jiguang/api/BasePreferenceManager;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:I

.field public static c:Z

.field private static final z:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x48

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "{\u0002,\\w~\u00136P"

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

    const/16 v9, 0x28

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

    const-string v1, "x\u00134k^n\u0005,]Ge"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "A\'*G@%\u001a\rQEd\u0003:gMy\u00016WM+\u001e,\u0014F~\u001b3"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "H\u00181RAl\u0004"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "o\u0012)]Kn(>DX`\u0012&"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "b\u0004\u0000@K{(<XGx\u0012"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "x\u0012,GAd\u0019\u0000]L"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "o\u0012)WAn(6Pwl\u00121QZj\u0003:P"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, "o\u0012)]Kn(*]L"

    const/4 v0, 0x7

    move-object v3, v4

    goto :goto_0

    :pswitch_7
    aput-object v1, v3, v2

    const/16 v2, 0x9

    const-string v1, "o\u0012)]Kn(-QOb\u0004+FI\u007f\u001e0Zwb\u0013"

    const/16 v0, 0x8

    move-object v3, v4

    goto :goto_0

    :pswitch_8
    aput-object v1, v3, v2

    const/16 v2, 0xa

    const-string v1, "o\u0012)]Kn(-QOb\u0004+QZn\u0013\u0000UX{\u001c:M"

    const/16 v0, 0x9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9
    aput-object v1, v3, v2

    const/16 v2, 0xb

    const-string v1, "o\u0012)]Kn(/U[x\u00000FL"

    const/16 v0, 0xa

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a
    aput-object v1, v3, v2

    const/16 v2, 0xc

    const-string v1, "c\u0012>F\\i\u0012>@wb\u0019+QZ}\u00163"

    const/16 v0, 0xb

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b
    aput-object v1, v3, v2

    const/16 v2, 0xd

    const-string v1, "o\u0012)]Kn(2UAe(2UK"

    const/16 v0, 0xc

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c
    aput-object v1, v3, v2

    const/16 v2, 0xe

    const-string v1, "E\u0012(pM}\u001e<Q\u0012J\u0019;FGb\u0013\u0016P\u0008d\u0005\u007fyIhW7UL+\u00147UFl\u0012;\u0015"

    const/16 v0, 0xd

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_d
    aput-object v1, v3, v2

    const/16 v2, 0xf

    const-string v1, "X\u00162Q\u0008j\u0019;FGb\u0013\u0016P\u0008j\u0019;\u0014Ej\u0014\u001ePLy\u0012,G\t"

    const/16 v0, 0xe

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_e
    aput-object v1, v3, v2

    const/16 v2, 0x10

    const-string v1, "o\u0012)]Kn(2UAe(>ZLy\u00186Pwb\u0013"

    const/16 v0, 0xf

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_f
    aput-object v1, v3, v2

    const/16 v2, 0x11

    const-string v1, "h\u00181ZMh\u00036ZOT\u0004+U\\n"

    const/16 v0, 0x10

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_10
    aput-object v1, v3, v2

    const/16 v2, 0x12

    const-string v1, "i\u0016<_]{(*GMy(>PLy"

    const/16 v0, 0x11

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_11
    aput-object v1, v3, v2

    const/16 v2, 0x13

    const-string v1, "m\u00180\u0004\u0018:"

    const/16 v0, 0x12

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_12
    aput-object v1, v3, v2

    const/16 v2, 0x14

    const-string v1, "o\u0012)]Kn(2UAe(6YMb"

    const/16 v0, 0x13

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_13
    aput-object v1, v3, v2

    const/16 v2, 0x15

    const-string v1, "o\u00129U]g\u0003\u0000WGe\u0019\u0000DGy\u0003"

    const/16 v0, 0x14

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_14
    aput-object v1, v3, v2

    const/16 v2, 0x16

    const-string v1, "x\u001e3QFh\u0012\u000fA[c#6YM"

    const/16 v0, 0x15

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_15
    aput-object v1, v3, v2

    const/16 v2, 0x17

    const-string v1, "x\u0012+@Ae\u0010\u0000D]x\u001f\u0000@Af\u0012"

    const/16 v0, 0x16

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_16
    aput-object v1, v3, v2

    const/16 v2, 0x18

    const-string v1, "x\u0012+@Ae\u0010\u0000GAg\u00121WMT\u0007*G@T\u00036YM"

    const/16 v0, 0x17

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_17
    aput-object v1, v3, v2

    const/16 v2, 0x19

    const-string v1, "c\u0003+Dwy\u0012/[Z\u007f(,][T\u0002-X"

    const/16 v0, 0x18

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_18
    aput-object v1, v3, v2

    const/16 v2, 0x1a

    const-string v1, "e\u0018+]Nj\u0014+]Ge(1AE"

    const/16 v0, 0x19

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_19
    aput-object v1, v3, v2

    const/16 v2, 0x1b

    const-string v1, "g\u0016,@wy\u0012/[Z\u007f(3[Kj\u00036[F"

    const/16 v0, 0x1a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1a
    aput-object v1, v3, v2

    const/16 v2, 0x1c

    const-string v1, "g\u0014+]En"

    const/16 v0, 0x1b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1b
    aput-object v1, v3, v2

    const/16 v2, 0x1d

    const-string v1, "a\u0007*G@T\u00140ZFT\u001a6D"

    const/16 v0, 0x1c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1c
    aput-object v1, v3, v2

    const/16 v2, 0x1e

    const-string v1, "g\u0016,@wy\u0012/[Z\u007f(;Q^b\u0014:kAe\u00110"

    const/16 v0, 0x1d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1d
    aput-object v1, v3, v2

    const/16 v2, 0x1f

    const-string v1, "{\u0002,\\\\b\u001a:"

    const/16 v0, 0x1e

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1e
    aput-object v1, v3, v2

    const/16 v2, 0x20

    const-string v1, "i\u0016<_]{(-QXd\u0005+kIo\u0013-"

    const/16 v0, 0x1f

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1f
    aput-object v1, v3, v2

    const/16 v2, 0x21

    const-string v1, "o\u00129U]g\u0003\u0000WGe\u0019\u0000]X"

    const/16 v0, 0x20

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_20
    aput-object v1, v3, v2

    const/16 v2, 0x22

    const-string v1, "g\u0016,@wl\u00180Pwh\u00181Zw{\u0018-@"

    const/16 v0, 0x21

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_21
    aput-object v1, v3, v2

    const/16 v2, 0x23

    const-string v1, "o\u0012)]Kn(2UAe(6P["

    const/16 v0, 0x22

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_22
    aput-object v1, v3, v2

    const/16 v2, 0x24

    const-string v1, "g\u00188]FT\u0004:F^n\u0005\u0000@Af\u0012"

    const/16 v0, 0x23

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_23
    aput-object v1, v3, v2

    const/16 v2, 0x25

    const-string v1, "y\u00128][\u007f\u0012-kLn\u00016WMT\u001e2QA"

    const/16 v0, 0x24

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_24
    aput-object v1, v3, v2

    const/16 v2, 0x26

    const-string v1, "g\u0016,@wl\u00180Pwh\u00181Zwb\u0007"

    const/16 v0, 0x25

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_25
    aput-object v1, v3, v2

    const/16 v2, 0x27

    const-string v1, "g\u00188]FT\u001b0WIg(+]En"

    const/16 v0, 0x26

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_26
    aput-object v1, v3, v2

    const/16 v2, 0x28

    const-string v1, "y\u00128][\u007f\u0005>@Ad\u0019\u0000]L"

    const/16 v0, 0x27

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_27
    aput-object v1, v3, v2

    const/16 v2, 0x29

    const-string v1, "a\u0007*G@T\u00046Gwe\u0012+@Q{\u0012"

    const/16 v0, 0x28

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_28
    aput-object v1, v3, v2

    const/16 v2, 0x2a

    const-string v1, "h\u0019q^X~\u00047\u001a[n\u0005)QZh\u00181RAl"

    const/16 v0, 0x29

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_29
    aput-object v1, v3, v2

    const/16 v2, 0x2b

    const-string v1, "f>\u000f"

    const/16 v0, 0x2a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2a
    aput-object v1, v3, v2

    const/16 v2, 0x2c

    const-string v1, "y\u00128][\u007f\u0012-kLn\u00016WMT\u001a>W"

    const/16 v0, 0x2b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2b
    aput-object v1, v3, v2

    const/16 v2, 0x2d

    const-string v1, "b\u001a:]"

    const/16 v0, 0x2c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2c
    aput-object v1, v3, v2

    const/16 v2, 0x2e

    const-string v1, "f\'0F\\"

    const/16 v0, 0x2d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2d
    aput-object v1, v3, v2

    const/16 v2, 0x2f

    const-string v1, "y\u00128][\u007f\u0012-kLn\u00016WMT\u00161PZd\u001e;kAo"

    const/16 v0, 0x2e

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2e
    aput-object v1, v3, v2

    const/16 v2, 0x30

    const-string v1, "g\u0016,@wl\u00180Pwx\u001e,"

    const/16 v0, 0x2f

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2f
    aput-object v1, v3, v2

    const/16 v2, 0x31

    const-string v1, "o\u0012)kAe\u00110kZn\u0007\u0000@Af\u0012"

    const/16 v0, 0x30

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_30
    aput-object v1, v3, v2

    const/16 v2, 0x32

    const-string v1, "a\u0007*G@T\u00140ZFT\u001a/[Z\u007f"

    const/16 v0, 0x31

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_31
    aput-object v1, v3, v2

    const/16 v2, 0x33

    const-string v1, "x\u0012-BAh\u0012\u0000G\\d\u0007:P"

    const/16 v0, 0x32

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_32
    aput-object v1, v3, v2

    const/16 v2, 0x34

    const-string v1, "g\u00188]FT\u0005:DGy\u0003\u0000@Af\u0012"

    const/16 v0, 0x33

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_33
    aput-object v1, v3, v2

    const/16 v2, 0x35

    const-string v1, "g\u0016,@wh\u00181ZMh\u00036[FT\u0003&DM"

    const/16 v0, 0x34

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_34
    aput-object v1, v3, v2

    const/16 v2, 0x36

    const-string v1, "e\u0018+]Nb\u0014>@Ad\u0019\u0000Z]f"

    const/16 v0, 0x35

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_35
    aput-object v1, v3, v2

    const/16 v2, 0x37

    const-string v1, "h\u0019q^X~\u00047\u001aIe\u0013-[AoY\u001edx@2\u0006"

    const/16 v0, 0x36

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_36
    aput-object v1, v3, v2

    const/16 v2, 0x38

    const-string v1, "a\u0007*G@T\u00046Gwy\u0012<QA}\u0012-k[\u007f\u00056ZO"

    const/16 v0, 0x37

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_37
    aput-object v1, v3, v2

    const/16 v2, 0x39

    const-string v1, "A\'*G@T3:BAh\u0012\u0016P"

    const/16 v0, 0x38

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_38
    aput-object v1, v3, v2

    const/16 v2, 0x3a

    const-string v1, "x\u0012-BAh\u0012\u0000WGe\u0019:WM\u007f"

    const/16 v0, 0x39

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_39
    aput-object v1, v3, v2

    const/16 v2, 0x3b

    const-string v1, "y\u00128][\u007f\u0012-kLn\u00016WMT\u001e1RG"

    const/16 v0, 0x3a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3a
    aput-object v1, v3, v2

    const/16 v2, 0x3c

    const-string v1, "b\u001a\u0000XGl\u001e1kKd\u00021@"

    const/16 v0, 0x3b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3b
    aput-object v1, v3, v2

    const/16 v2, 0x3d

    const-string v1, "~\u00073[Io(<FIx\u001f"

    const/16 v0, 0x3c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3c
    aput-object v1, v3, v2

    const/16 v2, 0x3e

    const-string v1, "g\u0016,@wy\u0012/[Z\u007f(6ZLn\u000f"

    const/16 v0, 0x3d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3d
    aput-object v1, v3, v2

    const/16 v2, 0x3f

    const-string v1, "g\u0016,@wx\u001e,kZn\u0006*Q[\u007f(+]En"

    const/16 v0, 0x3e

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3e
    aput-object v1, v3, v2

    const/16 v2, 0x40

    const-string v1, "x\u0012-BAh\u0012,kDj\u00021W@n\u0013\u0000@Af\u0012"

    const/16 v0, 0x3f

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3f
    aput-object v1, v3, v2

    const/16 v2, 0x41

    const-string v1, "^\u0007;U\\nW9FGfW>\u0014^n\u0005,]GeW:UZg\u001e:F\u0008\u007f\u001f>Z\u0008:Oo\u0014\u0004d\u0005\u007fRAx\u0003\u007f@Af\u0012\u007f]Fx\u0003>XD+=\u000fA[c$\u001b\u007f\u0006"

    const/16 v0, 0x40

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_40
    aput-object v1, v3, v2

    const/16 v2, 0x42

    const-string v1, "o\u0012)]Kn(<\\Ie\u0019:X"

    const/16 v0, 0x41

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_41
    aput-object v1, v3, v2

    const/16 v2, 0x43

    const-string v1, ":Fl\u001a\u001b:Yn\u0003\u0006:Gi"

    const/16 v0, 0x42

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_42
    aput-object v1, v3, v2

    const/16 v2, 0x44

    const-string v1, "E\u0012(pM}\u001e<Q\u0012B:\u001a}\u0008d\u0005\u007fuFo\u00050]LB\u0013\u007f\\IoW<\\Ie\u0010:P\t"

    const/16 v0, 0x43

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_43
    aput-object v1, v3, v2

    const/16 v2, 0x45

    const-string v1, "X\u00162Q\u0008B:\u001a}\u0008j\u0019;\u0014Ie\u0013-[Ao>;\u0015"

    const/16 v0, 0x44

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_44
    aput-object v1, v3, v2

    const/16 v2, 0x46

    const-string v1, "a\u0007*G@T\u0005:SAx\u0003:Fwh\u0018;Q"

    const/16 v0, 0x45

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_45
    aput-object v1, v3, v2

    const/16 v2, 0x47

    const-string v1, "b\u0004\u0000]ET\u001b0SOn\u0013\u0000]F"

    const/16 v0, 0x46

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_46
    aput-object v1, v3, v2

    sput-object v4, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcn/jiguang/b/a/a;->a:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcn/jiguang/b/a/a;->b:I

    const/4 v0, 0x0

    sput-boolean v0, Lcn/jiguang/b/a/a;->c:Z

    return-void

    :pswitch_47
    const/16 v9, 0xb

    goto/16 :goto_2

    :pswitch_48
    const/16 v9, 0x77

    goto/16 :goto_2

    :pswitch_49
    const/16 v9, 0x5f

    goto/16 :goto_2

    :pswitch_4a
    const/16 v9, 0x34

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
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
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
    .end packed-switch
.end method

.method public static A()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v1, 0x42

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/jiguang/b/a/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static B()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v1, 0x13

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/jiguang/b/a/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static C()Z
    .locals 4

    sget-object v0, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v1, 0x14

    aget-object v0, v0, v1

    const-string v1, ""

    invoke-static {v0, v1}, Lcn/jiguang/b/a/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    const-string v2, ""

    invoke-static {v1, v2}, Lcn/jiguang/b/a/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v3, 0xd

    aget-object v2, v2, v3

    const-string v3, ""

    invoke-static {v2, v3}, Lcn/jiguang/b/a/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    sget-object v1, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v2, 0x41

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static D()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v1, 0x14

    aget-object v0, v0, v1

    const-string v1, ""

    invoke-static {v0, v1}, Lcn/jiguang/b/a/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static E()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v1, ""

    invoke-static {v0, v1}, Lcn/jiguang/b/a/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static F()I
    .locals 3

    sget-object v0, Lcn/jiguang/b/a;->e:Landroid/content/Context;

    sget-object v1, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/jiguang/api/MultiSpHelper;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static G()Z
    .locals 4

    :try_start_0
    sget-object v0, Lcn/jiguang/b/a;->n:Lcn/jiguang/android/a;

    invoke-interface {v0}, Lcn/jiguang/android/a;->a()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    sget-object v2, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-static {v1, v2, v0}, Lcn/jiguang/c/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcn/jiguang/b/b/g;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static H()J
    .locals 4

    sget-object v0, Lcn/jiguang/b/a;->e:Landroid/content/Context;

    sget-object v1, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v2, 0x40

    aget-object v1, v1, v2

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Lcn/jiguang/api/MultiSpHelper;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static I()Z
    .locals 3

    sget-object v0, Lcn/jiguang/b/a;->e:Landroid/content/Context;

    sget-object v1, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v2, 0x47

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/jiguang/api/MultiSpHelper;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static J()I
    .locals 3

    sget-object v0, Lcn/jiguang/b/a;->e:Landroid/content/Context;

    sget-object v1, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v2, 0x3c

    aget-object v1, v1, v2

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcn/jiguang/api/MultiSpHelper;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static a(J)J
    .locals 4

    invoke-static {}, Lcn/jiguang/b/a/a;->i()J

    move-result-wide v0

    add-long/2addr v0, p0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcn/jiguang/b/a/a;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)V
    .locals 3

    sget-object v0, Lcn/jiguang/b/a;->e:Landroid/content/Context;

    sget-object v1, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-static {v0, v1, p0}, Lcn/jiguang/api/MultiSpHelper;->commitInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    sput-wide p0, Lcn/jiguang/b/a;->g:J

    sput-object p2, Lcn/jiguang/b/a;->h:Ljava/lang/String;

    new-instance v0, Lcn/jiguang/android/SPBuffer;

    invoke-direct {v0}, Lcn/jiguang/android/SPBuffer;-><init>()V

    sget-object v1, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p0, p1}, Lcn/jiguang/android/SPBuffer;->a(Ljava/lang/String;J)Lcn/jiguang/android/SPBuffer;

    move-result-object v0

    sget-object v1, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p2}, Lcn/jiguang/android/SPBuffer;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/jiguang/android/SPBuffer;

    move-result-object v0

    sget-object v1, Lcn/jiguang/b/a;->e:Landroid/content/Context;

    invoke-static {v1, v0}, Lcn/jiguang/api/MultiSpHelper;->applyBuffer(Landroid/content/Context;Lcn/jiguang/android/SPBuffer;)V

    sget-object v0, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    invoke-static {v0, p3}, Lcn/jiguang/b/a/a;->commitString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sput-wide p0, Lcn/jiguang/b/a;->g:J

    sput-object p2, Lcn/jiguang/b/a;->h:Ljava/lang/String;

    new-instance v0, Lcn/jiguang/android/SPBuffer;

    invoke-direct {v0}, Lcn/jiguang/android/SPBuffer;-><init>()V

    sget-object v1, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p0, p1}, Lcn/jiguang/android/SPBuffer;->a(Ljava/lang/String;J)Lcn/jiguang/android/SPBuffer;

    move-result-object v0

    sget-object v1, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p2}, Lcn/jiguang/android/SPBuffer;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/jiguang/android/SPBuffer;

    move-result-object v0

    sget-object v1, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p3}, Lcn/jiguang/android/SPBuffer;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/jiguang/android/SPBuffer;

    move-result-object v0

    invoke-static {p4}, Lcn/jiguang/e/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p4}, Lcn/jiguang/android/SPBuffer;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/jiguang/android/SPBuffer;

    :cond_0
    sget-object v1, Lcn/jiguang/b/a;->e:Landroid/content/Context;

    invoke-static {v1, v0}, Lcn/jiguang/api/MultiSpHelper;->applyBuffer(Landroid/content/Context;Lcn/jiguang/android/SPBuffer;)V

    sget-object v0, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    invoke-static {v0, p5}, Lcn/jiguang/b/a/a;->commitString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 2

    sget-object v0, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v1, 0x46

    aget-object v0, v0, v1

    invoke-static {p0, v0, p1}, Lcn/jiguang/api/MultiSpHelper;->commitInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcn/jiguang/b/b/a;)V
    .locals 2

    sget-object v0, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v1, 0x11

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcn/jiguang/b/b/a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcn/jiguang/api/MultiSpHelper;->commitString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p0, v0, p1}, Lcn/jiguang/b/a/a;->commitString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Lcn/jiguang/b/a/a;->getEncryptedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcn/jiguang/api/MultiSpHelper;->commitString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 2

    sget-object v0, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-static {p0, v0, p1}, Lcn/jiguang/api/MultiSpHelper;->commitBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Lcn/jiguang/android/SPBuffer;

    invoke-direct {v0}, Lcn/jiguang/android/SPBuffer;-><init>()V

    sget-object v1, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v2, 0x26

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p0}, Lcn/jiguang/android/SPBuffer;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/jiguang/android/SPBuffer;

    move-result-object v0

    sget-object v1, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v2, 0x22

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p1}, Lcn/jiguang/android/SPBuffer;->a(Ljava/lang/String;I)Lcn/jiguang/android/SPBuffer;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/b/a/a;->applyBuffer(Lcn/jiguang/android/SPBuffer;)V

    return-void
.end method

.method public static a(Ljava/lang/String;J)V
    .locals 1

    invoke-static {p0, p1, p2}, Lcn/jiguang/b/a/a;->commitLong(Ljava/lang/String;J)V

    return-void
.end method

.method public static a(Z)V
    .locals 3

    sget-object v0, Lcn/jiguang/b/a;->e:Landroid/content/Context;

    sget-object v1, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v2, 0x3d

    aget-object v1, v1, v2

    invoke-static {v0, v1, p0}, Lcn/jiguang/api/MultiSpHelper;->commitBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static declared-synchronized a()Z
    .locals 8

    const-class v1, Lcn/jiguang/b/a/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v2, 0x3e

    aget-object v0, v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcn/jiguang/b/a/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/32 v6, 0x5265c00

    cmp-long v0, v2, v6

    if-lez v0, :cond_0

    sget-object v0, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v2, 0x3e

    aget-object v0, v0, v2

    invoke-static {v0, v4, v5}, Lcn/jiguang/b/a/a;->commitLong(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 4

    const/16 v3, 0x35

    const/4 v0, 0x1

    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    aget-object v1, v1, v3

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/jiguang/b/a/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {v1, p0}, Lcn/jiguang/b/a/a;->commitString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x3

    sget-object v0, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v1, 0x14

    aget-object v0, v0, v1

    const-string v1, ""

    invoke-static {v0, v1}, Lcn/jiguang/b/a/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    const-string v2, ""

    invoke-static {v1, v2}, Lcn/jiguang/b/a/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    aget-object v0, v0, v3

    sget-object v1, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v2, 0x45

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    aget-object v0, v0, v3

    sget-object v1, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v2, 0x44

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()J
    .locals 4

    sget-object v0, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v1, 0x3e

    aget-object v0, v0, v1

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcn/jiguang/b/a/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v1, 0x2d

    aget-object v0, v0, v1

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcn/jiguang/b/a/a;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcn/jiguang/api/MultiSpHelper;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/e/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object p2

    :cond_0
    invoke-static {v0, p2}, Lcn/jiguang/b/a/a;->getDecryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public static b(J)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcn/jiguang/b/a/b;->a(JJ)V

    new-instance v2, Lcn/jiguang/android/SPBuffer;

    invoke-direct {v2}, Lcn/jiguang/android/SPBuffer;-><init>()V

    sget-object v3, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v4, 0x24

    aget-object v3, v3, v4

    invoke-virtual {v2, v3, p0, p1}, Lcn/jiguang/android/SPBuffer;->a(Ljava/lang/String;J)Lcn/jiguang/android/SPBuffer;

    move-result-object v2

    sget-object v3, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v4, 0x27

    aget-object v3, v3, v4

    invoke-virtual {v2, v3, v0, v1}, Lcn/jiguang/android/SPBuffer;->a(Ljava/lang/String;J)Lcn/jiguang/android/SPBuffer;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/b/a/a;->applyBuffer(Lcn/jiguang/android/SPBuffer;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v1, 0x2d

    aget-object v0, v0, v1

    invoke-static {p0, v0, p1}, Lcn/jiguang/b/a/a;->commitString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcn/jiguang/b/a;->e:Landroid/content/Context;

    sget-object v1, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v2, 0x20

    aget-object v1, v1, v2

    invoke-static {v0, v1, p0}, Lcn/jiguang/api/MultiSpHelper;->commitString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Lcn/jiguang/android/SPBuffer;

    invoke-direct {v0}, Lcn/jiguang/android/SPBuffer;-><init>()V

    sget-object v1, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v2, 0x21

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p0}, Lcn/jiguang/android/SPBuffer;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/jiguang/android/SPBuffer;

    move-result-object v0

    sget-object v1, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v2, 0x15

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p1}, Lcn/jiguang/android/SPBuffer;->a(Ljava/lang/String;I)Lcn/jiguang/android/SPBuffer;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/b/a/a;->applyBuffer(Lcn/jiguang/android/SPBuffer;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x3

    sget-object v0, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v1, 0x10

    aget-object v0, v0, v1

    const-string v1, ""

    invoke-static {v0, v1}, Lcn/jiguang/b/a/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    const-string v2, ""

    invoke-static {v1, v2}, Lcn/jiguang/b/a/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcn/jiguang/e/h;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcn/jiguang/e/h;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    aget-object v0, v0, v3

    sget-object v1, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    sget-object v0, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    aget-object v0, v0, v3

    sget-object v1, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v2, 0xe

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Lcn/jiguang/b/b/a;
    .locals 2

    sget-object v0, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v1, 0x11

    aget-object v0, v0, v1

    sget-object v1, Lcn/jiguang/b/b/a;->b:Lcn/jiguang/b/b/a;

    invoke-virtual {v1}, Lcn/jiguang/b/b/a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcn/jiguang/api/MultiSpHelper;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/b/b/a;->valueOf(Ljava/lang/String;)Lcn/jiguang/b/b/a;

    move-result-object v0

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v1, 0x26

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/jiguang/b/a/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(J)V
    .locals 4

    sget-object v0, Lcn/jiguang/b/a;->e:Landroid/content/Context;

    sget-object v1, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v2, 0x40

    aget-object v1, v1, v2

    invoke-static {v0, v1, p0, p1}, Lcn/jiguang/api/MultiSpHelper;->commitLong(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v1, 0x12

    aget-object v0, v0, v1

    invoke-static {v0, p0}, Lcn/jiguang/b/a/a;->commitString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d()I
    .locals 2

    sget-object v0, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v1, 0x22

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/jiguang/b/a/a;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 11

    const/16 v10, 0x33

    const/16 v5, 0x2d

    const/16 v7, 0x24

    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    invoke-static {p0}, Lcn/jiguang/b/a/a;->init(Landroid/content/Context;)V

    sget-object v0, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v1, 0x2a

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Lcn/jiguang/android/SPBuffer;

    invoke-direct {v2}, Lcn/jiguang/android/SPBuffer;-><init>()V

    sget-object v0, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v3, 0x11

    aget-object v3, v0, v3

    sget-object v0, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v4, 0x3a

    aget-object v0, v0, v4

    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    sget-object v0, Lcn/jiguang/b/b/a;->a:Lcn/jiguang/b/b/a;

    invoke-virtual {v0}, Lcn/jiguang/b/b/a;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v3, v0}, Lcn/jiguang/android/SPBuffer;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/jiguang/android/SPBuffer;

    move-result-object v0

    sget-object v2, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v3, 0x23

    aget-object v2, v2, v3

    sget-object v3, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v4, 0x3b

    aget-object v3, v3, v4

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcn/jiguang/android/SPBuffer;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/jiguang/android/SPBuffer;

    move-result-object v0

    sget-object v2, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v3, 0x14

    aget-object v2, v2, v3

    sget-object v3, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v4, 0x25

    aget-object v3, v3, v4

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcn/jiguang/android/SPBuffer;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/jiguang/android/SPBuffer;

    move-result-object v0

    sget-object v2, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v3, 0x10

    aget-object v2, v2, v3

    sget-object v3, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v4, 0x2f

    aget-object v3, v3, v4

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcn/jiguang/android/SPBuffer;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/jiguang/android/SPBuffer;

    move-result-object v0

    sget-object v2, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v3, 0xd

    aget-object v2, v2, v3

    sget-object v3, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v4, 0x2c

    aget-object v3, v3, v4

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcn/jiguang/android/SPBuffer;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/jiguang/android/SPBuffer;

    move-result-object v0

    sget-object v2, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v3, 0x35

    aget-object v2, v2, v3

    sget-object v3, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v4, 0x29

    aget-object v3, v3, v4

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcn/jiguang/android/SPBuffer;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/jiguang/android/SPBuffer;

    move-result-object v0

    sget-object v2, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v3, 0x30

    aget-object v2, v2, v3

    sget-object v3, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v4, 0x38

    aget-object v3, v3, v4

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcn/jiguang/android/SPBuffer;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/jiguang/android/SPBuffer;

    move-result-object v0

    sget-object v2, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v3, 0x21

    aget-object v2, v2, v3

    sget-object v3, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v4, 0x2b

    aget-object v3, v3, v4

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcn/jiguang/android/SPBuffer;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/jiguang/android/SPBuffer;

    move-result-object v0

    sget-object v2, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v3, 0x20

    aget-object v2, v2, v3

    sget-object v3, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v4, 0x19

    aget-object v3, v3, v4

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcn/jiguang/android/SPBuffer;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/jiguang/android/SPBuffer;

    move-result-object v0

    sget-object v2, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v3, 0x26

    aget-object v2, v2, v3

    sget-object v3, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v4, 0x1d

    aget-object v3, v3, v4

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcn/jiguang/android/SPBuffer;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/jiguang/android/SPBuffer;

    move-result-object v0

    sget-object v2, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    aget-object v2, v2, v6

    sget-object v3, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    aget-object v3, v3, v6

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcn/jiguang/android/SPBuffer;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/jiguang/android/SPBuffer;

    move-result-object v0

    sget-object v2, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    aget-object v2, v2, v5

    sget-object v3, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    aget-object v3, v3, v5

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcn/jiguang/android/SPBuffer;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/jiguang/android/SPBuffer;

    move-result-object v0

    sget-object v2, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v3, 0x15

    aget-object v2, v2, v3

    sget-object v3, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v4, 0x2e

    aget-object v3, v3, v4

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcn/jiguang/android/SPBuffer;->a(Ljava/lang/String;I)Lcn/jiguang/android/SPBuffer;

    move-result-object v0

    sget-object v2, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v3, 0x22

    aget-object v2, v2, v3

    sget-object v3, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v4, 0x32

    aget-object v3, v3, v4

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcn/jiguang/android/SPBuffer;->a(Ljava/lang/String;I)Lcn/jiguang/android/SPBuffer;

    move-result-object v0

    sget-object v2, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v3, 0x27

    aget-object v2, v2, v3

    sget-object v3, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v4, 0x1c

    aget-object v3, v3, v4

    invoke-interface {v1, v3, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lcn/jiguang/android/SPBuffer;->a(Ljava/lang/String;J)Lcn/jiguang/android/SPBuffer;

    move-result-object v0

    sget-object v2, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v3, 0x1e

    aget-object v2, v2, v3

    sget-object v3, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v4, 0x31

    aget-object v3, v3, v4

    invoke-interface {v1, v3, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lcn/jiguang/android/SPBuffer;->a(Ljava/lang/String;J)Lcn/jiguang/android/SPBuffer;

    move-result-object v0

    sget-object v2, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    aget-object v2, v2, v7

    sget-object v3, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-interface {v1, v3, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lcn/jiguang/android/SPBuffer;->a(Ljava/lang/String;J)Lcn/jiguang/android/SPBuffer;

    move-result-object v0

    sget-object v2, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v3, 0x1b

    aget-object v2, v2, v3

    sget-object v3, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v4, 0x34

    aget-object v3, v3, v4

    invoke-interface {v1, v3, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lcn/jiguang/android/SPBuffer;->a(Ljava/lang/String;J)Lcn/jiguang/android/SPBuffer;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/jiguang/b/a/a;->applyBuffer(Landroid/content/Context;Lcn/jiguang/android/SPBuffer;)V

    new-instance v0, Lcn/jiguang/android/SPBuffer;

    invoke-direct {v0}, Lcn/jiguang/android/SPBuffer;-><init>()V

    sget-object v2, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    sget-object v3, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v4, 0x28

    aget-object v3, v3, v4

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcn/jiguang/android/SPBuffer;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/jiguang/android/SPBuffer;

    move-result-object v0

    sget-object v2, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    sget-object v3, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v4, 0x37

    aget-object v3, v3, v4

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcn/jiguang/android/SPBuffer;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/jiguang/android/SPBuffer;

    move-result-object v0

    sget-object v2, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    sget-object v3, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v4, 0x39

    aget-object v3, v3, v4

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcn/jiguang/android/SPBuffer;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/jiguang/android/SPBuffer;

    move-result-object v0

    sget-object v2, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v3, 0x18

    aget-object v2, v2, v3

    sget-object v3, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v4, 0x16

    aget-object v3, v3, v4

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcn/jiguang/android/SPBuffer;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/jiguang/android/SPBuffer;

    move-result-object v0

    sget-object v2, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v3, 0x17

    aget-object v2, v2, v3

    sget-object v3, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v4, 0x1f

    aget-object v3, v3, v4

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcn/jiguang/android/SPBuffer;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/jiguang/android/SPBuffer;

    move-result-object v0

    sget-object v2, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v3, 0x36

    aget-object v2, v2, v3

    sget-object v3, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v4, 0x1a

    aget-object v3, v3, v4

    const/4 v4, 0x5

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcn/jiguang/android/SPBuffer;->a(Ljava/lang/String;I)Lcn/jiguang/android/SPBuffer;

    move-result-object v0

    sget-object v2, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    aget-object v2, v2, v10

    sget-object v3, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    aget-object v3, v3, v10

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcn/jiguang/android/SPBuffer;->a(Ljava/lang/String;I)Lcn/jiguang/android/SPBuffer;

    move-result-object v0

    sget-object v1, Lcn/jiguang/b/a;->e:Landroid/content/Context;

    invoke-static {v1, v0}, Lcn/jiguang/api/MultiSpHelper;->applyBuffer(Landroid/content/Context;Lcn/jiguang/android/SPBuffer;)V

    return-void

    :cond_0
    sget-object v0, Lcn/jiguang/b/b/a;->b:Lcn/jiguang/b/b/a;

    invoke-virtual {v0}, Lcn/jiguang/b/b/a;->name()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v1, 0x30

    aget-object v0, v0, v1

    invoke-static {v0, p0}, Lcn/jiguang/b/a/a;->commitString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcn/jiguang/b/a;->e:Landroid/content/Context;

    sget-object v1, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-static {v0, v1, p0}, Lcn/jiguang/api/MultiSpHelper;->commitString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e()Z
    .locals 3

    sget-object v0, Lcn/jiguang/b/a;->e:Landroid/content/Context;

    sget-object v1, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v2, 0x3d

    aget-object v1, v1, v2

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcn/jiguang/api/MultiSpHelper;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 2

    sget-object v0, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/jiguang/api/MultiSpHelper;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static f(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcn/jiguang/b/a;->e:Landroid/content/Context;

    sget-object v1, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-static {v0, v1, p0}, Lcn/jiguang/api/MultiSpHelper;->commitString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static f()Z
    .locals 4

    sget-object v0, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v1, 0x3f

    aget-object v0, v0, v1

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcn/jiguang/b/a/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0x2bf20

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g()V
    .locals 4

    sget-object v0, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v1, 0x3f

    aget-object v0, v0, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcn/jiguang/b/a/a;->commitLong(Ljava/lang/String;J)V

    return-void
.end method

.method public static g(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v1, 0x42

    aget-object v0, v0, v1

    invoke-static {v0, p0}, Lcn/jiguang/b/a/a;->commitString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static h()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcn/jiguang/b/a/a;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static h(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v1, 0x13

    aget-object v0, v0, v1

    invoke-static {v0, p0}, Lcn/jiguang/b/a/a;->commitString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i()J
    .locals 6

    const-wide/16 v4, 0x0

    invoke-static {}, Lcn/jiguang/b/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/jiguang/b/a/b;->b()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    sget-object v0, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v1, 0x27

    aget-object v0, v0, v1

    invoke-static {v0, v4, v5}, Lcn/jiguang/b/a/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sget-object v2, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v3, 0x24

    aget-object v2, v2, v3

    invoke-static {v2, v4, v5}, Lcn/jiguang/b/a/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Lcn/jiguang/b/a/b;->a(JJ)V

    sub-long v0, v2, v0

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v1, 0x14

    aget-object v0, v0, v1

    invoke-static {v0, p0}, Lcn/jiguang/b/a/a;->commitString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized j()J
    .locals 4

    const-class v0, Lcn/jiguang/b/a/a;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcn/jiguang/b/a/c;->a()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    monitor-exit v0

    return-wide v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static j(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v1, 0x10

    aget-object v0, v0, v1

    invoke-static {v0, p0}, Lcn/jiguang/b/a/a;->commitString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static k()I
    .locals 2

    sget-object v0, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    const/16 v1, 0x122

    invoke-static {v0, v1}, Lcn/jiguang/b/a/a;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static k(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v1, 0xd

    aget-object v0, v0, v1

    invoke-static {v0, p0}, Lcn/jiguang/b/a/a;->commitString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static l()V
    .locals 3

    const/16 v0, 0x122

    sget-object v1, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-static {v1, v0}, Lcn/jiguang/b/a/a;->commitInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static l(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0, p0}, Lcn/jiguang/b/a/a;->commitString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static m(Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcn/jiguang/b/a/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static m()V
    .locals 3

    const v0, 0x15180

    sget-object v1, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-static {v1, v0}, Lcn/jiguang/b/a/a;->commitInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static n()Z
    .locals 2

    invoke-static {}, Lcn/jiguang/b/a/a;->k()I

    move-result v0

    const v1, 0x15180

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static o()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v1, 0x21

    aget-object v0, v0, v1

    sget-object v1, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v2, 0x43

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/b/a/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static p()I
    .locals 2

    sget-object v0, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v1, 0x15

    aget-object v0, v0, v1

    const/16 v1, 0x1b58

    invoke-static {v0, v1}, Lcn/jiguang/b/a/a;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static q()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcn/jiguang/b/a;->e:Landroid/content/Context;

    sget-object v1, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v2, 0x20

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/jiguang/api/MultiSpHelper;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static r()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v1, 0x30

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/jiguang/b/a/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static s()J
    .locals 6

    const-wide/16 v4, 0x0

    sget-wide v0, Lcn/jiguang/b/a;->g:J

    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    sget-object v0, Lcn/jiguang/b/a;->e:Landroid/content/Context;

    sget-object v1, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-static {v0, v1, v4, v5}, Lcn/jiguang/api/MultiSpHelper;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcn/jiguang/b/a;->g:J

    :cond_0
    return-wide v0
.end method

.method public static t()Z
    .locals 6

    invoke-static {}, Lcn/jiguang/b/a/a;->s()J

    move-result-wide v0

    invoke-static {}, Lcn/jiguang/b/a/a;->w()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    invoke-static {v2}, Lcn/jiguang/e/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static u()V
    .locals 4

    const-wide/16 v0, 0x0

    sput-wide v0, Lcn/jiguang/b/a;->g:J

    const-string v0, ""

    sput-object v0, Lcn/jiguang/b/a;->h:Ljava/lang/String;

    new-instance v0, Lcn/jiguang/android/SPBuffer;

    invoke-direct {v0}, Lcn/jiguang/android/SPBuffer;-><init>()V

    sget-object v1, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    sget-wide v2, Lcn/jiguang/b/a;->g:J

    invoke-virtual {v0, v1, v2, v3}, Lcn/jiguang/android/SPBuffer;->a(Ljava/lang/String;J)Lcn/jiguang/android/SPBuffer;

    move-result-object v0

    sget-object v1, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    sget-object v2, Lcn/jiguang/b/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/jiguang/android/SPBuffer;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/jiguang/android/SPBuffer;

    move-result-object v0

    sget-object v1, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcn/jiguang/android/SPBuffer;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/jiguang/android/SPBuffer;

    move-result-object v0

    sget-object v1, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcn/jiguang/android/SPBuffer;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/jiguang/android/SPBuffer;

    move-result-object v0

    sget-object v1, Lcn/jiguang/b/a;->e:Landroid/content/Context;

    invoke-static {v1, v0}, Lcn/jiguang/api/MultiSpHelper;->applyBuffer(Landroid/content/Context;Lcn/jiguang/android/SPBuffer;)V

    sget-object v0, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    invoke-static {v0}, Lcn/jiguang/b/a/a;->removeKey(Ljava/lang/String;)V

    return-void
.end method

.method public static v()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcn/jiguang/b/a;->h:Ljava/lang/String;

    invoke-static {v0}, Lcn/jiguang/e/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcn/jiguang/b/a;->e:Landroid/content/Context;

    sget-object v1, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcn/jiguang/api/MultiSpHelper;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/jiguang/b/a;->h:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public static w()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcn/jiguang/b/a;->e:Landroid/content/Context;

    sget-object v1, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcn/jiguang/api/MultiSpHelper;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static x()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/jiguang/b/a/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static y()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcn/jiguang/b/a;->e:Landroid/content/Context;

    sget-object v1, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcn/jiguang/api/MultiSpHelper;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static z()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcn/jiguang/b/a;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/jiguang/b/a;->e:Landroid/content/Context;

    sget-object v1, Lcn/jiguang/b/a/a;->z:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcn/jiguang/api/MultiSpHelper;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/jiguang/b/a;->f:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcn/jiguang/b/a;->f:Ljava/lang/String;

    return-object v0
.end method
