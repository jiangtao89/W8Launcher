.class public Lcom/app/common/config/BasePath;
.super Ljava/lang/Object;
.source "BasePath.java"


# static fields
.field public static DATA_EXSTORAGE_DOWN:Ljava/lang/String;

.field public static DATA_EXSTORAGE_PATH:Ljava/lang/String;

.field public static DATA_INTER_COMMON_PATH:Ljava/lang/String;

.field public static DATA_INTER_UNCLEAR_PATH:Ljava/lang/String;

.field private static PACK_FILESDIR_PATH:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getCachePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    const-string v0, "Cache/"

    invoke-static {v0}, Lcom/app/common/config/BasePath;->getExistPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDownloadPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    sget-object v0, Lcom/app/common/config/BasePath;->DATA_EXSTORAGE_DOWN:Ljava/lang/String;

    return-object v0
.end method

.method public static getExistPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "dirAppend"

    .prologue
    .line 104
    invoke-static {p0}, Lcom/app/common/config/BasePath;->getOuternalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, fullPath:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 107
    invoke-static {p0}, Lcom/app/common/config/BasePath;->getInternalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    :cond_0
    return-object v0
.end method

.method public static getInternalPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/app/common/config/BasePath;->DATA_INTER_COMMON_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/app/common/utils/UFile;->openOrCreatDir(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 74
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/app/common/config/BasePath;->DATA_INTER_COMMON_PATH:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getInternalPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "dirAppend"

    .prologue
    .line 78
    sget-object v0, Lcom/app/common/config/BasePath;->DATA_INTER_COMMON_PATH:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/app/common/config/BasePath;->getPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInternalUnclearPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/app/common/config/BasePath;->DATA_INTER_UNCLEAR_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/app/common/utils/UFile;->openOrCreatDir(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    const/4 v0, 0x0

    .line 89
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/app/common/config/BasePath;->DATA_INTER_UNCLEAR_PATH:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getInternalUnclearPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "dirAppend"

    .prologue
    .line 93
    sget-object v0, Lcom/app/common/config/BasePath;->DATA_INTER_UNCLEAR_PATH:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/app/common/config/BasePath;->getPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOuternalPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/app/common/config/BasePath;->DATA_EXSTORAGE_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/app/common/utils/UFile;->openOrCreatDir(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 59
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/app/common/config/BasePath;->DATA_EXSTORAGE_PATH:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getOuternalPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "dirAppend"

    .prologue
    .line 63
    sget-object v0, Lcom/app/common/config/BasePath;->DATA_EXSTORAGE_PATH:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/app/common/config/BasePath;->getPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "parentDir"
    .parameter "dirAppend"

    .prologue
    .line 129
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 133
    :cond_0
    if-nez p1, :cond_1

    .line 147
    .end local p0
    :goto_0
    return-object p0

    .line 137
    .restart local p0
    :cond_1
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 141
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, absDir:Ljava/lang/String;
    invoke-static {v0}, Lcom/app/common/utils/UFile;->openOrCreatDir(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 144
    const/4 p0, 0x0

    goto :goto_0

    :cond_3
    move-object p0, v0

    .line 147
    goto :goto_0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "exstorageDir"

    .prologue
    .line 36
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

    sput-object v0, Lcom/app/common/config/BasePath;->PACK_FILESDIR_PATH:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/app/common/config/BasePath;->PACK_FILESDIR_PATH:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Common"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/app/common/config/BasePath;->DATA_INTER_COMMON_PATH:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/app/common/config/BasePath;->PACK_FILESDIR_PATH:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "UnClear"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/app/common/config/BasePath;->DATA_INTER_UNCLEAR_PATH:Ljava/lang/String;

    .line 40
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 43
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

    sput-object v0, Lcom/app/common/config/BasePath;->DATA_EXSTORAGE_PATH:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/app/common/config/BasePath;->DATA_EXSTORAGE_PATH:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/app/common/config/BasePath;->DATA_EXSTORAGE_DOWN:Ljava/lang/String;

    .line 45
    sget-object v0, Lcom/app/common/config/BasePath;->DATA_INTER_COMMON_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/app/common/utils/UFile;->openOrCreatDir(Ljava/lang/String;)Z

    .line 46
    sget-object v0, Lcom/app/common/config/BasePath;->DATA_INTER_UNCLEAR_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/app/common/utils/UFile;->openOrCreatDir(Ljava/lang/String;)Z

    .line 47
    sget-object v0, Lcom/app/common/config/BasePath;->DATA_EXSTORAGE_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/app/common/utils/UFile;->openOrCreatDir(Ljava/lang/String;)Z

    .line 48
    sget-object v0, Lcom/app/common/config/BasePath;->DATA_EXSTORAGE_DOWN:Ljava/lang/String;

    invoke-static {v0}, Lcom/app/common/utils/UFile;->openOrCreatDir(Ljava/lang/String;)Z

    .line 49
    return-void
.end method
