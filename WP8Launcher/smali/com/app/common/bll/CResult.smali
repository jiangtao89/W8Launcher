.class public Lcom/app/common/bll/CResult;
.super Ljava/lang/Object;
.source "CResult.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xaecb4c661178055L


# instance fields
.field public mAPNType:Ljava/lang/String;

.field public mErrorHit:Z

.field public mErrorMsg:Ljava/lang/String;

.field public mGotoLogin:I

.field public mHaveNet:Z

.field public mIP:Ljava/lang/String;

.field public mIsError:Z

.field public mNetType:Ljava/lang/String;

.field public mResultCode:I

.field public mShowMsgCode:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput v1, p0, Lcom/app/common/bll/CResult;->mResultCode:I

    .line 13
    iput-boolean v1, p0, Lcom/app/common/bll/CResult;->mIsError:Z

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/app/common/bll/CResult;->mErrorMsg:Ljava/lang/String;

    .line 15
    iput v1, p0, Lcom/app/common/bll/CResult;->mShowMsgCode:I

    .line 16
    iput v1, p0, Lcom/app/common/bll/CResult;->mGotoLogin:I

    .line 17
    iput-boolean v2, p0, Lcom/app/common/bll/CResult;->mErrorHit:Z

    .line 19
    iput-boolean v2, p0, Lcom/app/common/bll/CResult;->mHaveNet:Z

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/app/common/bll/CResult;->mNetType:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/app/common/bll/CResult;->mAPNType:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/app/common/bll/CResult;->mIP:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static isSuccess(Landroid/content/Context;Lcom/app/common/bll/CResult;)Z
    .locals 1
    .parameter "context"
    .parameter "result"

    .prologue
    .line 69
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/app/common/bll/CResult;->isSuccess(Landroid/content/Context;Lcom/app/common/bll/CResult;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSuccess(Landroid/content/Context;Lcom/app/common/bll/CResult;Ljava/lang/String;)Z
    .locals 7
    .parameter "context"
    .parameter "result"
    .parameter "language"

    .prologue
    const/4 v6, 0x3

    const/4 v5, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    if-nez p1, :cond_1

    .line 32
    invoke-static {p0, p2, v2}, Lcom/app/common/utils/Language;->showNetwork(Landroid/content/Context;Ljava/lang/String;I)V

    .line 62
    :cond_0
    :goto_0
    return v2

    .line 36
    :cond_1
    iget-boolean v4, p1, Lcom/app/common/bll/CResult;->mErrorHit:Z

    if-nez v4, :cond_2

    .line 37
    iget v4, p1, Lcom/app/common/bll/CResult;->mShowMsgCode:I

    if-ne v4, v3, :cond_0

    move v2, v3

    goto :goto_0

    .line 40
    :cond_2
    iget-boolean v4, p1, Lcom/app/common/bll/CResult;->mHaveNet:Z

    if-nez v4, :cond_3

    .line 41
    invoke-static {p0, p2, v3}, Lcom/app/common/utils/Language;->showNetwork(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 45
    :cond_3
    iget-boolean v4, p1, Lcom/app/common/bll/CResult;->mIsError:Z

    if-eqz v4, :cond_7

    .line 46
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 47
    .local v0, defloc:Ljava/util/Locale;
    iget-object v3, p1, Lcom/app/common/bll/CResult;->mErrorMsg:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, info:Ljava/lang/String;
    const-string v3, "the operation timed out"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-le v3, v5, :cond_4

    .line 50
    invoke-static {p0, p2, v6}, Lcom/app/common/utils/Language;->showNetwork(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 51
    :cond_4
    const-string v3, "transport endpoint is not connected"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-le v3, v5, :cond_5

    .line 52
    const/4 v3, 0x2

    invoke-static {p0, p2, v3}, Lcom/app/common/utils/Language;->showNetwork(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 53
    :cond_5
    const-string v3, "timeout"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gt v3, v5, :cond_6

    const-string v3, "timed out"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-le v3, v5, :cond_0

    .line 54
    :cond_6
    invoke-static {p0, p2, v6}, Lcom/app/common/utils/Language;->showNetwork(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 59
    .end local v0           #defloc:Ljava/util/Locale;
    .end local v1           #info:Ljava/lang/String;
    :cond_7
    iget v4, p1, Lcom/app/common/bll/CResult;->mShowMsgCode:I

    if-ne v4, v3, :cond_8

    .line 60
    invoke-static {p0, p2, v2}, Lcom/app/common/utils/Language;->showNetwork(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_8
    move v2, v3

    .line 62
    goto :goto_0
.end method


# virtual methods
.method public isSucceed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 73
    iget v1, p0, Lcom/app/common/bll/CResult;->mResultCode:I

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
