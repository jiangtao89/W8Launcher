.class public Lcom/lx/launcher8/task/BllWP8Init;
.super Lcom/app/common/bll/BllXmlPull;
.source "BllWP8Init.java"


# static fields
.field private static final serialVersionUID:J = -0x50192c32124eca07L


# instance fields
.field private mDisplay:Z

.field private mInitUrl:Ljava/lang/String;

.field private mIsToCheckScore:Z

.field public myShowInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Lcom/app/common/bll/BllXmlPull;-><init>()V

    .line 12
    const-string v0, "http://client.anall.cn/cpic/init.aspx"

    iput-object v0, p0, Lcom/lx/launcher8/task/BllWP8Init;->mInitUrl:Ljava/lang/String;

    .line 14
    iput-boolean v1, p0, Lcom/lx/launcher8/task/BllWP8Init;->mIsToCheckScore:Z

    .line 15
    iput-boolean v1, p0, Lcom/lx/launcher8/task/BllWP8Init;->mDisplay:Z

    .line 17
    iget-object v0, p0, Lcom/lx/launcher8/task/BllWP8Init;->mResult:Lcom/app/common/bll/CResult;

    iput-boolean v1, v0, Lcom/app/common/bll/CResult;->mErrorHit:Z

    .line 18
    return-void
.end method


# virtual methods
.method public getInitInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "softId"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lx/launcher8/task/BllWP8Init;->mInitUrl:Ljava/lang/String;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/app/common/bll/BllObject;->Get(Lcom/app/common/bll/BllXmlPull;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/app/common/bll/CPage;)Lcom/app/common/bll/BllXmlPull;

    .line 27
    return-void
.end method

.method public isDisplay()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/lx/launcher8/task/BllWP8Init;->mDisplay:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lx/launcher8/task/BllWP8Init;->myShowInfo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isToCheckScore()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/lx/launcher8/task/BllWP8Init;->mIsToCheckScore:Z

    return v0
.end method

.method public setDisplay(Z)V
    .locals 0
    .parameter "display"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/lx/launcher8/task/BllWP8Init;->mDisplay:Z

    .line 35
    return-void
.end method

.method public setToCheckScore(Z)V
    .locals 0
    .parameter "isToCheckScore"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/lx/launcher8/task/BllWP8Init;->mIsToCheckScore:Z

    .line 31
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
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 47
    const-string v2, "showremark"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/lx/launcher8/task/BllWP8Init;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/task/BllWP8Init;->myShowInfo:Ljava/lang/String;

    .line 56
    :goto_0
    return-void

    .line 49
    :cond_0
    const-string v2, "checkscore"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 52
    invoke-virtual {p0}, Lcom/lx/launcher8/task/BllWP8Init;->getTextInt()I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/lx/launcher8/task/BllWP8Init;->setToCheckScore(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 53
    :cond_2
    const-string v2, "display"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 54
    invoke-virtual {p0}, Lcom/lx/launcher8/task/BllWP8Init;->getTextInt()I

    move-result v2

    if-ne v2, v0, :cond_3

    :goto_2
    invoke-virtual {p0, v0}, Lcom/lx/launcher8/task/BllWP8Init;->setDisplay(Z)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2

    .line 55
    :cond_4
    invoke-super {p0, p1}, Lcom/app/common/bll/BllXmlPull;->startTag(Ljava/lang/String;)V

    goto :goto_0
.end method
