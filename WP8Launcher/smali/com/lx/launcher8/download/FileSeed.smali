.class public Lcom/lx/launcher8/download/FileSeed;
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

.field private static final serialVersionUID:J = -0x70167c8d1bfc92a7L


# instance fields
.field private mFileId:I

.field private mFileName:Ljava/lang/String;

.field private mFileSize:J

.field private mFileUrl:Ljava/lang/String;

.field private mIconUrl:Ljava/lang/String;

.field private mLoadedSize:J

.field private mPkName:Ljava/lang/String;

.field private mSavePath:Ljava/lang/String;

.field private mState:I

.field private mTitle:Ljava/lang/String;

.field private mVsName:Ljava/lang/String;

.field private vo:Lcom/lx/launcher8/setting/bean/VO;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lx/launcher8/download/FileSeed;->mFileSize:J

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lx/launcher8/download/FileSeed;->mLoadedSize:J

    .line 18
    const/4 v0, 0x1

    iput v0, p0, Lcom/lx/launcher8/download/FileSeed;->mState:I

    .line 10
    return-void
.end method


# virtual methods
.method public getAbsolutePath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 130
    iget-object v1, p0, Lcom/lx/launcher8/download/FileSeed;->mSavePath:Ljava/lang/String;

    .line 131
    .local v1, savePath:Ljava/lang/String;
    iget-object v0, p0, Lcom/lx/launcher8/download/FileSeed;->mFileName:Ljava/lang/String;

    .line 132
    .local v0, fileName:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 133
    const-string v2, "lockscreen"

    invoke-static {v2}, Lcom/lx/launcher8/util/BasePath;->getDownloadPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-static {v1}, Lcom/app/common/utils/UFile;->openOrCreatDir(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lx/launcher8/util/BasePath;->getInternalPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "download"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 139
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getFileId()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/lx/launcher8/download/FileSeed;->mFileId:I

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lx/launcher8/download/FileSeed;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/lx/launcher8/download/FileSeed;->mFileSize:J

    return-wide v0
.end method

.method public getFileUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lx/launcher8/download/FileSeed;->mFileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lx/launcher8/download/FileSeed;->mIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLoadedSize()J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/lx/launcher8/download/FileSeed;->mLoadedSize:J

    return-wide v0
.end method

.method public getPkName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lx/launcher8/download/FileSeed;->mPkName:Ljava/lang/String;

    return-object v0
.end method

.method public getSavePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lx/launcher8/download/FileSeed;->mSavePath:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/lx/launcher8/download/FileSeed;->mState:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lx/launcher8/download/FileSeed;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVo()Lcom/lx/launcher8/setting/bean/VO;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lx/launcher8/download/FileSeed;->vo:Lcom/lx/launcher8/setting/bean/VO;

    return-object v0
.end method

.method public getVsName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/lx/launcher8/download/FileSeed;->mVsName:Ljava/lang/String;

    return-object v0
.end method

.method public setFileId(I)V
    .locals 0
    .parameter "fileId"

    .prologue
    .line 38
    iput p1, p0, Lcom/lx/launcher8/download/FileSeed;->mFileId:I

    .line 39
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "mFileName"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/lx/launcher8/download/FileSeed;->mFileName:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setFileSize(J)V
    .locals 0
    .parameter "mFileSize"

    .prologue
    .line 70
    iput-wide p1, p0, Lcom/lx/launcher8/download/FileSeed;->mFileSize:J

    .line 71
    return-void
.end method

.method public setFileUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "fileUrl"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/lx/launcher8/download/FileSeed;->mFileUrl:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "iconUrl"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/lx/launcher8/download/FileSeed;->mIconUrl:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setLoadedSize(J)V
    .locals 0
    .parameter "mLoadedSize"

    .prologue
    .line 78
    iput-wide p1, p0, Lcom/lx/launcher8/download/FileSeed;->mLoadedSize:J

    .line 79
    return-void
.end method

.method public setPkName(Ljava/lang/String;)V
    .locals 0
    .parameter "pkName"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/lx/launcher8/download/FileSeed;->mPkName:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setSavePath(Ljava/lang/String;)V
    .locals 0
    .parameter "mSavePath"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/lx/launcher8/download/FileSeed;->mSavePath:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setState(I)V
    .locals 0
    .parameter "mState"

    .prologue
    .line 86
    iput p1, p0, Lcom/lx/launcher8/download/FileSeed;->mState:I

    .line 87
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/lx/launcher8/download/FileSeed;->mTitle:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setVo(Lcom/lx/launcher8/setting/bean/VO;)V
    .locals 0
    .parameter "vo"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/lx/launcher8/download/FileSeed;->vo:Lcom/lx/launcher8/setting/bean/VO;

    .line 95
    return-void
.end method

.method public setVsName(Ljava/lang/String;)V
    .locals 0
    .parameter "vsName"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/lx/launcher8/download/FileSeed;->mVsName:Ljava/lang/String;

    .line 127
    return-void
.end method
