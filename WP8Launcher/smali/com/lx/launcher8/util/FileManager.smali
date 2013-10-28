.class public Lcom/lx/launcher8/util/FileManager;
.super Ljava/lang/Object;
.source "FileManager.java"


# static fields
.field public static final INTERAL_CACHE_MAX_SIZE:J = 0x500000L

.field public static final SD_CARD_CACHE_MAX_SIZE:J = 0xa00000L

.field private static mFileManager:Lcom/lx/launcher8/util/FileManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/lx/launcher8/util/FileManager;->mFileManager:Lcom/lx/launcher8/util/FileManager;

    .line 9
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static getFileList(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 79
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    const/4 v1, 0x0

    .line 84
    :goto_0
    return-object v1

    .line 83
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getInstance()Lcom/lx/launcher8/util/FileManager;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/lx/launcher8/util/FileManager;->mFileManager:Lcom/lx/launcher8/util/FileManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lx/launcher8/util/FileManager;

    invoke-direct {v0}, Lcom/lx/launcher8/util/FileManager;-><init>()V

    sput-object v0, Lcom/lx/launcher8/util/FileManager;->mFileManager:Lcom/lx/launcher8/util/FileManager;

    .line 22
    :cond_0
    sget-object v0, Lcom/lx/launcher8/util/FileManager;->mFileManager:Lcom/lx/launcher8/util/FileManager;

    return-object v0
.end method


# virtual methods
.method public clearCacheFiles()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/lx/launcher8/util/BasePath;->DATA_EXSTORAGE_PATH:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, savePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/app/common/utils/UFile;->openOrCreatDir(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lx/launcher8/util/BasePath;->getInternalPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, file:Ljava/io/File;
    invoke-virtual {p0, v0}, Lcom/lx/launcher8/util/FileManager;->getFileSize(Ljava/io/File;)J

    move-result-wide v2

    const-wide/32 v4, 0x500000

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 62
    invoke-virtual {p0, v0, v6}, Lcom/lx/launcher8/util/FileManager;->deleteFile(Ljava/io/File;Z)Z

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 65
    .end local v0           #file:Ljava/io/File;
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {p0, v0}, Lcom/lx/launcher8/util/FileManager;->getFileSize(Ljava/io/File;)J

    move-result-wide v2

    const-wide/32 v4, 0xa00000

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 67
    invoke-virtual {p0, v0, v6}, Lcom/lx/launcher8/util/FileManager;->deleteFile(Ljava/io/File;Z)Z

    goto :goto_0
.end method

.method public deleteFile(Ljava/io/File;Z)Z
    .locals 6
    .parameter "file"
    .parameter "deleteRoot"

    .prologue
    .line 41
    const/4 v2, 0x0

    .line 42
    .local v2, result:Z
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 44
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 45
    .local v1, files:[Ljava/io/File;
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_1

    .line 48
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v3

    and-int/2addr v2, v3

    .line 53
    .end local v1           #files:[Ljava/io/File;
    :cond_0
    :goto_1
    return v2

    .line 45
    .restart local v1       #files:[Ljava/io/File;
    :cond_1
    aget-object v0, v1, v3

    .line 46
    .local v0, f:Ljava/io/File;
    const/4 v5, 0x1

    invoke-virtual {p0, v0, v5}, Lcom/lx/launcher8/util/FileManager;->deleteFile(Ljava/io/File;Z)Z

    move-result v5

    and-int/2addr v2, v5

    .line 45
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 50
    .end local v0           #f:Ljava/io/File;
    .end local v1           #files:[Ljava/io/File;
    :cond_2
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v2

    goto :goto_1
.end method

.method public getFileSize(Ljava/io/File;)J
    .locals 8
    .parameter "file"

    .prologue
    .line 26
    const-wide/16 v2, 0x0

    .line 27
    .local v2, s:J
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 28
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 29
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 30
    .local v1, files:[Ljava/io/File;
    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_1

    .line 37
    .end local v1           #files:[Ljava/io/File;
    :cond_0
    :goto_1
    return-wide v2

    .line 30
    .restart local v1       #files:[Ljava/io/File;
    :cond_1
    aget-object v0, v1, v4

    .line 31
    .local v0, f:Ljava/io/File;
    invoke-virtual {p0, v0}, Lcom/lx/launcher8/util/FileManager;->getFileSize(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 30
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 34
    .end local v0           #f:Ljava/io/File;
    .end local v1           #files:[Ljava/io/File;
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    goto :goto_1
.end method
