.class public Lcom/lx/launcher8/bean/TopAppCell;
.super Lcom/lx/launcher8/bean/AppCell;
.source "TopAppCell.java"


# instance fields
.field private mIconList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    const v0, 0x18021

    invoke-direct {p0, v0}, Lcom/lx/launcher8/bean/TopAppCell;-><init>(I)V

    .line 17
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/lx/launcher8/bean/AppCell;-><init>(I)V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/bean/TopAppCell;->mIconList:Ljava/util/ArrayList;

    .line 21
    invoke-direct {p0}, Lcom/lx/launcher8/bean/TopAppCell;->loadIcon()V

    .line 22
    return-void
.end method

.method private loadIcon()V
    .locals 6

    .prologue
    const/16 v5, 0x32

    .line 32
    sget-object v3, Lcom/lx/launcher8/util/TopAppUtil;->TOP_APP_ICON:Ljava/lang/String;

    invoke-static {v3}, Lcom/lx/launcher8/util/FileManager;->getFileList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, icons:[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 34
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/lx/launcher8/bean/TopAppCell;->mIconList:Ljava/util/ArrayList;

    .line 35
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-lt v1, v3, :cond_1

    .line 45
    .end local v1           #i:I
    :cond_0
    return-void

    .line 36
    .restart local v1       #i:I
    :cond_1
    const/16 v3, 0x14

    if-gt v1, v3, :cond_0

    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/lx/launcher8/util/TopAppUtil;->TOP_APP_ICON:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5, v5}, Lcom/lx/launcher8/util/ImageLoader;->getLocalBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 40
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 41
    iget-object v3, p0, Lcom/lx/launcher8/bean/TopAppCell;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getIconList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lx/launcher8/bean/TopAppCell;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 26
    invoke-direct {p0}, Lcom/lx/launcher8/bean/TopAppCell;->loadIcon()V

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/bean/TopAppCell;->mIconList:Ljava/util/ArrayList;

    return-object v0
.end method
