.class public Lcom/lx/launcher8/image/Image;
.super Ljava/lang/Object;
.source "Image.java"


# instance fields
.field public mCount:I

.field public mFirstFile:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field public mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "filePath"
    .parameter "name"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p2, p0, Lcom/lx/launcher8/image/Image;->mName:Ljava/lang/String;

    .line 12
    iput-object p1, p0, Lcom/lx/launcher8/image/Image;->mFirstFile:Ljava/lang/String;

    .line 13
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lx/launcher8/image/Image;->mPath:Ljava/lang/String;

    .line 15
    const/4 v1, 0x1

    iput v1, p0, Lcom/lx/launcher8/image/Image;->mCount:I

    .line 16
    return-void
.end method


# virtual methods
.method public addItemCount()V
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/lx/launcher8/image/Image;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lx/launcher8/image/Image;->mCount:I

    .line 20
    return-void
.end method
