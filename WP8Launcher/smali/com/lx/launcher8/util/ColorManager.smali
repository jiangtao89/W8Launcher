.class public Lcom/lx/launcher8/util/ColorManager;
.super Ljava/lang/Object;
.source "ColorManager.java"


# static fields
.field private static final MAX_COLOR_NUM:I = 0x91

.field private static mColorManager:Lcom/lx/launcher8/util/ColorManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private map:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/lx/launcher8/util/ColorManager;->mColorManager:Lcom/lx/launcher8/util/ColorManager;

    .line 14
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/lx/launcher8/util/ColorManager;->mContext:Landroid/content/Context;

    .line 27
    iput-object v0, p0, Lcom/lx/launcher8/util/ColorManager;->map:Landroid/util/SparseIntArray;

    .line 30
    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x91

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/lx/launcher8/util/ColorManager;->map:Landroid/util/SparseIntArray;

    .line 31
    invoke-static {}, Lcom/lx/launcher8/AnallApp;->getContext()Lcom/lx/launcher8/AnallApp;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/util/ColorManager;->mContext:Landroid/content/Context;

    .line 32
    invoke-direct {p0}, Lcom/lx/launcher8/util/ColorManager;->initMap()V

    .line 33
    return-void
.end method

.method public static getInstance()Lcom/lx/launcher8/util/ColorManager;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/lx/launcher8/util/ColorManager;->mColorManager:Lcom/lx/launcher8/util/ColorManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lx/launcher8/util/ColorManager;

    invoke-direct {v0}, Lcom/lx/launcher8/util/ColorManager;-><init>()V

    sput-object v0, Lcom/lx/launcher8/util/ColorManager;->mColorManager:Lcom/lx/launcher8/util/ColorManager;

    .line 23
    :cond_0
    sget-object v0, Lcom/lx/launcher8/util/ColorManager;->mColorManager:Lcom/lx/launcher8/util/ColorManager;

    return-object v0
.end method

.method private initMap()V
    .locals 7

    .prologue
    .line 36
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v3, 0x91

    if-le v1, v3, :cond_0

    .line 42
    iget-object v3, p0, Lcom/lx/launcher8/util/ColorManager;->map:Landroid/util/SparseIntArray;

    const/4 v4, -0x1

    const v5, 0x7f0a006e

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 43
    iget-object v3, p0, Lcom/lx/launcher8/util/ColorManager;->map:Landroid/util/SparseIntArray;

    const/high16 v4, -0x100

    const v5, 0x7f0a006f

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 44
    iget-object v3, p0, Lcom/lx/launcher8/util/ColorManager;->map:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    const v5, 0x7f0a0063

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 45
    return-void

    .line 37
    :cond_0
    iget-object v3, p0, Lcom/lx/launcher8/util/ColorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/lx/launcher8/util/ColorManager;->mContext:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "color_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "color"

    invoke-static {v4, v5, v6}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 38
    .local v0, color:I
    iget-object v3, p0, Lcom/lx/launcher8/util/ColorManager;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "color_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "string"

    invoke-static {v3, v4, v5}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 39
    .local v2, name:I
    if-lez v2, :cond_1

    .line 40
    iget-object v3, p0, Lcom/lx/launcher8/util/ColorManager;->map:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 36
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getColorName(I)Ljava/lang/String;
    .locals 2
    .parameter "color"

    .prologue
    .line 48
    iget-object v1, p0, Lcom/lx/launcher8/util/ColorManager;->map:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 49
    .local v0, nameId:I
    if-gtz v0, :cond_0

    const v0, 0x7f0a0327

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/lx/launcher8/util/ColorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
