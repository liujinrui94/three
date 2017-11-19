.class public Lcn/bmob/push/autobahn/Utf8Validator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ACCEPT:I = 0x0

.field private static final DFA:[I

.field private static final REJECT:I = 0x1


# instance fields
.field private L:I

.field private mPos:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v2, 0x9

    const/4 v6, 0x3

    const/4 v5, 0x7

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 37
    const/16 v0, 0x190

    new-array v0, v0, [I

    const/16 v1, 0x80

    .line 42
    aput v3, v0, v1

    const/16 v1, 0x81

    aput v3, v0, v1

    const/16 v1, 0x82

    aput v3, v0, v1

    const/16 v1, 0x83

    aput v3, v0, v1

    const/16 v1, 0x84

    aput v3, v0, v1

    const/16 v1, 0x85

    aput v3, v0, v1

    const/16 v1, 0x86

    aput v3, v0, v1

    const/16 v1, 0x87

    aput v3, v0, v1

    const/16 v1, 0x88

    aput v3, v0, v1

    const/16 v1, 0x89

    aput v3, v0, v1

    const/16 v1, 0x8a

    aput v3, v0, v1

    const/16 v1, 0x8b

    aput v3, v0, v1

    const/16 v1, 0x8c

    aput v3, v0, v1

    const/16 v1, 0x8d

    aput v3, v0, v1

    const/16 v1, 0x8e

    aput v3, v0, v1

    const/16 v1, 0x8f

    aput v3, v0, v1

    const/16 v1, 0x90

    aput v2, v0, v1

    const/16 v1, 0x91

    aput v2, v0, v1

    const/16 v1, 0x92

    aput v2, v0, v1

    const/16 v1, 0x93

    aput v2, v0, v1

    const/16 v1, 0x94

    aput v2, v0, v1

    const/16 v1, 0x95

    aput v2, v0, v1

    const/16 v1, 0x96

    aput v2, v0, v1

    const/16 v1, 0x97

    aput v2, v0, v1

    const/16 v1, 0x98

    aput v2, v0, v1

    const/16 v1, 0x99

    aput v2, v0, v1

    const/16 v1, 0x9a

    aput v2, v0, v1

    const/16 v1, 0x9b

    aput v2, v0, v1

    const/16 v1, 0x9c

    aput v2, v0, v1

    const/16 v1, 0x9d

    aput v2, v0, v1

    const/16 v1, 0x9e

    aput v2, v0, v1

    const/16 v1, 0x9f

    aput v2, v0, v1

    const/16 v1, 0xa0

    .line 43
    aput v5, v0, v1

    const/16 v1, 0xa1

    aput v5, v0, v1

    const/16 v1, 0xa2

    aput v5, v0, v1

    const/16 v1, 0xa3

    aput v5, v0, v1

    const/16 v1, 0xa4

    aput v5, v0, v1

    const/16 v1, 0xa5

    aput v5, v0, v1

    const/16 v1, 0xa6

    aput v5, v0, v1

    const/16 v1, 0xa7

    aput v5, v0, v1

    const/16 v1, 0xa8

    aput v5, v0, v1

    const/16 v1, 0xa9

    aput v5, v0, v1

    const/16 v1, 0xaa

    aput v5, v0, v1

    const/16 v1, 0xab

    aput v5, v0, v1

    const/16 v1, 0xac

    aput v5, v0, v1

    const/16 v1, 0xad

    aput v5, v0, v1

    const/16 v1, 0xae

    aput v5, v0, v1

    const/16 v1, 0xaf

    aput v5, v0, v1

    const/16 v1, 0xb0

    aput v5, v0, v1

    const/16 v1, 0xb1

    aput v5, v0, v1

    const/16 v1, 0xb2

    aput v5, v0, v1

    const/16 v1, 0xb3

    aput v5, v0, v1

    const/16 v1, 0xb4

    aput v5, v0, v1

    const/16 v1, 0xb5

    aput v5, v0, v1

    const/16 v1, 0xb6

    aput v5, v0, v1

    const/16 v1, 0xb7

    aput v5, v0, v1

    const/16 v1, 0xb8

    aput v5, v0, v1

    const/16 v1, 0xb9

    aput v5, v0, v1

    const/16 v1, 0xba

    aput v5, v0, v1

    const/16 v1, 0xbb

    aput v5, v0, v1

    const/16 v1, 0xbc

    aput v5, v0, v1

    const/16 v1, 0xbd

    aput v5, v0, v1

    const/16 v1, 0xbe

    aput v5, v0, v1

    const/16 v1, 0xbf

    aput v5, v0, v1

    const/16 v1, 0xc0

    .line 44
    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0xc1

    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0xc2

    aput v4, v0, v1

    const/16 v1, 0xc3

    aput v4, v0, v1

    const/16 v1, 0xc4

    aput v4, v0, v1

    const/16 v1, 0xc5

    aput v4, v0, v1

    const/16 v1, 0xc6

    aput v4, v0, v1

    const/16 v1, 0xc7

    aput v4, v0, v1

    const/16 v1, 0xc8

    aput v4, v0, v1

    const/16 v1, 0xc9

    aput v4, v0, v1

    const/16 v1, 0xca

    aput v4, v0, v1

    const/16 v1, 0xcb

    aput v4, v0, v1

    const/16 v1, 0xcc

    aput v4, v0, v1

    const/16 v1, 0xcd

    aput v4, v0, v1

    const/16 v1, 0xce

    aput v4, v0, v1

    const/16 v1, 0xcf

    aput v4, v0, v1

    const/16 v1, 0xd0

    aput v4, v0, v1

    const/16 v1, 0xd1

    aput v4, v0, v1

    const/16 v1, 0xd2

    aput v4, v0, v1

    const/16 v1, 0xd3

    aput v4, v0, v1

    const/16 v1, 0xd4

    aput v4, v0, v1

    const/16 v1, 0xd5

    aput v4, v0, v1

    const/16 v1, 0xd6

    aput v4, v0, v1

    const/16 v1, 0xd7

    aput v4, v0, v1

    const/16 v1, 0xd8

    aput v4, v0, v1

    const/16 v1, 0xd9

    aput v4, v0, v1

    const/16 v1, 0xda

    aput v4, v0, v1

    const/16 v1, 0xdb

    aput v4, v0, v1

    const/16 v1, 0xdc

    aput v4, v0, v1

    const/16 v1, 0xdd

    aput v4, v0, v1

    const/16 v1, 0xde

    aput v4, v0, v1

    const/16 v1, 0xdf

    aput v4, v0, v1

    const/16 v1, 0xe0

    .line 45
    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0xe1

    aput v6, v0, v1

    const/16 v1, 0xe2

    aput v6, v0, v1

    const/16 v1, 0xe3

    aput v6, v0, v1

    const/16 v1, 0xe4

    aput v6, v0, v1

    const/16 v1, 0xe5

    aput v6, v0, v1

    const/16 v1, 0xe6

    aput v6, v0, v1

    const/16 v1, 0xe7

    aput v6, v0, v1

    const/16 v1, 0xe8

    aput v6, v0, v1

    const/16 v1, 0xe9

    aput v6, v0, v1

    const/16 v1, 0xea

    aput v6, v0, v1

    const/16 v1, 0xeb

    aput v6, v0, v1

    const/16 v1, 0xec

    aput v6, v0, v1

    const/16 v1, 0xed

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0xee

    aput v6, v0, v1

    const/16 v1, 0xef

    aput v6, v0, v1

    const/16 v1, 0xf0

    .line 46
    const/16 v2, 0xb

    aput v2, v0, v1

    const/16 v1, 0xf1

    const/4 v2, 0x6

    aput v2, v0, v1

    const/16 v1, 0xf2

    const/4 v2, 0x6

    aput v2, v0, v1

    const/16 v1, 0xf3

    const/4 v2, 0x6

    aput v2, v0, v1

    const/16 v1, 0xf4

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0xf5

    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0xf6

    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0xf7

    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0xf8

    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0xf9

    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0xfa

    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0xfb

    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0xfc

    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0xfd

    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0xfe

    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0xff

    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0x101

    .line 47
    aput v3, v0, v1

    const/16 v1, 0x102

    aput v4, v0, v1

    const/16 v1, 0x103

    aput v6, v0, v1

    const/16 v1, 0x104

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x105

    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0x106

    aput v5, v0, v1

    const/16 v1, 0x107

    aput v3, v0, v1

    const/16 v1, 0x108

    aput v3, v0, v1

    const/16 v1, 0x109

    aput v3, v0, v1

    const/16 v1, 0x10a

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x10b

    const/4 v2, 0x6

    aput v2, v0, v1

    const/16 v1, 0x10c

    aput v3, v0, v1

    const/16 v1, 0x10d

    aput v3, v0, v1

    const/16 v1, 0x10e

    aput v3, v0, v1

    const/16 v1, 0x10f

    aput v3, v0, v1

    const/16 v1, 0x110

    .line 48
    aput v3, v0, v1

    const/16 v1, 0x111

    aput v3, v0, v1

    const/16 v1, 0x112

    aput v3, v0, v1

    const/16 v1, 0x113

    aput v3, v0, v1

    const/16 v1, 0x114

    aput v3, v0, v1

    const/16 v1, 0x115

    aput v3, v0, v1

    const/16 v1, 0x116

    aput v3, v0, v1

    const/16 v1, 0x117

    aput v3, v0, v1

    const/16 v1, 0x118

    aput v3, v0, v1

    const/16 v1, 0x119

    aput v3, v0, v1

    const/16 v1, 0x11a

    aput v3, v0, v1

    const/16 v1, 0x11b

    aput v3, v0, v1

    const/16 v1, 0x11c

    aput v3, v0, v1

    const/16 v1, 0x11d

    aput v3, v0, v1

    const/16 v1, 0x11e

    aput v3, v0, v1

    const/16 v1, 0x11f

    aput v3, v0, v1

    const/16 v1, 0x120

    aput v3, v0, v1

    const/16 v1, 0x122

    aput v3, v0, v1

    const/16 v1, 0x123

    aput v3, v0, v1

    const/16 v1, 0x124

    aput v3, v0, v1

    const/16 v1, 0x125

    aput v3, v0, v1

    const/16 v1, 0x126

    aput v3, v0, v1

    const/16 v1, 0x128

    aput v3, v0, v1

    const/16 v1, 0x12a

    aput v3, v0, v1

    const/16 v1, 0x12b

    aput v3, v0, v1

    const/16 v1, 0x12c

    aput v3, v0, v1

    const/16 v1, 0x12d

    aput v3, v0, v1

    const/16 v1, 0x12e

    aput v3, v0, v1

    const/16 v1, 0x12f

    aput v3, v0, v1

    const/16 v1, 0x130

    .line 49
    aput v3, v0, v1

    const/16 v1, 0x131

    aput v4, v0, v1

    const/16 v1, 0x132

    aput v3, v0, v1

    const/16 v1, 0x133

    aput v3, v0, v1

    const/16 v1, 0x134

    aput v3, v0, v1

    const/16 v1, 0x135

    aput v3, v0, v1

    const/16 v1, 0x136

    aput v3, v0, v1

    const/16 v1, 0x137

    aput v4, v0, v1

    const/16 v1, 0x138

    aput v3, v0, v1

    const/16 v1, 0x139

    aput v4, v0, v1

    const/16 v1, 0x13a

    aput v3, v0, v1

    const/16 v1, 0x13b

    aput v3, v0, v1

    const/16 v1, 0x13c

    aput v3, v0, v1

    const/16 v1, 0x13d

    aput v3, v0, v1

    const/16 v1, 0x13e

    aput v3, v0, v1

    const/16 v1, 0x13f

    aput v3, v0, v1

    const/16 v1, 0x140

    aput v3, v0, v1

    const/16 v1, 0x141

    aput v3, v0, v1

    const/16 v1, 0x142

    aput v3, v0, v1

    const/16 v1, 0x143

    aput v3, v0, v1

    const/16 v1, 0x144

    aput v3, v0, v1

    const/16 v1, 0x145

    aput v3, v0, v1

    const/16 v1, 0x146

    aput v3, v0, v1

    const/16 v1, 0x147

    aput v4, v0, v1

    const/16 v1, 0x148

    aput v3, v0, v1

    const/16 v1, 0x149

    aput v3, v0, v1

    const/16 v1, 0x14a

    aput v3, v0, v1

    const/16 v1, 0x14b

    aput v3, v0, v1

    const/16 v1, 0x14c

    aput v3, v0, v1

    const/16 v1, 0x14d

    aput v3, v0, v1

    const/16 v1, 0x14e

    aput v3, v0, v1

    const/16 v1, 0x14f

    aput v3, v0, v1

    const/16 v1, 0x150

    .line 50
    aput v3, v0, v1

    const/16 v1, 0x151

    aput v4, v0, v1

    const/16 v1, 0x152

    aput v3, v0, v1

    const/16 v1, 0x153

    aput v3, v0, v1

    const/16 v1, 0x154

    aput v3, v0, v1

    const/16 v1, 0x155

    aput v3, v0, v1

    const/16 v1, 0x156

    aput v3, v0, v1

    const/16 v1, 0x157

    aput v3, v0, v1

    const/16 v1, 0x158

    aput v3, v0, v1

    const/16 v1, 0x159

    aput v4, v0, v1

    const/16 v1, 0x15a

    aput v3, v0, v1

    const/16 v1, 0x15b

    aput v3, v0, v1

    const/16 v1, 0x15c

    aput v3, v0, v1

    const/16 v1, 0x15d

    aput v3, v0, v1

    const/16 v1, 0x15e

    aput v3, v0, v1

    const/16 v1, 0x15f

    aput v3, v0, v1

    const/16 v1, 0x160

    aput v3, v0, v1

    const/16 v1, 0x161

    aput v3, v0, v1

    const/16 v1, 0x162

    aput v3, v0, v1

    const/16 v1, 0x163

    aput v3, v0, v1

    const/16 v1, 0x164

    aput v3, v0, v1

    const/16 v1, 0x165

    aput v3, v0, v1

    const/16 v1, 0x166

    aput v3, v0, v1

    const/16 v1, 0x167

    aput v6, v0, v1

    const/16 v1, 0x168

    aput v3, v0, v1

    const/16 v1, 0x169

    aput v6, v0, v1

    const/16 v1, 0x16a

    aput v3, v0, v1

    const/16 v1, 0x16b

    aput v3, v0, v1

    const/16 v1, 0x16c

    aput v3, v0, v1

    const/16 v1, 0x16d

    aput v3, v0, v1

    const/16 v1, 0x16e

    aput v3, v0, v1

    const/16 v1, 0x16f

    aput v3, v0, v1

    const/16 v1, 0x170

    .line 51
    aput v3, v0, v1

    const/16 v1, 0x171

    aput v6, v0, v1

    const/16 v1, 0x172

    aput v3, v0, v1

    const/16 v1, 0x173

    aput v3, v0, v1

    const/16 v1, 0x174

    aput v3, v0, v1

    const/16 v1, 0x175

    aput v3, v0, v1

    const/16 v1, 0x176

    aput v3, v0, v1

    const/16 v1, 0x177

    aput v6, v0, v1

    const/16 v1, 0x178

    aput v3, v0, v1

    const/16 v1, 0x179

    aput v6, v0, v1

    const/16 v1, 0x17a

    aput v3, v0, v1

    const/16 v1, 0x17b

    aput v3, v0, v1

    const/16 v1, 0x17c

    aput v3, v0, v1

    const/16 v1, 0x17d

    aput v3, v0, v1

    const/16 v1, 0x17e

    aput v3, v0, v1

    const/16 v1, 0x17f

    aput v3, v0, v1

    const/16 v1, 0x180

    aput v3, v0, v1

    const/16 v1, 0x181

    aput v6, v0, v1

    const/16 v1, 0x182

    aput v3, v0, v1

    const/16 v1, 0x183

    aput v3, v0, v1

    const/16 v1, 0x184

    aput v3, v0, v1

    const/16 v1, 0x185

    aput v3, v0, v1

    const/16 v1, 0x186

    aput v3, v0, v1

    const/16 v1, 0x187

    aput v3, v0, v1

    const/16 v1, 0x188

    aput v3, v0, v1

    const/16 v1, 0x189

    aput v3, v0, v1

    const/16 v1, 0x18a

    aput v3, v0, v1

    const/16 v1, 0x18b

    aput v3, v0, v1

    const/16 v1, 0x18c

    aput v3, v0, v1

    const/16 v1, 0x18d

    aput v3, v0, v1

    const/16 v1, 0x18e

    aput v3, v0, v1

    const/16 v1, 0x18f

    aput v3, v0, v1

    .line 37
    sput-object v0, Lcn/bmob/push/autobahn/Utf8Validator;->DFA:[I

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p0}, Lcn/bmob/push/autobahn/Utf8Validator;->reset()V

    .line 66
    return-void
.end method


# virtual methods
.method public final Code([B)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 126
    array-length v3, p1

    move v2, v0

    .line 1108
    :goto_0
    add-int/lit8 v4, v3, 0x0

    if-lt v2, v4, :cond_0

    .line 1115
    iget v0, p0, Lcn/bmob/push/autobahn/Utf8Validator;->mPos:I

    add-int/2addr v0, v3

    iput v0, p0, Lcn/bmob/push/autobahn/Utf8Validator;->mPos:I

    move v0, v1

    .line 1112
    :goto_1
    return v0

    .line 1109
    :cond_0
    sget-object v4, Lcn/bmob/push/autobahn/Utf8Validator;->DFA:[I

    iget v5, p0, Lcn/bmob/push/autobahn/Utf8Validator;->L:I

    shl-int/lit8 v5, v5, 0x4

    add-int/lit16 v5, v5, 0x100

    sget-object v6, Lcn/bmob/push/autobahn/Utf8Validator;->DFA:[I

    aget-byte v7, p1, v2

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    add-int/2addr v5, v6

    aget v4, v4, v5

    iput v4, p0, Lcn/bmob/push/autobahn/Utf8Validator;->L:I

    .line 1110
    iget v4, p0, Lcn/bmob/push/autobahn/Utf8Validator;->L:I

    if-ne v4, v1, :cond_1

    .line 1111
    iget v1, p0, Lcn/bmob/push/autobahn/Utf8Validator;->mPos:I

    add-int/2addr v1, v2

    iput v1, p0, Lcn/bmob/push/autobahn/Utf8Validator;->mPos:I

    goto :goto_1

    .line 1108
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public final isValid()Z
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcn/bmob/push/autobahn/Utf8Validator;->L:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    iput v0, p0, Lcn/bmob/push/autobahn/Utf8Validator;->L:I

    .line 74
    iput v0, p0, Lcn/bmob/push/autobahn/Utf8Validator;->mPos:I

    .line 75
    return-void
.end method
