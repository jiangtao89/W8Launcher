.class public Lcom/app/download/bean/FileSeed;
.super Ljava/lang/Object;
.source "FileSeed.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DOWNLOADING:I = 0x2

.field public static final DOWNLOAD_ERROR:I = 0x20

.field public static final DOWNLOAD_FINISH:I = 0x8

.field public static final DOWNLOAD_STOP:I = 0x10

.field public static final DOWNLOAD_WAITING:I = 0x4

.field public static final UNKNOW:I = 0x1

.field private static final serialVersionUID:J = 0x476c8b28b1cb721aL


# instance fields
.field private isOpen:Z

.field private loadCoding:I

.field private mFileName:Ljava/lang/String;

.field private mFileSize:J

.field private mLoadedSize:J

.field private mSavePath:Ljava/lang/String;

.field private mSpeed:D

.field private mState:I

.field private transient mTag:Ljava/lang/Object;

.field private mTime:J

.field private mURL:Ljava/lang/String;

.field private uLoadedSize:J

.field private uTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .parameter "url"

    .prologue
    const/4 v2, 0x0

    .line 63
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/app/download/bean/FileSeed;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .parameter "url"
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/app/download/bean/FileSeed;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "url"
    .parameter "name"

    .prologue
    const/4 v3, 0x0

    .line 71
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/app/download/bean/FileSeed;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 6
    .parameter "url"
    .parameter "name"
    .parameter "size"

    .prologue
    const/4 v3, 0x0

    .line 75
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/app/download/bean/FileSeed;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "url"
    .parameter "name"
    .parameter "path"

    .prologue
    const/4 v4, 0x0

    .line 79
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/app/download/bean/FileSeed;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 6
    .parameter "url"
    .parameter "name"
    .parameter "path"
    .parameter "state"
    .parameter "size"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/app/download/bean/FileSeed;->mFileSize:J

    .line 31
    iput-wide v4, p0, Lcom/app/download/bean/FileSeed;->mLoadedSize:J

    .line 37
    iput-wide v4, p0, Lcom/app/download/bean/FileSeed;->uLoadedSize:J

    .line 49
    iput v1, p0, Lcom/app/download/bean/FileSeed;->mState:I

    .line 83
    if-nez p1, :cond_0

    .line 84
    const-string p1, ""

    .line 86
    :cond_0
    iput-object p1, p0, Lcom/app/download/bean/FileSeed;->mURL:Ljava/lang/String;

    .line 87
    if-nez p3, :cond_1

    invoke-static {}, Lcom/app/common/config/BasePath;->getDownloadPath()Ljava/lang/String;

    move-result-object p3

    .end local p3
    :cond_1
    invoke-virtual {p0, p3}, Lcom/app/download/bean/FileSeed;->setSavePath(Ljava/lang/String;)V

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/app/download/bean/FileSeed;->setTime(J)V

    .line 89
    if-nez p4, :cond_2

    :goto_0
    invoke-virtual {p0, v1}, Lcom/app/download/bean/FileSeed;->setState(I)V

    .line 90
    if-nez p5, :cond_3

    const/4 v1, -0x1

    :goto_1
    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Lcom/app/download/bean/FileSeed;->setFileSize(J)V

    .line 92
    invoke-static {p1, p2}, Lcom/app/download/bean/FileSeed;->getAppropriateName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, tempName:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/app/download/bean/FileSeed;->getUnexistName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/app/download/bean/FileSeed;->setFileName(Ljava/lang/String;)V

    .line 94
    return-void

    .line 89
    .end local v0           #tempName:Ljava/lang/String;
    :cond_2
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 90
    :cond_3
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1
.end method

