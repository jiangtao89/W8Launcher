.class public Lcom/lx/launcher8/setting/bean/TopAppInfo;
.super Ljava/lang/Object;
.source "TopAppInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1235ac7e39f6e6b0L


# instance fields
.field private mAppId:I

.field private mContent:Ljava/lang/String;

.field private mDownCount:I

.field private mDownUrl:Ljava/lang/String;

.field private mFileSize:Ljava/lang/String;

.field private mFromId:I

.field private mIcon:Ljava/lang/String;

.field private mIcon2:Ljava/lang/String;

.field private mImgUrl:Ljava/lang/String;

.field private mIntro:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPkName:Ljava/lang/String;

.field private mStar:I

.field private mTime:Ljava/lang/String;

.field private mVsName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppId()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/lx/launcher8/setting/bean/TopAppInfo;->mAppId:I

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/lx/launcher8/setting/bean/TopAppInfo;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getDownCount()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/lx/launcher8/setting/bean/TopAppInfo;->mDownCount:I

    return v0
.end method

.method public getDownUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lx/launcher8/setting/bean/TopAppInfo;->mDownUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lx/launcher8/setting/bean/TopAppInfo;->mFileSize:Ljava/lang/String;

    return-object v0
.end method

.method public getFromId()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/lx/launcher8/setting/bean/TopAppInfo;->mFromId:I

    return v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lx/launcher8/setting/bean/TopAppInfo;->mIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/lx/launcher8/setting/bean/TopAppInfo;->mIcon2:Ljava/lang/String;

    return-object v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lx/launcher8/setting/bean/TopAppInfo;->mImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIntro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/lx/launcher8/setting/bean/TopAppInfo;->mIntro:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lx/launcher8/setting/bean/TopAppInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPkName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lx/launcher8/setting/bean/TopAppInfo;->mPkName:Ljava/lang/String;

    return-object v0
.end method

.method public getSaveName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lx/launcher8/setting/bean/TopAppInfo;->mPkName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/bean/TopAppInfo;->mVsName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStar()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/lx/launcher8/setting/bean/TopAppInfo;->mStar:I

    return v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/lx/launcher8/setting/bean/TopAppInfo;->mTime:Ljava/lang/String;

    return-object v0
.end method

.method public getVsName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lx/launcher8/setting/bean/TopAppInfo;->mVsName:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(I)V
    .locals 0
    .parameter "appId"

    .prologue
    .line 29
    iput p1, p0, Lcom/lx/launcher8/setting/bean/TopAppInfo;->mAppId:I

    .line 30
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/lx/launcher8/setting/bean/TopAppInfo;->mContent:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setDownCount(I)V
    .locals 0
    .parameter "downCount"

    .prologue
    .line 85
    iput p1, p0, Lcom/lx/launcher8/setting/bean/TopAppInfo;->mDownCount:I

    .line 86
    return-void
.end method

.method public setDownUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "downUrl"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/lx/launcher8/setting/bean/TopAppInfo;->mDownUrl:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setFileSize(Ljava/lang/String;)V
    .locals 0
    .parameter "fileSize"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/lx/launcher8/setting/bean/TopAppInfo;->mFileSize:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setFromId(I)V
    .locals 0
    .parameter "fromId"

    .prologue
    .line 101
    iput p1, p0, Lcom/lx/launcher8/setting/bean/TopAppInfo;->mFromId:I

    .line 102
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/lx/launcher8/setting/bean/TopAppInfo;->mIcon:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setIcon2(Ljava/lang/String;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/lx/launcher8/setting/bean/TopAppInfo;->mIcon2:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "imgUrl"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/lx/launcher8/setting/bean/TopAppInfo;->mImgUrl:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setIntro(Ljava/lang/String;)V
    .locals 0
    .parameter "intro"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/lx/launcher8/setting/bean/TopAppInfo;->mIntro:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/lx/launcher8/setting/bean/TopAppInfo;->mName:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setPkName(Ljava/lang/String;)V
    .locals 0
    .parameter "pkName"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/lx/launcher8/setting/bean/TopAppInfo;->mPkName:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setStar(I)V
    .locals 0
    .parameter "star"

    .prologue
    .line 37
    iput p1, p0, Lcom/lx/launcher8/setting/bean/TopAppInfo;->mStar:I

    .line 38
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/lx/launcher8/setting/bean/TopAppInfo;->mTime:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setVsName(Ljava/lang/String;)V
    .locals 0
    .parameter "vsName"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/lx/launcher8/setting/bean/TopAppInfo;->mVsName:Ljava/lang/String;

    .line 78
    return-void
.end method
