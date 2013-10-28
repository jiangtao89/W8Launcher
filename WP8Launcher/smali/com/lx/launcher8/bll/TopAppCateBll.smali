.class public Lcom/lx/launcher8/bll/TopAppCateBll;
.super Lcom/app/common/bll/BllXmlPull;
.source "TopAppCateBll.java"


# static fields
.field private static final serialVersionUID:J = -0x7253c57b7a06f843L


# instance fields
.field private transient mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;

.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lx/launcher8/setting/bean/TopAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private transient mCateInfo:Lcom/lx/launcher8/setting/bean/TopAppCateInfo;

.field private mCateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lx/launcher8/setting/bean/TopAppCateInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/app/common/bll/BllXmlPull;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/bll/TopAppCateBll;->mAppList:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/bll/TopAppCateBll;->mCateList:Ljava/util/List;

    .line 22
    return-void
.end method


# virtual methods
.method protected endTag(Ljava/lang/String;)V
    .locals 3
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-super {p0, p1}, Lcom/app/common/bll/BllXmlPull;->endTag(Ljava/lang/String;)V

    .line 69
    const-string v0, "cate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/bll/TopAppCateBll;->mCateInfo:Lcom/lx/launcher8/setting/bean/TopAppCateInfo;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/lx/launcher8/bll/TopAppCateBll;->mCateList:Ljava/util/List;

    iget-object v1, p0, Lcom/lx/launcher8/bll/TopAppCateBll;->mCateInfo:Lcom/lx/launcher8/setting/bean/TopAppCateInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iput-object v2, p0, Lcom/lx/launcher8/bll/TopAppCateBll;->mCateInfo:Lcom/lx/launcher8/setting/bean/TopAppCateInfo;

    .line 78
    :goto_0
    return-void

    .line 72
    :cond_0
    const-string v0, "app"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lx/launcher8/bll/TopAppCateBll;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/lx/launcher8/bll/TopAppCateBll;->mAppList:Ljava/util/List;

    iget-object v1, p0, Lcom/lx/launcher8/bll/TopAppCateBll;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iput-object v2, p0, Lcom/lx/launcher8/bll/TopAppCateBll;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;

    goto :goto_0

    .line 76
    :cond_1
    invoke-super {p0, p1}, Lcom/app/common/bll/BllXmlPull;->endTag(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAppCateList(Landroid/content/Context;Ljava/lang/String;)Lcom/lx/launcher8/bll/TopAppCateBll;
    .locals 2
    .parameter "context"
    .parameter "url"

    .prologue
    .line 25
    invoke-static {p1}, Lcom/lx/launcher8/util/Utils;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/bll/TopAppCateBll;->mLanguage:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iget-object v1, p0, Lcom/lx/launcher8/bll/TopAppCateBll;->mPage:Lcom/app/common/bll/CPage;

    invoke-static {p0, p1, p2, v0, v1}, Lcom/app/common/bll/BllObject;->Get(Lcom/app/common/bll/BllXmlPull;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/app/common/bll/CPage;)Lcom/app/common/bll/BllXmlPull;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/bll/TopAppCateBll;

    return-object v0
.end method

.method public getAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lx/launcher8/setting/bean/TopAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lx/launcher8/bll/TopAppCateBll;->mAppList:Ljava/util/List;

    return-object v0
.end method

.method public getCateList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lx/launcher8/setting/bean/TopAppCateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lx/launcher8/bll/TopAppCateBll;->mCateList:Ljava/util/List;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lx/launcher8/bll/TopAppCateBll;->mCateList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

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
    .line 44
    const-string v0, "cate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Lcom/lx/launcher8/setting/bean/TopAppCateInfo;

    invoke-direct {v0}, Lcom/lx/launcher8/setting/bean/TopAppCateInfo;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/bll/TopAppCateBll;->mCateInfo:Lcom/lx/launcher8/setting/bean/TopAppCateInfo;

    .line 63
    :goto_0
    return-void

    .line 46
    :cond_0
    const-string v0, "cateid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/lx/launcher8/bll/TopAppCateBll;->mCateInfo:Lcom/lx/launcher8/setting/bean/TopAppCateInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/TopAppCateBll;->getTextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/TopAppCateInfo;->setCateId(I)V

    goto :goto_0

    .line 48
    :cond_1
    const-string v0, "catename"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    iget-object v0, p0, Lcom/lx/launcher8/bll/TopAppCateBll;->mCateInfo:Lcom/lx/launcher8/setting/bean/TopAppCateInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/TopAppCateBll;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/TopAppCateInfo;->setCateName(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_2
    const-string v0, "ename"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 51
    iget-object v0, p0, Lcom/lx/launcher8/bll/TopAppCateBll;->mCateInfo:Lcom/lx/launcher8/setting/bean/TopAppCateInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/TopAppCateBll;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/TopAppCateInfo;->setEName(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_3
    const-string v0, "app"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 53
    new-instance v0, Lcom/lx/launcher8/setting/bean/TopAppInfo;

    invoke-direct {v0}, Lcom/lx/launcher8/setting/bean/TopAppInfo;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/bll/TopAppCateBll;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;

    goto :goto_0

    .line 54
    :cond_4
    const-string v0, "appid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 55
    iget-object v0, p0, Lcom/lx/launcher8/bll/TopAppCateBll;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/TopAppCateBll;->getTextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->setAppId(I)V

    goto :goto_0

    .line 56
    :cond_5
    const-string v0, "imgurl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 57
    iget-object v0, p0, Lcom/lx/launcher8/bll/TopAppCateBll;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/TopAppCateBll;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->setImgUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_6
    const-string v0, "package"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 59
    iget-object v0, p0, Lcom/lx/launcher8/bll/TopAppCateBll;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/TopAppCateBll;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->setPkName(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_7
    invoke-super {p0, p1}, Lcom/app/common/bll/BllXmlPull;->startTag(Ljava/lang/String;)V

    goto :goto_0
.end method
