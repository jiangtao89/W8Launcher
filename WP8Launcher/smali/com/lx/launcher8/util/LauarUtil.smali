.class public Lcom/lx/launcher8/util/LauarUtil;
.super Ljava/lang/Object;
.source "LauarUtil.java"


# static fields
.field public static daySTrPreArray:[Ljava/lang/String;

.field public static dayStrArray:[Ljava/lang/String;

.field static final lunarInfo:[J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u521d"

    aput-object v1, v0, v2

    const-string v1, "\u5341"

    aput-object v1, v0, v3

    const-string v1, "\u5eff"

    aput-object v1, v0, v4

    const-string v1, "\u5345"

    aput-object v1, v0, v5

    const-string v1, " "

    aput-object v1, v0, v6

    sput-object v0, Lcom/lx/launcher8/util/LauarUtil;->daySTrPreArray:[Ljava/lang/String;

    .line 9
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    const-string v1, "\u4e00"

    aput-object v1, v0, v3

    const-string v1, "\u4e8c"

    aput-object v1, v0, v4

    const-string v1, "\u4e09"

    aput-object v1, v0, v5

    const-string v1, "\u56db"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "\u4e94"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u516d"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 10
    const-string v2, "\u4e03"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u516b"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u4e5d"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u5341"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u5341\u4e00"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u5341\u4e8c"

    aput-object v2, v0, v1

    .line 9
    sput-object v0, Lcom/lx/launcher8/util/LauarUtil;->dayStrArray:[Ljava/lang/String;

    .line 15
    const/16 v0, 0x96

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lx/launcher8/util/LauarUtil;->lunarInfo:[J

    .line 6
    return-void

    .line 15
    nop

    :array_0
    .array-data 0x8
        0xd8t 0x4bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe0t 0x4at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x70t 0xa5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd5t 0x54t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0xd2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xd9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x54t 0x65t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x56t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x9at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd2t 0x55t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe0t 0x4at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb6t 0xa5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0xa4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xd2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x55t 0xd2t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x40t 0xb5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xd6t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa2t 0xadt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0x95t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x77t 0x49t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x70t 0x49t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0xa4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb5t 0xb4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0x6at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x40t 0x6dt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x54t 0xabt 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0x2bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x70t 0x95t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf2t 0x52t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x70t 0x49t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x66t 0x65t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xd4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xeat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x95t 0x6et 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x5at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0x2bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe3t 0x86t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe0t 0x92t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd7t 0xc8t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xc9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xd4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa6t 0xd8t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xb5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x56t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb4t 0xa5t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x25t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x92t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb2t 0xd2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xa9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x57t 0xb5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x6ct 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xb5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x55t 0x53t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x4dt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0xa5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x73t 0x45t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x52t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa8t 0xa9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xe9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x6at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa6t 0xaet 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xabt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0x4bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe4t 0xaat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x70t 0xa5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0x52t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x63t 0xf2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xd9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x57t 0x5bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x56t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x96t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd5t 0x4dt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x4at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0xa4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd4t 0xd4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xd2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x58t 0xd5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x40t 0xb5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xb5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa6t 0x95t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0x95t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0x49t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x74t 0xa9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0xa4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x7at 0xb2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0x6at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x40t 0x6dt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x46t 0xaft 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0xabt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x70t 0x95t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf5t 0x4at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x70t 0x49t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa3t 0x74t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xeat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x58t 0x6bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc0t 0x55t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0xabt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd5t 0x96t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe0t 0x92t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0xc9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x54t 0xd9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xd4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xdat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x52t 0x75t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x56t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb7t 0xabt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x25t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x92t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb5t 0xcat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xa9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xb4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa4t 0xbat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xadt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd9t 0x55t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x4bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0xa5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x76t 0x51t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0x52t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x30t 0xa9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x54t 0x79t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x6at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xadt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x52t 0x5bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0x4bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe6t 0xa6t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe0t 0xa4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0xd2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x65t 0xeat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x30t 0xd5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x5at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa3t 0x76t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x96t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd7t 0x4bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x4at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0xa4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb6t 0xd0t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xd2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x20t 0xd5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x45t 0xddt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xb5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x56t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb2t 0x55t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0x49t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x77t 0xa5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0xa4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xaat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x55t 0xb2t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x20t 0x6dt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xadt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final AnimalsYear(I)Ljava/lang/String;
    .locals 3
    .parameter "y"

    .prologue
    .line 74
    const/16 v1, 0xc

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u9f20"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u725b"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u864e"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u5154"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u9f99"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u86c7"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 75
    const-string v2, "\u9a6c"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u7f8a"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u7334"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u9e21"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u72d7"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u732a"

    aput-object v2, v0, v1

    .line 76
    .local v0, Animals:[Ljava/lang/String;
    add-int/lit8 v1, p0, -0x4

    rem-int/lit8 v1, v1, 0xc

    aget-object v1, v0, v1

    return-object v1
.end method

.method public static final calElement(III)[J
    .locals 13
    .parameter "y"
    .parameter "m"
    .parameter "d"

    .prologue
    .line 171
    const/4 v8, 0x7

    new-array v3, v8, [J

    .line 172
    .local v3, nongDate:[J
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v7, 0x0

    .local v7, temp:I
    const/4 v2, 0x0

    .line 173
    .local v2, leap:I
    new-instance v0, Ljava/util/Date;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1f

    invoke-direct {v0, v8, v9, v10}, Ljava/util/Date;-><init>(III)V

    .line 174
    .local v0, baseDate:Ljava/util/Date;
    new-instance v4, Ljava/util/Date;

    add-int/lit16 v8, p0, -0x76c

    add-int/lit8 v9, p1, -0x1

    invoke-direct {v4, v8, v9, p2}, Ljava/util/Date;-><init>(III)V

    .line 175
    .local v4, objDate:Ljava/util/Date;
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/32 v10, 0x5265c00

    div-long v5, v8, v10

    .line 176
    .local v5, offset:J
    const/4 v8, 0x5

    const-wide/16 v9, 0x28

    add-long/2addr v9, v5

    aput-wide v9, v3, v8

    .line 177
    const/4 v8, 0x4

    const-wide/16 v9, 0xe

    aput-wide v9, v3, v8

    .line 179
    const/16 v1, 0x76c

    :goto_0
    const/16 v8, 0x802

    if-ge v1, v8, :cond_0

    const-wide/16 v8, 0x0

    cmp-long v8, v5, v8

    if-gtz v8, :cond_5

    .line 184
    :cond_0
    const-wide/16 v8, 0x0

    cmp-long v8, v5, v8

    if-gez v8, :cond_1

    .line 185
    int-to-long v8, v7

    add-long/2addr v5, v8

    .line 186
    add-int/lit8 v1, v1, -0x1

    .line 187
    const/4 v8, 0x4

    aget-wide v9, v3, v8

    const-wide/16 v11, 0xc

    sub-long/2addr v9, v11

    aput-wide v9, v3, v8

    .line 189
    :cond_1
    const/4 v8, 0x0

    int-to-long v9, v1

    aput-wide v9, v3, v8

    .line 190
    const/4 v8, 0x3

    add-int/lit16 v9, v1, -0x748

    int-to-long v9, v9

    aput-wide v9, v3, v8

    .line 191
    invoke-static {v1}, Lcom/lx/launcher8/util/LauarUtil;->leapMonth(I)I

    move-result v2

    .line 192
    const/4 v8, 0x6

    const-wide/16 v9, 0x0

    aput-wide v9, v3, v8

    .line 194
    const/4 v1, 0x1

    :goto_1
    const/16 v8, 0xd

    if-ge v1, v8, :cond_2

    const-wide/16 v8, 0x0

    cmp-long v8, v5, v8

    if-gtz v8, :cond_6

    .line 212
    :cond_2
    const-wide/16 v8, 0x0

    cmp-long v8, v5, v8

    if-nez v8, :cond_3

    if-lez v2, :cond_3

    add-int/lit8 v8, v2, 0x1

    if-ne v1, v8, :cond_3

    .line 213
    const/4 v8, 0x6

    aget-wide v8, v3, v8

    const-wide/16 v10, 0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_a

    .line 214
    const/4 v8, 0x6

    const-wide/16 v9, 0x0

    aput-wide v9, v3, v8

    .line 221
    :cond_3
    :goto_2
    const-wide/16 v8, 0x0

    cmp-long v8, v5, v8

    if-gez v8, :cond_4

    .line 222
    int-to-long v8, v7

    add-long/2addr v5, v8

    .line 223
    add-int/lit8 v1, v1, -0x1

    .line 224
    const/4 v8, 0x4

    aget-wide v9, v3, v8

    const-wide/16 v11, 0x1

    sub-long/2addr v9, v11

    aput-wide v9, v3, v8

    .line 226
    :cond_4
    const/4 v8, 0x1

    int-to-long v9, v1

    aput-wide v9, v3, v8

    .line 227
    const/4 v8, 0x2

    const-wide/16 v9, 0x1

    add-long/2addr v9, v5

    aput-wide v9, v3, v8

    .line 228
    return-object v3

    .line 180
    :cond_5
    invoke-static {v1}, Lcom/lx/launcher8/util/LauarUtil;->lYearDays(I)I

    move-result v7

    .line 181
    int-to-long v8, v7

    sub-long/2addr v5, v8

    .line 182
    const/4 v8, 0x4

    aget-wide v9, v3, v8

    const-wide/16 v11, 0xc

    add-long/2addr v9, v11

    aput-wide v9, v3, v8

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 196
    :cond_6
    if-lez v2, :cond_9

    add-int/lit8 v8, v2, 0x1

    if-ne v1, v8, :cond_9

    const/4 v8, 0x6

    aget-wide v8, v3, v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_9

    .line 197
    add-int/lit8 v1, v1, -0x1

    .line 198
    const/4 v8, 0x6

    const-wide/16 v9, 0x1

    aput-wide v9, v3, v8

    .line 199
    const/4 v8, 0x0

    aget-wide v8, v3, v8

    long-to-int v8, v8

    invoke-static {v8}, Lcom/lx/launcher8/util/LauarUtil;->leapDays(I)I

    move-result v7

    .line 205
    :goto_3
    const/4 v8, 0x6

    aget-wide v8, v3, v8

    const-wide/16 v10, 0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_7

    add-int/lit8 v8, v2, 0x1

    if-ne v1, v8, :cond_7

    .line 206
    const/4 v8, 0x6

    const-wide/16 v9, 0x0

    aput-wide v9, v3, v8

    .line 207
    :cond_7
    int-to-long v8, v7

    sub-long/2addr v5, v8

    .line 208
    const/4 v8, 0x6

    aget-wide v8, v3, v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_8

    .line 209
    const/4 v8, 0x4

    aget-wide v9, v3, v8

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    aput-wide v9, v3, v8

    .line 194
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 201
    :cond_9
    const/4 v8, 0x0

    aget-wide v8, v3, v8

    long-to-int v8, v8

    invoke-static {v8, v1}, Lcom/lx/launcher8/util/LauarUtil;->monthDays(II)I

    move-result v7

    goto :goto_3

    .line 216
    :cond_a
    const/4 v8, 0x6

    const-wide/16 v9, 0x1

    aput-wide v9, v3, v8

    .line 217
    add-int/lit8 v1, v1, -0x1

    .line 218
    const/4 v8, 0x4

    aget-wide v9, v3, v8

    const-wide/16 v11, 0x1

    sub-long/2addr v9, v11

    aput-wide v9, v3, v8

    goto/16 :goto_2
.end method

.method public static final cyclical(I)Ljava/lang/String;
    .locals 2
    .parameter "y"

    .prologue
    .line 91
    add-int/lit16 v1, p0, -0x76c

    add-int/lit8 v0, v1, 0x24

    .line 92
    .local v0, num:I
    invoke-static {v0}, Lcom/lx/launcher8/util/LauarUtil;->cyclicalm(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final cyclicalm(I)Ljava/lang/String;
    .locals 9
    .parameter "num"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 82
    const/16 v2, 0xa

    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "\u7532"

    aput-object v2, v0, v4

    const-string v2, "\u4e59"

    aput-object v2, v0, v5

    const-string v2, "\u4e19"

    aput-object v2, v0, v6

    const-string v2, "\u4e01"

    aput-object v2, v0, v7

    const-string v2, "\u620a"

    aput-object v2, v0, v8

    const/4 v2, 0x5

    const-string v3, "\u5df1"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "\u5e9a"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    .line 83
    const-string v3, "\u8f9b"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "\u58ec"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "\u7678"

    aput-object v3, v0, v2

    .line 84
    .local v0, Gan:[Ljava/lang/String;
    const/16 v2, 0xc

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\u5b50"

    aput-object v2, v1, v4

    const-string v2, "\u4e11"

    aput-object v2, v1, v5

    const-string v2, "\u5bc5"

    aput-object v2, v1, v6

    const-string v2, "\u536f"

    aput-object v2, v1, v7

    const-string v2, "\u8fb0"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "\u5df3"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\u5348"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 85
    const-string v3, "\u672a"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "\u7533"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "\u9149"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "\u620c"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "\u4ea5"

    aput-object v3, v1, v2

    .line 86
    .local v1, Zhi:[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    rem-int/lit8 v3, p0, 0xa

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    rem-int/lit8 v3, p0, 0xc

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getLauar(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 9
    .parameter "cld"

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x1

    .line 244
    invoke-virtual {p0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 245
    .local v4, year:I
    invoke-virtual {p0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    .line 246
    .local v2, month:I
    const/4 v5, 0x5

    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 248
    .local v0, day:I
    invoke-static {v4, v2, v0}, Lcom/lx/launcher8/util/LauarUtil;->calElement(III)[J

    move-result-object v1

    .line 249
    .local v1, lauarStrArray:[J
    sget-object v5, Lcom/lx/launcher8/util/LauarUtil;->dayStrArray:[Ljava/lang/String;

    aget-wide v6, v1, v6

    long-to-int v6, v6

    aget-object v3, v5, v6

    .line 250
    .local v3, monthStr:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u3000\u519c\u5386"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-wide v6, v1, v8

    long-to-int v6, v6

    invoke-static {v6}, Lcom/lx/launcher8/util/LauarUtil;->getchina(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static getchina(I)Ljava/lang/String;
    .locals 4
    .parameter "day"

    .prologue
    .line 232
    const/16 v1, 0xa

    if-ne p0, v1, :cond_0

    .line 233
    const-string v0, "\u521d\u5341"

    .line 240
    :goto_0
    return-object v0

    .line 234
    :cond_0
    const/16 v1, 0x14

    if-ne p0, v1, :cond_1

    .line 235
    const-string v0, "\u4e8c\u5341"

    goto :goto_0

    .line 236
    :cond_1
    const/16 v1, 0x1e

    if-ne p0, v1, :cond_2

    .line 237
    const-string v0, "\u4e09\u5341"

    goto :goto_0

    .line 238
    :cond_2
    sget-object v1, Lcom/lx/launcher8/util/LauarUtil;->daySTrPreArray:[Ljava/lang/String;

    div-int/lit8 v2, p0, 0xa

    aget-object v0, v1, v2

    .line 239
    .local v0, a:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/lx/launcher8/util/LauarUtil;->dayStrArray:[Ljava/lang/String;

    rem-int/lit8 v3, p0, 0xa

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    goto :goto_0
.end method

.method public static final lYearDays(I)I
    .locals 6
    .parameter "y"

    .prologue
    .line 40
    const/16 v1, 0x15c

    .line 41
    .local v1, sum:I
    const v0, 0x8000

    .local v0, i:I
    :goto_0
    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    .line 45
    invoke-static {p0}, Lcom/lx/launcher8/util/LauarUtil;->leapDays(I)I

    move-result v2

    add-int/2addr v2, v1

    return v2

    .line 42
    :cond_0
    sget-object v2, Lcom/lx/launcher8/util/LauarUtil;->lunarInfo:[J

    add-int/lit16 v3, p0, -0x76c

    aget-wide v2, v2, v3

    int-to-long v4, v0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 41
    :cond_1
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final leapDays(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 50
    invoke-static {p0}, Lcom/lx/launcher8/util/LauarUtil;->leapMonth(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    sget-object v0, Lcom/lx/launcher8/util/LauarUtil;->lunarInfo:[J

    add-int/lit16 v1, p0, -0x76c

    aget-wide v0, v0, v1

    const-wide/32 v2, 0x10000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 52
    const/16 v0, 0x1e

    .line 56
    :goto_0
    return v0

    .line 54
    :cond_0
    const/16 v0, 0x1d

    goto :goto_0

    .line 56
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final leapMonth(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 61
    sget-object v0, Lcom/lx/launcher8/util/LauarUtil;->lunarInfo:[J

    add-int/lit16 v1, p0, -0x76c

    aget-wide v0, v0, v1

    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .parameter "args"

    .prologue
    .line 254
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 255
    .local v0, cld:Ljava/util/Calendar;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v2, 0x91

    if-lt v1, v2, :cond_0

    .line 258
    return-void

    .line 256
    :cond_0
    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 255
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static final monthDays(II)I
    .locals 4
    .parameter "y"
    .parameter "m"

    .prologue
    .line 66
    sget-object v0, Lcom/lx/launcher8/util/LauarUtil;->lunarInfo:[J

    add-int/lit16 v1, p0, -0x76c

    aget-wide v0, v0, v1

    const/high16 v2, 0x1

    shr-int/2addr v2, p1

    int-to-long v2, v2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 67
    const/16 v0, 0x1d

    .line 69
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1e

    goto :goto_0
.end method


# virtual methods
.method public final Lunar(II)[J
    .locals 18
    .parameter "y"
    .parameter "m"

    .prologue
    .line 99
    const/16 v13, 0xc

    new-array v11, v13, [I

    fill-array-data v11, :array_0

    .line 100
    .local v11, year20:[I
    const/16 v13, 0xc

    new-array v10, v13, [I

    const/4 v13, 0x1

    const/4 v14, 0x3

    aput v14, v10, v13

    const/4 v13, 0x3

    const/4 v14, 0x1

    aput v14, v10, v13

    const/4 v13, 0x5

    const/4 v14, 0x1

    aput v14, v10, v13

    const/16 v13, 0x8

    const/4 v14, 0x1

    aput v14, v10, v13

    const/16 v13, 0xa

    const/4 v14, 0x1

    aput v14, v10, v13

    .line 101
    .local v10, year19:[I
    const/16 v13, 0xc

    new-array v12, v13, [I

    const/4 v13, 0x1

    const/4 v14, 0x3

    aput v14, v12, v13

    const/4 v13, 0x2

    const/4 v14, 0x1

    aput v14, v12, v13

    const/4 v13, 0x3

    const/4 v14, 0x2

    aput v14, v12, v13

    const/4 v13, 0x4

    const/4 v14, 0x1

    aput v14, v12, v13

    const/4 v13, 0x5

    const/4 v14, 0x2

    aput v14, v12, v13

    const/4 v13, 0x6

    const/4 v14, 0x1

    aput v14, v12, v13

    const/4 v13, 0x7

    const/4 v14, 0x1

    aput v14, v12, v13

    const/16 v13, 0x8

    const/4 v14, 0x2

    aput v14, v12, v13

    const/16 v13, 0x9

    const/4 v14, 0x1

    aput v14, v12, v13

    const/16 v13, 0xa

    const/4 v14, 0x2

    aput v14, v12, v13

    const/16 v13, 0xb

    const/4 v14, 0x1

    aput v14, v12, v13

    .line 102
    .local v12, year2000:[I
    const/4 v13, 0x7

    new-array v5, v13, [J

    .line 103
    .local v5, nongDate:[J
    const/4 v3, 0x0

    .local v3, i:I
    const/4 v9, 0x0

    .local v9, temp:I
    const/4 v4, 0x0

    .line 104
    .local v4, leap:I
    new-instance v2, Ljava/util/Date;

    const/16 v13, 0x76c

    const/4 v14, 0x1

    const/16 v15, 0x1f

    invoke-direct {v2, v13, v14, v15}, Ljava/util/Date;-><init>(III)V

    .line 105
    .local v2, baseDate:Ljava/util/Date;
    new-instance v6, Ljava/util/Date;

    const/4 v13, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v6, v0, v1, v13}, Ljava/util/Date;-><init>(III)V

    .line 106
    .local v6, objDate:Ljava/util/Date;
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    sub-long/2addr v13, v15

    const-wide/32 v15, 0x5265c00

    div-long v7, v13, v15

    .line 107
    .local v7, offset:J
    const/16 v13, 0x7d0

    move/from16 v0, p1

    if-ge v0, v13, :cond_0

    .line 108
    add-int/lit8 v13, p2, -0x1

    aget v13, v10, v13

    int-to-long v13, v13

    add-long/2addr v7, v13

    .line 109
    :cond_0
    const/16 v13, 0x7d0

    move/from16 v0, p1

    if-le v0, v13, :cond_1

    .line 110
    add-int/lit8 v13, p2, -0x1

    aget v13, v11, v13

    int-to-long v13, v13

    add-long/2addr v7, v13

    .line 111
    :cond_1
    const/16 v13, 0x7d0

    move/from16 v0, p1

    if-ne v0, v13, :cond_2

    .line 112
    add-int/lit8 v13, p2, -0x1

    aget v13, v12, v13

    int-to-long v13, v13

    add-long/2addr v7, v13

    .line 113
    :cond_2
    const/4 v13, 0x5

    const-wide/16 v14, 0x28

    add-long/2addr v14, v7

    aput-wide v14, v5, v13

    .line 114
    const/4 v13, 0x4

    const-wide/16 v14, 0xe

    aput-wide v14, v5, v13

    .line 116
    const/16 v3, 0x76c

    :goto_0
    const/16 v13, 0x802

    if-ge v3, v13, :cond_3

    const-wide/16 v13, 0x0

    cmp-long v13, v7, v13

    if-gtz v13, :cond_8

    .line 121
    :cond_3
    const-wide/16 v13, 0x0

    cmp-long v13, v7, v13

    if-gez v13, :cond_4

    .line 122
    int-to-long v13, v9

    add-long/2addr v7, v13

    .line 123
    add-int/lit8 v3, v3, -0x1

    .line 124
    const/4 v13, 0x4

    aget-wide v14, v5, v13

    const-wide/16 v16, 0xc

    sub-long v14, v14, v16

    aput-wide v14, v5, v13

    .line 126
    :cond_4
    const/4 v13, 0x0

    int-to-long v14, v3

    aput-wide v14, v5, v13

    .line 127
    const/4 v13, 0x3

    add-int/lit16 v14, v3, -0x748

    int-to-long v14, v14

    aput-wide v14, v5, v13

    .line 128
    invoke-static {v3}, Lcom/lx/launcher8/util/LauarUtil;->leapMonth(I)I

    move-result v4

    .line 129
    const/4 v13, 0x6

    const-wide/16 v14, 0x0

    aput-wide v14, v5, v13

    .line 131
    const/4 v3, 0x1

    :goto_1
    const/16 v13, 0xd

    if-ge v3, v13, :cond_5

    const-wide/16 v13, 0x0

    cmp-long v13, v7, v13

    if-gtz v13, :cond_9

    .line 149
    :cond_5
    const-wide/16 v13, 0x0

    cmp-long v13, v7, v13

    if-nez v13, :cond_6

    if-lez v4, :cond_6

    add-int/lit8 v13, v4, 0x1

    if-ne v3, v13, :cond_6

    .line 150
    const/4 v13, 0x6

    aget-wide v13, v5, v13

    const-wide/16 v15, 0x1

    cmp-long v13, v13, v15

    if-nez v13, :cond_d

    .line 151
    const/4 v13, 0x6

    const-wide/16 v14, 0x0

    aput-wide v14, v5, v13

    .line 158
    :cond_6
    :goto_2
    const-wide/16 v13, 0x0

    cmp-long v13, v7, v13

    if-gez v13, :cond_7

    .line 159
    int-to-long v13, v9

    add-long/2addr v7, v13

    .line 160
    add-int/lit8 v3, v3, -0x1

    .line 161
    const/4 v13, 0x4

    aget-wide v14, v5, v13

    const-wide/16 v16, 0x1

    sub-long v14, v14, v16

    aput-wide v14, v5, v13

    .line 163
    :cond_7
    const/4 v13, 0x1

    int-to-long v14, v3

    aput-wide v14, v5, v13

    .line 164
    const/4 v13, 0x2

    const-wide/16 v14, 0x1

    add-long/2addr v14, v7

    aput-wide v14, v5, v13

    .line 165
    return-object v5

    .line 117
    :cond_8
    invoke-static {v3}, Lcom/lx/launcher8/util/LauarUtil;->lYearDays(I)I

    move-result v9

    .line 118
    int-to-long v13, v9

    sub-long/2addr v7, v13

    .line 119
    const/4 v13, 0x4

    aget-wide v14, v5, v13

    const-wide/16 v16, 0xc

    add-long v14, v14, v16

    aput-wide v14, v5, v13

    .line 116
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 133
    :cond_9
    if-lez v4, :cond_c

    add-int/lit8 v13, v4, 0x1

    if-ne v3, v13, :cond_c

    const/4 v13, 0x6

    aget-wide v13, v5, v13

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-nez v13, :cond_c

    .line 134
    add-int/lit8 v3, v3, -0x1

    .line 135
    const/4 v13, 0x6

    const-wide/16 v14, 0x1

    aput-wide v14, v5, v13

    .line 136
    const/4 v13, 0x0

    aget-wide v13, v5, v13

    long-to-int v13, v13

    invoke-static {v13}, Lcom/lx/launcher8/util/LauarUtil;->leapDays(I)I

    move-result v9

    .line 142
    :goto_3
    const/4 v13, 0x6

    aget-wide v13, v5, v13

    const-wide/16 v15, 0x1

    cmp-long v13, v13, v15

    if-nez v13, :cond_a

    add-int/lit8 v13, v4, 0x1

    if-ne v3, v13, :cond_a

    .line 143
    const/4 v13, 0x6

    const-wide/16 v14, 0x0

    aput-wide v14, v5, v13

    .line 144
    :cond_a
    int-to-long v13, v9

    sub-long/2addr v7, v13

    .line 145
    const/4 v13, 0x6

    aget-wide v13, v5, v13

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-nez v13, :cond_b

    .line 146
    const/4 v13, 0x4

    aget-wide v14, v5, v13

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    aput-wide v14, v5, v13

    .line 131
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 138
    :cond_c
    const/4 v13, 0x0

    aget-wide v13, v5, v13

    long-to-int v13, v13

    invoke-static {v13, v3}, Lcom/lx/launcher8/util/LauarUtil;->monthDays(II)I

    move-result v9

    goto :goto_3

    .line 153
    :cond_d
    const/4 v13, 0x6

    const-wide/16 v14, 0x1

    aput-wide v14, v5, v13

    .line 154
    add-int/lit8 v3, v3, -0x1

    .line 155
    const/4 v13, 0x4

    aget-wide v14, v5, v13

    const-wide/16 v16, 0x1

    sub-long v14, v14, v16

    aput-wide v14, v5, v13

    goto/16 :goto_2

    .line 99
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method
