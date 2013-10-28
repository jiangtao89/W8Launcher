.class public abstract Lcom/app/common/bll/BllXmlPull;
.super Lcom/app/common/bll/UXmlPull;
.source "BllXmlPull.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1c23e530beeefe9eL


# instance fields
.field public mLanguage:Ljava/lang/String;

.field public mPage:Lcom/app/common/bll/CPage;

.field public mReadFile:Z

.field public mResult:Lcom/app/common/bll/CResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/app/common/bll/UXmlPull;-><init>()V

    .line 11
    new-instance v0, Lcom/app/common/bll/CResult;

    invoke-direct {v0}, Lcom/app/common/bll/CResult;-><init>()V

    iput-object v0, p0, Lcom/app/common/bll/BllXmlPull;->mResult:Lcom/app/common/bll/CResult;

    .line 12
    new-instance v0, Lcom/app/common/bll/CPage;

    invoke-direct {v0}, Lcom/app/common/bll/CPage;-><init>()V

    iput-object v0, p0, Lcom/app/common/bll/BllXmlPull;->mPage:Lcom/app/common/bll/CPage;

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/app/common/bll/BllXmlPull;->mReadFile:Z

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/app/common/bll/UXmlPull;-><init>(Ljava/io/InputStream;)V

    .line 11
    new-instance v0, Lcom/app/common/bll/CResult;

    invoke-direct {v0}, Lcom/app/common/bll/CResult;-><init>()V

    iput-object v0, p0, Lcom/app/common/bll/BllXmlPull;->mResult:Lcom/app/common/bll/CResult;

    .line 12
    new-instance v0, Lcom/app/common/bll/CPage;

    invoke-direct {v0}, Lcom/app/common/bll/CPage;-><init>()V

    iput-object v0, p0, Lcom/app/common/bll/BllXmlPull;->mPage:Lcom/app/common/bll/CPage;

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/app/common/bll/BllXmlPull;->mReadFile:Z

    .line 21
    return-void
.end method


# virtual methods
.method public abstract isEmpty()Z
.end method

