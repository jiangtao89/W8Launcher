.class public Lcom/lx/launcher8/bll/ShareBll;
.super Lcom/app/common/bll/BllXmlPull;
.source "ShareBll.java"


# static fields
.field private static mShareUrlBll:Lcom/lx/launcher8/bll/ShareBll; = null

.field private static final serialVersionUID:J = 0x198f2322579226f4L


# instance fields
.field public shareInfo:Lcom/lx/launcher8/setting/bean/ShareInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/app/common/bll/BllXmlPull;-><init>()V

    .line 16
    return-void
.end method

.method public static getInstance()Lcom/lx/launcher8/bll/ShareBll;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/lx/launcher8/bll/ShareBll;->mShareUrlBll:Lcom/lx/launcher8/bll/ShareBll;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/lx/launcher8/bll/ShareBll;

    invoke-direct {v0}, Lcom/lx/launcher8/bll/ShareBll;-><init>()V

    sput-object v0, Lcom/lx/launcher8/bll/ShareBll;->mShareUrlBll:Lcom/lx/launcher8/bll/ShareBll;

    .line 22
    :cond_0
    sget-object v0, Lcom/lx/launcher8/bll/ShareBll;->mShareUrlBll:Lcom/lx/launcher8/bll/ShareBll;

    return-object v0
.end method


# virtual methods
.method protected endTag(Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/app/common/bll/BllXmlPull;->endTag(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public getInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/lx/launcher8/bll/ShareBll;
    .locals 2
    .parameter "context"
    .parameter "url"
    .parameter "params"

    .prologue
    .line 26
    new-instance v0, Lcom/lx/launcher8/bll/ShareBll;

    invoke-direct {v0}, Lcom/lx/launcher8/bll/ShareBll;-><init>()V

    .line 27
    .local v0, bll:Lcom/lx/launcher8/bll/ShareBll;
    const/4 v1, 0x0

    invoke-static {v0, p1, p2, p3, v1}, Lcom/app/common/bll/BllObject;->Get(Lcom/app/common/bll/BllXmlPull;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/app/common/bll/CPage;)Lcom/app/common/bll/BllXmlPull;

    move-result-object v0

    .end local v0           #bll:Lcom/lx/launcher8/bll/ShareBll;
    check-cast v0, Lcom/lx/launcher8/bll/ShareBll;

    .line 28
    .restart local v0       #bll:Lcom/lx/launcher8/bll/ShareBll;
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method protected startTag(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/app/common/bll/BllXmlPull;->startTag(Ljava/lang/String;)V

    .line 40
    const-string v0, "share"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    new-instance v0, Lcom/lx/launcher8/setting/bean/ShareInfo;

    invoke-direct {v0}, Lcom/lx/launcher8/setting/bean/ShareInfo;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/bll/ShareBll;->shareInfo:Lcom/lx/launcher8/setting/bean/ShareInfo;

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    const-string v0, "friend"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 43
    iget-object v0, p0, Lcom/lx/launcher8/bll/ShareBll;->shareInfo:Lcom/lx/launcher8/setting/bean/ShareInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/ShareBll;->getTextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/ShareInfo;->setFriend(I)V

    goto :goto_0

    .line 44
    :cond_2
    const-string v0, "url"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 45
    iget-object v0, p0, Lcom/lx/launcher8/bll/ShareBll;->shareInfo:Lcom/lx/launcher8/setting/bean/ShareInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/ShareBll;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/ShareInfo;->setUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_3
    const-string v0, "package"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/lx/launcher8/bll/ShareBll;->shareInfo:Lcom/lx/launcher8/setting/bean/ShareInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/ShareBll;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/ShareInfo;->setProPackage(Ljava/lang/String;)V

    goto :goto_0
.end method
