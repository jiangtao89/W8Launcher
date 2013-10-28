.class public Lcom/lx/launcher8/util/WpAdUtil;
.super Ljava/lang/Object;
.source "WpAdUtil.java"


# static fields
.field private static final POS_COUNT:I = 0x5

.field private static mDensity:I

.field private static mWpAdUtil:Lcom/lx/launcher8/util/WpAdUtil;

.field private static screenHeight:I

.field private static screenWidth:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLoadingOver:Lcom/lx/launcher8/task/OnLoadingOverListener;

.field private mSetting:Lcom/lx/launcher8/cfg/DeskSetting;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Lcom/lx/launcher8/util/WpAdUtil$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/util/WpAdUtil$1;-><init>(Lcom/lx/launcher8/util/WpAdUtil;)V

    iput-object v0, p0, Lcom/lx/launcher8/util/WpAdUtil;->mLoadingOver:Lcom/lx/launcher8/task/OnLoadingOverListener;

    .line 43
    return-void
.end method

.method private static GetDensityBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 191
    if-nez p0, :cond_0

    .line 192
    const/4 p0, 0x0

    .line 196
    :goto_0
    return-object p0

    .line 195
    :cond_0
    sget v0, Lcom/lx/launcher8/util/WpAdUtil;->mDensity:I

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/lx/launcher8/util/WpAdUtil;)Lcom/lx/launcher8/cfg/DeskSetting;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lx/launcher8/util/WpAdUtil;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/util/WpAdUtil;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 153
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lx/launcher8/util/WpAdUtil;->setBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$2(Lcom/lx/launcher8/util/WpAdUtil;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lx/launcher8/util/WpAdUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance()Lcom/lx/launcher8/util/WpAdUtil;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/lx/launcher8/util/WpAdUtil;->mWpAdUtil:Lcom/lx/launcher8/util/WpAdUtil;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/lx/launcher8/util/WpAdUtil;

    invoke-direct {v0}, Lcom/lx/launcher8/util/WpAdUtil;-><init>()V

    sput-object v0, Lcom/lx/launcher8/util/WpAdUtil;->mWpAdUtil:Lcom/lx/launcher8/util/WpAdUtil;

    .line 49
    :cond_0
    sget-object v0, Lcom/lx/launcher8/util/WpAdUtil;->mWpAdUtil:Lcom/lx/launcher8/util/WpAdUtil;

    return-object v0
.end method

.method private setAd(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 7
    .parameter "imgUrl"
    .parameter "url"
    .parameter "show"
    .parameter "close"

    .prologue
    .line 137
    invoke-static {}, Lcom/lx/launcher8/util/ImageLoader;->getInstance()Lcom/lx/launcher8/util/ImageLoader;

    move-result-object v0

    invoke-static {p1}, Lcom/lx/launcher8/util/ImageLoader;->convertURLToCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 138
    new-instance v3, Lcom/lx/launcher8/util/WpAdUtil$2;

    invoke-direct {v3, p0, p2, p3, p4}, Lcom/lx/launcher8/util/WpAdUtil$2;-><init>(Lcom/lx/launcher8/util/WpAdUtil;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 147
    sget v4, Lcom/lx/launcher8/util/WpAdUtil;->screenWidth:I

    sget v5, Lcom/lx/launcher8/util/WpAdUtil;->screenHeight:I

    move-object v1, p1

    .line 137
    invoke-virtual/range {v0 .. v5}, Lcom/lx/launcher8/util/ImageLoader;->loadImage(Ljava/lang/String;Ljava/lang/String;Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 148
    .local v6, bit:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_0

    .line 149
    invoke-direct {p0, v6, p2, p3, p4}, Lcom/lx/launcher8/util/WpAdUtil;->setBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 151
    :cond_0
    return-void
.end method

.method private setBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 2
    .parameter "bt"
    .parameter "url"
    .parameter "show"
    .parameter "close"

    .prologue
    const/4 v1, 0x0

    .line 154
    invoke-static {p1}, Lcom/lx/launcher8/util/WpAdUtil;->GetDensityBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 155
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 156
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    new-instance v0, Lcom/lx/launcher8/util/WpAdUtil$3;

    invoke-direct {v0, p0, p2}, Lcom/lx/launcher8/util/WpAdUtil$3;-><init>(Lcom/lx/launcher8/util/WpAdUtil;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 181
    new-instance v0, Lcom/lx/launcher8/util/WpAdUtil$4;

    invoke-direct {v0, p0, p3, p4}, Lcom/lx/launcher8/util/WpAdUtil$4;-><init>(Lcom/lx/launcher8/util/WpAdUtil;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    return-void
.end method


# virtual methods
.method public clearAd(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/lx/launcher8/util/WpAdUtil;->mContext:Landroid/content/Context;

    .line 106
    new-instance v1, Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-direct {v1, p1}, Lcom/lx/launcher8/cfg/DeskSetting;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lx/launcher8/util/WpAdUtil;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    .line 107
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 110
    return-void

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/lx/launcher8/util/WpAdUtil;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lcom/lx/launcher8/cfg/DeskSetting;->setWpAd(ILjava/lang/String;)V

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public loadAd(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/lx/launcher8/util/WpAdUtil;->mContext:Landroid/content/Context;

    .line 59
    new-instance v0, Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-direct {v0, p1}, Lcom/lx/launcher8/cfg/DeskSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/util/WpAdUtil;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    .line 61
    new-instance v0, Lcom/lx/launcher8/task/WpAdTask;

    invoke-direct {v0, p1}, Lcom/lx/launcher8/task/WpAdTask;-><init>(Landroid/content/Context;)V

    const-string v1, "http://client.anall.cn/wp8/Ad.aspx"

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/task/WpAdTask;->setUrl(Ljava/lang/String;)Lcom/lx/launcher8/task/WpAdTask;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/task/WpAdTask;->setParams(Ljava/lang/String;)Lcom/lx/launcher8/task/WpAdTask;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/lx/launcher8/util/WpAdUtil;->mLoadingOver:Lcom/lx/launcher8/task/OnLoadingOverListener;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/task/WpAdTask;->setOnLoadingOverListener(Lcom/lx/launcher8/task/OnLoadingOverListener;)Lcom/lx/launcher8/task/WpAdTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lx/launcher8/task/WpAdTask;->exec()Z

    .line 63
    return-void
.end method

.method public showAd(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/ImageView;I)V
    .locals 9
    .parameter "context"
    .parameter "show"
    .parameter "close"
    .parameter "pos"

    .prologue
    const/16 v4, 0xf0

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 74
    iput-object p1, p0, Lcom/lx/launcher8/util/WpAdUtil;->mContext:Landroid/content/Context;

    .line 75
    new-instance v5, Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-direct {v5, p1}, Lcom/lx/launcher8/cfg/DeskSetting;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/lx/launcher8/util/WpAdUtil;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    .line 77
    iget-object v5, p0, Lcom/lx/launcher8/util/WpAdUtil;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v5, p4}, Lcom/lx/launcher8/cfg/DeskSetting;->getWpAd(I)Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, value:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 83
    .local v1, display:Landroid/util/DisplayMetrics;
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    sput v5, Lcom/lx/launcher8/util/WpAdUtil;->screenWidth:I

    .line 84
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    sput v5, Lcom/lx/launcher8/util/WpAdUtil;->screenHeight:I

    .line 85
    iget v5, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    if-le v5, v4, :cond_2

    :goto_1
    sput v4, Lcom/lx/launcher8/util/WpAdUtil;->mDensity:I

    .line 87
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, arr:[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v4, v0

    const/4 v5, 0x3

    if-lt v4, v5, :cond_0

    .line 89
    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-static {v4}, Lcom/app/common/utils/UConvert;->toInt(Ljava/lang/String;)I

    move-result v2

    .line 90
    .local v2, showType:I
    if-gt v2, v7, :cond_0

    .line 94
    aget-object v4, v0, v7

    aget-object v5, v0, v8

    invoke-direct {p0, v4, v5, p2, p3}, Lcom/lx/launcher8/util/WpAdUtil;->setAd(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 95
    if-ne v2, v7, :cond_0

    .line 96
    iget-object v4, p0, Lcom/lx/launcher8/util/WpAdUtil;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "2,"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v6, v0, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p4, v5}, Lcom/lx/launcher8/cfg/DeskSetting;->setWpAd(ILjava/lang/String;)V

    goto :goto_0

    .line 85
    .end local v0           #arr:[Ljava/lang/String;
    .end local v2           #showType:I
    :cond_2
    iget v4, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_1
.end method