.method public setError(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 2
    .parameter "e"
    .parameter "remark"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/app/common/bll/BllXmlPull;->mResult:Lcom/app/common/bll/CResult;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/app/common/bll/CResult;->mIsError:Z

    .line 34
    iget-object v0, p0, Lcom/app/common/bll/BllXmlPull;->mResult:Lcom/app/common/bll/CResult;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/app/common/bll/CResult;->mErrorMsg:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setResult(Lcom/app/common/net/UHttp;)V
    .locals 2
    .parameter "http"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/app/common/bll/BllXmlPull;->mResult:Lcom/app/common/bll/CResult;

    iget-boolean v1, p1, Lcom/app/common/net/UHttp;->mErrorFlag:Z

    iput-boolean v1, v0, Lcom/app/common/bll/CResult;->mIsError:Z

    .line 25
    iget-object v0, p0, Lcom/app/common/bll/BllXmlPull;->mResult:Lcom/app/common/bll/CResult;

    iget-object v1, p1, Lcom/app/common/net/UHttp;->mErrorMsg:Ljava/lang/String;

    iput-object v1, v0, Lcom/app/common/bll/CResult;->mErrorMsg:Ljava/lang/String;

    .line 26
    iget-object v0, p0, Lcom/app/common/bll/BllXmlPull;->mResult:Lcom/app/common/bll/CResult;

    iget-boolean v1, p1, Lcom/app/common/net/UHttp;->mHaveNet:Z

    iput-boolean v1, v0, Lcom/app/common/bll/CResult;->mHaveNet:Z

    .line 27
    iget-object v0, p0, Lcom/app/common/bll/BllXmlPull;->mResult:Lcom/app/common/bll/CResult;

    iget-object v1, p1, Lcom/app/common/net/UHttp;->mNetType:Ljava/lang/String;

    iput-object v1, v0, Lcom/app/common/bll/CResult;->mNetType:Ljava/lang/String;

    .line 28
    iget-object v0, p0, Lcom/app/common/bll/BllXmlPull;->mResult:Lcom/app/common/bll/CResult;

    iget-object v1, p1, Lcom/app/common/net/UHttp;->mAPNType:Ljava/lang/String;

    iput-object v1, v0, Lcom/app/common/bll/CResult;->mAPNType:Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lcom/app/common/bll/BllXmlPull;->mResult:Lcom/app/common/bll/CResult;

    iget-object v1, p1, Lcom/app/common/net/UHttp;->mIP:Ljava/lang/String;

    iput-object v1, v0, Lcom/app/common/bll/CResult;->mIP:Ljava/lang/String;

    .line 30
    return-void
.end method

.method protected startTag(Ljava/lang/String;)V
    .locals 5
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 46
    const-string v2, "resultinfo"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    invoke-virtual {p0}, Lcom/app/common/bll/BllXmlPull;->getAttributeCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, i:I
    iget-object v2, p0, Lcom/app/common/bll/BllXmlPull;->mResult:Lcom/app/common/bll/CResult;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    invoke-virtual {p0, v0}, Lcom/app/common/bll/BllXmlPull;->getAttributeValueInt(I)I

    move-result v3

    iput v3, v2, Lcom/app/common/bll/CResult;->mResultCode:I

    .line 50
    iget-object v2, p0, Lcom/app/common/bll/BllXmlPull;->mResult:Lcom/app/common/bll/CResult;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {p0, v1}, Lcom/app/common/bll/BllXmlPull;->getAttributeValueInt(I)I

    move-result v3

    iput v3, v2, Lcom/app/common/bll/CResult;->mGotoLogin:I

    .line 51
    iget-object v2, p0, Lcom/app/common/bll/BllXmlPull;->mResult:Lcom/app/common/bll/CResult;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {p0, v0}, Lcom/app/common/bll/BllXmlPull;->getAttributeValueInt(I)I

    move-result v3

    iput v3, v2, Lcom/app/common/bll/CResult;->mShowMsgCode:I

    .line 66
    .end local v1           #i:I
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    const-string v2, "page"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/app/common/bll/BllXmlPull;->getAttributeCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 56
    .restart local v0       #i:I
    iget-object v2, p0, Lcom/app/common/bll/BllXmlPull;->mPage:Lcom/app/common/bll/CPage;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {p0, v0}, Lcom/app/common/bll/BllXmlPull;->getAttributeValueInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/app/common/bll/CPage;->setP(I)V

    .line 57
    iget-object v2, p0, Lcom/app/common/bll/BllXmlPull;->mPage:Lcom/app/common/bll/CPage;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {p0, v1}, Lcom/app/common/bll/BllXmlPull;->getAttributeValueInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/app/common/bll/CPage;->setPagesize(I)V

    .line 58
    iget-object v2, p0, Lcom/app/common/bll/BllXmlPull;->mPage:Lcom/app/common/bll/CPage;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {p0, v0}, Lcom/app/common/bll/BllXmlPull;->getAttributeValueInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/app/common/bll/CPage;->setTotal(I)V

    .line 59
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {p0, v1}, Lcom/app/common/bll/BllXmlPull;->getAttributeValueInt(I)I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 60
    iget-object v2, p0, Lcom/app/common/bll/BllXmlPull;->mPage:Lcom/app/common/bll/CPage;

    invoke-virtual {v2, v4}, Lcom/app/common/bll/CPage;->setIsnextpage(Z)V

    .line 63
    :goto_1
    iget-object v2, p0, Lcom/app/common/bll/BllXmlPull;->mPage:Lcom/app/common/bll/CPage;

    invoke-virtual {v2, v4}, Lcom/app/common/bll/CPage;->setIndex(I)V

    goto :goto_0

    .line 62
    :cond_2
    iget-object v2, p0, Lcom/app/common/bll/BllXmlPull;->mPage:Lcom/app/common/bll/CPage;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/app/common/bll/CPage;->setIsnextpage(Z)V

    goto :goto_1
.end method
