.class public Lcom/app/ads/bll/BllInit;
.super Lcom/app/common/bll/BllXmlPull;
.source "BllInit.java"


# static fields
.field private static final serialVersionUID:J = -0x20fbe2b76b312e2aL


# instance fields
.field private mDisplay:Z

.field private mIsToCheckScore:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Lcom/app/common/bll/BllXmlPull;-><init>()V

    .line 12
    iput-boolean v0, p0, Lcom/app/ads/bll/BllInit;->mIsToCheckScore:Z

    .line 13
    iput-boolean v0, p0, Lcom/app/ads/bll/BllInit;->mDisplay:Z

    .line 10
    return-void
.end method


# virtual methods
.method public getInitInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "softId"

    .prologue
    .line 29
    sget-object v0, Lcom/app/ads/config/UrlConfig;->InitUrl:Ljava/lang/String;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/app/common/bll/BllObject;->Get(Lcom/app/common/bll/BllXmlPull;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/app/common/bll/CPage;)Lcom/app/common/bll/BllXmlPull;

    .line 30
    return-void
.end method

.method public isDisplay()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/app/ads/bll/BllInit;->mDisplay:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public isToCheckScore()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/app/ads/bll/BllInit;->mIsToCheckScore:Z

    return v0
.end method

.method public setDisplay(Z)V
    .locals 0
    .parameter "display"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/app/ads/bll/BllInit;->mDisplay:Z

    .line 38
    return-void
.end method

.method public setToCheckScore(Z)V
    .locals 0
    .parameter "isToCheckScore"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/app/ads/bll/BllInit;->mIsToCheckScore:Z

    .line 34
    return-void
.end method

.method public startTag(Ljava/lang/String;)V
    .locals 3
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 16
    const-string v0, "checkscore"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {p0}, Lcom/app/ads/bll/BllInit;->getTextInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/app/ads/bll/BllInit;->setToCheckScore(Z)V

    .line 21
    :cond_0
    const-string v0, "display"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    invoke-virtual {p0}, Lcom/app/ads/bll/BllInit;->getTextInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    :goto_1
    invoke-virtual {p0, v1}, Lcom/app/ads/bll/BllInit;->setDisplay(Z)V

    .line 26
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 19
    goto :goto_0

    :cond_3
    move v1, v2

    .line 22
    goto :goto_1
.end method
