.class public Lcom/lx/launcher8/util/BasePath;
.super Ljava/lang/Object;
.source "BasePath.java"


# static fields
.field public static DATA_EXSTORAGE_CACHE:Ljava/lang/String;

.field public static DATA_EXSTORAGE_DOWN:Ljava/lang/String;

.field public static DATA_EXSTORAGE_PATH:Ljava/lang/String;

.field public static DATA_EXSTORATE_DATA:Ljava/lang/String;

.field public static PACK_FILESDIR_PATH:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ensureDir(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 118
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const/4 v0, 0x0

    .line 120
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/app/common/utils/UFile;->openOrCreatDir(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static getCachePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "subFolder"

    .prologue
    .line 70
    sget-object v1, Lcom/lx/launcher8/util/BasePath;->DATA_EXSTORAGE_CACHE:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/lx/launcher8/util/BasePath;->getFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, absPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/lx/launcher8/util/BasePath;->ensureDir(Ljava/lang/String;)Z

    .line 72
    return-object v0
.end method

.method public static getDataPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "subFolder"

    .prologue
    .line 76
    sget-object v1, Lcom/lx/launcher8/util/BasePath;->DATA_EXSTORATE_DATA:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/lx/launcher8/util/BasePath;->getFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, absPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/lx/launcher8/util/BasePath;->ensureDir(Ljava/lang/String;)Z

    .line 78
    return-object v0
.end method

.method public static getDownloadPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/lx/launcher8/util/BasePath;->DATA_EXSTORAGE_DOWN:Ljava/lang/String;

    return-object v0
.end method

.method public static getDownloadPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "subFolder"

    .prologue
    .line 64
    sget-object v1, Lcom/lx/launcher8/util/BasePath;->DATA_EXSTORAGE_DOWN:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/lx/launcher8/util/BasePath;->getFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, absPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/lx/launcher8/util/BasePath;->ensureDir(Ljava/lang/String;)Z

    .line 66
    return-object v0
.end method

.method public static getExistCachePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "dirAppend"

    .prologue
    .line 99
    sget-object v1, Lcom/lx/launcher8/util/BasePath;->DATA_EXSTORAGE_CACHE:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/lx/launcher8/util/BasePath;->getFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, fullPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/lx/launcher8/util/BasePath;->ensureDir(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    sget-object v1, Lcom/lx/launcher8/util/BasePath;->PACK_FILESDIR_PATH:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/lx/launcher8/util/BasePath;->getFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {v0}, Lcom/lx/launcher8/util/BasePath;->ensureDir(Ljava/lang/String;)Z

    .line 104
    :cond_0
    return-object v0
.end method

.method public static getExistDownloadPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "dirAppend"

    .prologue
    .line 86
    sget-object v1, Lcom/lx/launcher8/util/BasePath;->DATA_EXSTORAGE_DOWN:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/lx/launcher8/util/BasePath;->getFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, fullPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/lx/launcher8/util/BasePath;->ensureDir(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    sget-object v1, Lcom/lx/launcher8/util/BasePath;->PACK_FILESDIR_PATH:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/lx/launcher8/util/BasePath;->getFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {v0}, Lcom/lx/launcher8/util/BasePath;->ensureDir(Ljava/lang/String;)Z

    .line 91
    :cond_0
    return-object v0
.end method

.method static getFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "root"
    .parameter "append"

    .prologue
    .line 109
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, ""

    .line 110
    .local v0, folder:Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, fullPath:Ljava/lang/String;
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    :cond_0
    return-object v1

    .end local v0           #folder:Ljava/lang/String;
    .end local v1           #fullPath:Ljava/lang/String;
    :cond_1
    move-object v0, p1

    .line 109
    goto :goto_0
.end method

.method public static getInternalPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/lx/launcher8/util/BasePath;->PACK_FILESDIR_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/app/common/utils/UFile;->openOrCreatDir(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    const/4 v0, 0x0

    .line 55
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/lx/launcher8/util/BasePath;->PACK_FILESDIR_PATH:Ljava/lang/String;

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "exstorageDir"

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lx/launcher8/util/BasePath;->PACK_FILESDIR_PATH:Ljava/lang/String;

    .line 35
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/app/common/utils/UFile;->getExCardPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lx/launcher8/util/BasePath;->DATA_EXSTORAGE_PATH:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/lx/launcher8/util/BasePath;->DATA_EXSTORAGE_PATH:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lx/launcher8/util/BasePath;->DATA_EXSTORAGE_DOWN:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/lx/launcher8/util/BasePath;->DATA_EXSTORAGE_PATH:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lx/launcher8/util/BasePath;->DATA_EXSTORATE_DATA:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/lx/launcher8/util/BasePath;->DATA_EXSTORAGE_PATH:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lx/launcher8/util/BasePath;->DATA_EXSTORAGE_CACHE:Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/lx/launcher8/util/BasePath;->DATA_EXSTORAGE_DOWN:Ljava/lang/String;

    invoke-static {v0}, Lcom/app/common/utils/UFile;->openOrCreatDir(Ljava/lang/String;)Z

    .line 43
    sget-object v0, Lcom/lx/launcher8/util/BasePath;->DATA_EXSTORAGE_CACHE:Ljava/lang/String;

    invoke-static {v0}, Lcom/app/common/utils/UFile;->openOrCreatDir(Ljava/lang/String;)Z

    .line 44
    sget-object v0, Lcom/lx/launcher8/util/BasePath;->DATA_EXSTORATE_DATA:Ljava/lang/String;

    invoke-static {v0}, Lcom/app/common/utils/UFile;->openOrCreatDir(Ljava/lang/String;)Z

    .line 45
    return-void
.end method