.method public static getAppropriateName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "url"
    .parameter "fileName"

    .prologue
    .line 306
    invoke-static {p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 307
    .local v2, temp:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 308
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 309
    .local v1, index:I
    if-ltz v1, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_2

    .line 310
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 314
    .end local v1           #index:I
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/app/download/bean/FileSeed;->getSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, ext:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 316
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 317
    .restart local v1       #index:I
    if-ltz v1, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_3

    .line 318
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 321
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 322
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 325
    .end local v1           #index:I
    :cond_1
    return-object p1

    .line 311
    .end local v0           #ext:Ljava/lang/String;
    .restart local v1       #index:I
    :cond_2
    const-string p1, "unknow"

    goto :goto_0

    .line 319
    .restart local v0       #ext:Ljava/lang/String;
    :cond_3
    const-string v0, ""

    goto :goto_1
.end method

.method public static getSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 108
    if-nez p0, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-object v1

    .line 112
    :cond_1
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .local v0, start:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 113
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private setTime(J)V
    .locals 0
    .parameter "millis"

    .prologue
    .line 230
    iput-wide p1, p0, Lcom/app/download/bean/FileSeed;->mTime:J

    .line 231
    return-void
.end method


# virtual methods
.method public addSuffixTo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "src"
    .parameter "des"

    .prologue
    .line 123
    invoke-static {p1}, Lcom/app/download/bean/FileSeed;->getSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, suffix:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 128
    :cond_0
    return-object p2
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/app/download/bean/FileSeed;->mSavePath:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/app/download/bean/FileSeed;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCoding()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lcom/app/download/bean/FileSeed;->loadCoding:I

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/app/download/bean/FileSeed;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 210
    iget-wide v0, p0, Lcom/app/download/bean/FileSeed;->mFileSize:J

    return-wide v0
.end method

.method public getLoadedSize()J
    .locals 2

    .prologue
    .line 234
    iget-wide v0, p0, Lcom/app/download/bean/FileSeed;->mLoadedSize:J

    return-wide v0
.end method

.method public getSavePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/app/download/bean/FileSeed;->mSavePath:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeed()D
    .locals 2

    .prologue
    .line 250
    iget-wide v0, p0, Lcom/app/download/bean/FileSeed;->mSpeed:D

    return-wide v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/app/download/bean/FileSeed;->mState:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/app/download/bean/FileSeed;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 218
    iget-wide v0, p0, Lcom/app/download/bean/FileSeed;->mTime:J

    return-wide v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/app/download/bean/FileSeed;->mURL:Ljava/lang/String;

    return-object v0
.end method

.method public getUnexistName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "nameNoSuffix"

    .prologue
    .line 163
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 164
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/app/download/bean/FileSeed;->mURL:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 166
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 168
    invoke-static {}, Lcom/app/download/bean/DownloadManager;->getInstance()Lcom/app/download/bean/DownloadManager;

    move-result-object v3

    iget-object v2, v3, Lcom/app/download/bean/DownloadManager;->mRecodeInfo:Lcom/app/download/bean/RecodeInfo;

    .line 170
    .local v2, recodeInfo:Lcom/app/download/bean/RecodeInfo;
    const/4 v1, 0x0

    .line 171
    .local v1, i:I
    move-object v0, p1

    .line 172
    .local v0, fileName:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/app/download/bean/FileSeed;->mURL:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/app/download/bean/RecodeInfo;->isExisted(Ljava/lang/String;Ljava/lang/String;)Lcom/app/download/bean/FileSeed;

    move-result-object v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/app/download/bean/FileSeed;->mSavePath:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 177
    return-object v0

    .line 173
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUnexistName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "nameNoSuffix"
    .parameter "suffix"

    .prologue
    .line 132
    if-nez p2, :cond_0

    .line 133
    const-string p2, ""

    .line 135
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 136
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/app/download/bean/FileSeed;->mURL:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 139
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 142
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xe

    if-le v5, v6, :cond_3

    .line 143
    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 144
    .local v4, start:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, ent:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 147
    .end local v0           #ent:Ljava/lang/String;
    .end local v4           #start:Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/app/download/bean/DownloadManager;->getInstance()Lcom/app/download/bean/DownloadManager;

    move-result-object v5

    iget-object v3, v5, Lcom/app/download/bean/DownloadManager;->mRecodeInfo:Lcom/app/download/bean/RecodeInfo;

    .line 149
    .local v3, recodeInfo:Lcom/app/download/bean/RecodeInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, fileName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 152
    .local v2, i:I
    :goto_0
    iget-object v5, p0, Lcom/app/download/bean/FileSeed;->mURL:Ljava/lang/String;

    invoke-virtual {v3, v5, v1}, Lcom/app/download/bean/RecodeInfo;->isExisted(Ljava/lang/String;Ljava/lang/String;)Lcom/app/download/bean/FileSeed;

    move-result-object v5

    if-nez v5, :cond_4

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/app/download/bean/FileSeed;->mSavePath:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    .line 157
    return-object v1

    .line 153
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 154
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getuLoadedSize()J
    .locals 2

    .prologue
    .line 222
    iget-wide v0, p0, Lcom/app/download/bean/FileSeed;->uLoadedSize:J

    return-wide v0
.end method

.method public getuTime()J
    .locals 2

    .prologue
    .line 290
    iget-wide v0, p0, Lcom/app/download/bean/FileSeed;->uTime:J

    return-wide v0
.end method

.method public isLoadFinish()Z
    .locals 4

    .prologue
    .line 242
    iget-wide v0, p0, Lcom/app/download/bean/FileSeed;->mFileSize:J

    iget-wide v2, p0, Lcom/app/download/bean/FileSeed;->mLoadedSize:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/app/download/bean/FileSeed;->isOpen:Z

    return v0
.end method

.method public isState(I)Z
    .locals 1
    .parameter "state"

    .prologue
    .line 270
    iget v0, p0, Lcom/app/download/bean/FileSeed;->mState:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 97
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/app/download/bean/FileSeed;->mFileSize:J

    .line 98
    iput-wide v2, p0, Lcom/app/download/bean/FileSeed;->mLoadedSize:J

    .line 99
    const/4 v0, 0x1

    iput v0, p0, Lcom/app/download/bean/FileSeed;->mState:I

    .line 100
    iput-wide v2, p0, Lcom/app/download/bean/FileSeed;->uLoadedSize:J

    .line 101
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/app/download/bean/FileSeed;->mSpeed:D

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/app/download/bean/FileSeed;->loadCoding:I

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/app/download/bean/FileSeed;->setTime(J)V

    .line 104
    return-void
.end method

.method public setCoding(I)V
    .locals 0
    .parameter "loadCoding"

    .prologue
    .line 278
    iput p1, p0, Lcom/app/download/bean/FileSeed;->loadCoding:I

    .line 279
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "mFileName"

    .prologue
    .line 194
    iput-object p1, p0, Lcom/app/download/bean/FileSeed;->mFileName:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setFileSize(J)V
    .locals 0
    .parameter "mFileSize"

    .prologue
    .line 214
    iput-wide p1, p0, Lcom/app/download/bean/FileSeed;->mFileSize:J

    .line 215
    return-void
.end method

.method public setLoadedSize(J)V
    .locals 0
    .parameter "mLoadedSize"

    .prologue
    .line 238
    iput-wide p1, p0, Lcom/app/download/bean/FileSeed;->mLoadedSize:J

    .line 239
    return-void
.end method

.method public setOpen(Z)V
    .locals 0
    .parameter "isOpen"

    .prologue
    .line 286
    iput-boolean p1, p0, Lcom/app/download/bean/FileSeed;->isOpen:Z

    .line 287
    return-void
.end method

.method public setSavePath(Ljava/lang/String;)V
    .locals 0
    .parameter "mSavePath"

    .prologue
    .line 202
    iput-object p1, p0, Lcom/app/download/bean/FileSeed;->mSavePath:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public setSpeed(D)V
    .locals 0
    .parameter "speed"

    .prologue
    .line 254
    iput-wide p1, p0, Lcom/app/download/bean/FileSeed;->mSpeed:D

    .line 255
    return-void
.end method

.method public setState(I)V
    .locals 3
    .parameter "state"

    .prologue
    const-wide/16 v1, 0x0

    .line 258
    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    .line 259
    iget v0, p0, Lcom/app/download/bean/FileSeed;->loadCoding:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/app/download/bean/FileSeed;->setCoding(I)V

    .line 260
    invoke-virtual {p0, v1, v2}, Lcom/app/download/bean/FileSeed;->setSpeed(D)V

    .line 262
    :cond_0
    const/16 v0, 0x20

    if-ne p1, v0, :cond_1

    .line 263
    iget v0, p0, Lcom/app/download/bean/FileSeed;->loadCoding:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/app/download/bean/FileSeed;->setCoding(I)V

    .line 264
    invoke-virtual {p0, v1, v2}, Lcom/app/download/bean/FileSeed;->setSpeed(D)V

    .line 266
    :cond_1
    iput p1, p0, Lcom/app/download/bean/FileSeed;->mState:I

    .line 267
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 298
    iput-object p1, p0, Lcom/app/download/bean/FileSeed;->mTag:Ljava/lang/Object;

    .line 299
    return-void
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 0
    .parameter "mURL"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/app/download/bean/FileSeed;->mURL:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setuLoadedSize(J)V
    .locals 0
    .parameter "uLoadedSize"

    .prologue
    .line 226
    iput-wide p1, p0, Lcom/app/download/bean/FileSeed;->uLoadedSize:J

    .line 227
    return-void
.end method

.method public setuTime(J)V
    .locals 0
    .parameter "uTime"

    .prologue
    .line 294
    iput-wide p1, p0, Lcom/app/download/bean/FileSeed;->uTime:J

    .line 295
    return-void
.end method
