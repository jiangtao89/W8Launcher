.class public Lcom/lx/launcher8/download/FilePart;
.super Ljava/lang/Object;
.source "FilePart.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x78059b6a45759340L


# instance fields
.field private mEndPos:J

.field private mFileId:I

.field private mFileName:Ljava/lang/String;

.field private mFileSize:J

.field private mLoadedSize:J

.field private mNumber:I

.field private mPartId:I

.field private mSavePath:Ljava/lang/String;

.field private mStartPos:J

.field private mStatus:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndPos()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/lx/launcher8/download/FilePart;->mEndPos:J

    return-wide v0
.end method

.method public getFileId()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/lx/launcher8/download/FilePart;->mFileId:I

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lx/launcher8/download/FilePart;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/lx/launcher8/download/FilePart;->mFileSize:J

    return-wide v0
.end method

.method public getLoadedSize()J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/lx/launcher8/download/FilePart;->mLoadedSize:J

    return-wide v0
.end method

.method public getNumber()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/lx/launcher8/download/FilePart;->mNumber:I

    return v0
.end method

.method public getPartId()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/lx/launcher8/download/FilePart;->mPartId:I

    return v0
.end method

.method public getSavePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lx/launcher8/download/FilePart;->mSavePath:Ljava/lang/String;

    return-object v0
.end method

.method public getStartPos()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/lx/launcher8/download/FilePart;->mStartPos:J

    return-wide v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/lx/launcher8/download/FilePart;->mStatus:I

    return v0
.end method

.method public setEndPos(J)V
    .locals 0
    .parameter "endPos"

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/lx/launcher8/download/FilePart;->mEndPos:J

    .line 64
    return-void
.end method

.method public setFileId(I)V
    .locals 0
    .parameter "fileId"

    .prologue
    .line 31
    iput p1, p0, Lcom/lx/launcher8/download/FilePart;->mFileId:I

    .line 32
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "fileName"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/lx/launcher8/download/FilePart;->mFileName:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setFileSize(J)V
    .locals 0
    .parameter "fileSize"

    .prologue
    .line 71
    iput-wide p1, p0, Lcom/lx/launcher8/download/FilePart;->mFileSize:J

    .line 72
    return-void
.end method

.method public setLoadedSize(J)V
    .locals 0
    .parameter "loadedSize"

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/lx/launcher8/download/FilePart;->mLoadedSize:J

    .line 80
    return-void
.end method

.method public setNumber(I)V
    .locals 0
    .parameter "number"

    .prologue
    .line 39
    iput p1, p0, Lcom/lx/launcher8/download/FilePart;->mNumber:I

    .line 40
    return-void
.end method

.method public setPartId(I)V
    .locals 0
    .parameter "partId"

    .prologue
    .line 23
    iput p1, p0, Lcom/lx/launcher8/download/FilePart;->mPartId:I

    .line 24
    return-void
.end method

.method public setSavePath(Ljava/lang/String;)V
    .locals 0
    .parameter "savePath"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/lx/launcher8/download/FilePart;->mSavePath:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setStartPos(J)V
    .locals 0
    .parameter "startPos"

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/lx/launcher8/download/FilePart;->mStartPos:J

    .line 56
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 47
    iput p1, p0, Lcom/lx/launcher8/download/FilePart;->mStatus:I

    .line 48
    return-void
.end method
