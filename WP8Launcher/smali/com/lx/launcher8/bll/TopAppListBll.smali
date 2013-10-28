.class public Lcom/lx/launcher8/bll/TopAppListBll;
.super Lcom/app/common/bll/BllXmlPull;
.source "TopAppListBll.java"


# static fields
.field private static mDownFrom:I = 0x0

.field private static final serialVersionUID:J = 0x1919335382f578cfL


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


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/app/common/bll/BllXmlPull;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/bll/TopAppListBll;->mAppList:Ljava/util/List;

    .line 23
    return-void
.end method


# virtual methods
.method public endTag(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 74
    const-string v0, "app"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/bll/TopAppListBll;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/lx/launcher8/bll/TopAppListBll;->mAppList:Ljava/util/List;

    iget-object v1, p0, Lcom/lx/launcher8/bll/TopAppListBll;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/bll/TopAppListBll;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-super {p0, p1}, Lcom/app/common/bll/BllXmlPull;->endTag(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAppList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/app/common/bll/CPage;Z)Lcom/lx/launcher8/bll/TopAppListBll;
    .locals 8
    .parameter "context"
    .parameter "url"
    .parameter "params"
    .parameter "page"
    .parameter "fresh"

    .prologue
    const/4 v7, 0x1

    .line 26
    invoke-static {p1}, Lcom/lx/launcher8/util/Utils;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/bll/TopAppListBll;->mLanguage:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "app"

    invoke-static {v1}, Lcom/lx/launcher8/util/BasePath;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 28
    .local v5, cachepath:Ljava/lang/String;
    if-eqz p5, :cond_0

    const/4 v6, 0x0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v7}, Lcom/app/common/bll/BllObject;->Get(Lcom/app/common/bll/BllXmlPull;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/app/common/bll/CPage;Ljava/lang/String;ZZ)Lcom/app/common/bll/BllXmlPull;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/bll/TopAppListBll;

    return-object v0

    :cond_0
    move v6, v7

    goto :goto_0
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
    .line 32
    iget-object v0, p0, Lcom/lx/launcher8/bll/TopAppListBll;->mAppList:Ljava/util/List;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lx/launcher8/bll/TopAppListBll;->mAppList:Ljava/util/List;

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
    .line 42
    const-string v0, "downfrom"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/bll/TopAppListBll;->getAttributeValueInt(I)I

    move-result v0

    sput v0, Lcom/lx/launcher8/bll/TopAppListBll;->mDownFrom:I

    .line 46
    :cond_0
    const-string v0, "app"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    new-instance v0, Lcom/lx/launcher8/setting/bean/TopAppInfo;

    invoke-direct {v0}, Lcom/lx/launcher8/setting/bean/TopAppInfo;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/bll/TopAppListBll;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;

    .line 48
    iget-object v0, p0, Lcom/lx/launcher8/bll/TopAppListBll;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;

    sget v1, Lcom/lx/launcher8/bll/TopAppListBll;->mDownFrom:I

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->setFromId(I)V

    .line 70
    :goto_0
    return-void

    .line 49
    :cond_1
    const-string v0, "appid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    iget-object v0, p0, Lcom/lx/launcher8/bll/TopAppListBll;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/TopAppListBll;->getTextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->setAppId(I)V

    goto :goto_0

    .line 51
    :cond_2
    const-string v0, "cname"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 52
    iget-object v0, p0, Lcom/lx/launcher8/bll/TopAppListBll;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/TopAppListBll;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_3
    const-string v0, "package"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 54
    iget-object v0, p0, Lcom/lx/launcher8/bll/TopAppListBll;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/TopAppListBll;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->setPkName(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_4
    const-string v0, "vsname"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 56
    iget-object v0, p0, Lcom/lx/launcher8/bll/TopAppListBll;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/TopAppListBll;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->setVsName(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_5
    const-string v0, "icons"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 58
    iget-object v0, p0, Lcom/lx/launcher8/bll/TopAppListBll;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/TopAppListBll;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->setIcon(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_6
    const-string v0, "downurl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 60
    iget-object v0, p0, Lcom/lx/launcher8/bll/TopAppListBll;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/TopAppListBll;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->setDownUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_7
    const-string v0, "downcount"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 62
    iget-object v0, p0, Lcom/lx/launcher8/bll/TopAppListBll;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/TopAppListBll;->getTextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->setDownCount(I)V

    goto :goto_0

    .line 63
    :cond_8
    const-string v0, "star"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 64
    iget-object v0, p0, Lcom/lx/launcher8/bll/TopAppListBll;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/TopAppListBll;->getTextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->setStar(I)V

    goto/16 :goto_0

    .line 65
    :cond_9
    const-string v0, "intro"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 66
    iget-object v0, p0, Lcom/lx/launcher8/bll/TopAppListBll;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/TopAppListBll;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->setIntro(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 68
    :cond_a
    invoke-super {p0, p1}, Lcom/app/common/bll/BllXmlPull;->startTag(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
