.class public Lcom/lx/launcher8/bll/TopAppDetailBll;
.super Lcom/app/common/bll/BllXmlPull;
.source "TopAppDetailBll.java"


# static fields
.field private static final serialVersionUID:J = -0xbc762edb43d6d78L


# instance fields
.field private transient mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;

.field private transient mPicInfo:Lcom/lx/launcher8/setting/bean/TopAppPicInfo;

.field private mPicList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lx/launcher8/setting/bean/TopAppPicInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/app/common/bll/BllXmlPull;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/bll/TopAppDetailBll;->mPicList:Ljava/util/List;

    .line 22
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
    .line 82
    const-string v0, "pic"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/bll/TopAppDetailBll;->mPicInfo:Lcom/lx/launcher8/setting/bean/TopAppPicInfo;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/lx/launcher8/bll/TopAppDetailBll;->mPicList:Ljava/util/List;

    iget-object v1, p0, Lcom/lx/launcher8/bll/TopAppDetailBll;->mPicInfo:Lcom/lx/launcher8/setting/bean/TopAppPicInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/bll/TopAppDetailBll;->mPicInfo:Lcom/lx/launcher8/setting/bean/TopAppPicInfo;

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-super {p0, p1}, Lcom/app/common/bll/BllXmlPull;->endTag(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAppDetail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/lx/launcher8/bll/TopAppDetailBll;
    .locals 1
    .parameter "context"
    .parameter "url"
    .parameter "params"

    .prologue
    .line 25
    invoke-static {p1}, Lcom/lx/launcher8/util/Utils;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/bll/TopAppDetailBll;->mLanguage:Ljava/lang/String;

    .line 26
    iget-object v0, p0, Lcom/lx/launcher8/bll/TopAppDetailBll;->mPage:Lcom/app/common/bll/CPage;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/app/common/bll/BllObject;->Get(Lcom/app/common/bll/BllXmlPull;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/app/common/bll/CPage;)Lcom/app/common/bll/BllXmlPull;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/bll/TopAppDetailBll;

    return-object v0
.end method

.method public getAppInfo()Lcom/lx/launcher8/setting/bean/TopAppInfo;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lx/launcher8/bll/TopAppDetailBll;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;

    return-object v0
.end method

.method public getPicList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lx/launcher8/setting/bean/TopAppPicInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lx/launcher8/bll/TopAppDetailBll;->mPicList:Ljava/util/List;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 92
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
    .line 39
    const-string v0, "app"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Lcom/lx/launcher8/setting/bean/TopAppInfo;

    invoke-direct {v0}, Lcom/lx/launcher8/setting/bean/TopAppInfo;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/bll/TopAppDetailBll;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;

    .line 78
    :goto_0
    return-void

    .line 41
    :cond_0
    const-string v0, "appid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/lx/launcher8/bll/TopAppDetailBll;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/TopAppDetailBll;->getTextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->setAppId(I)V

    goto :goto_0

    .line 43
    :cond_1
    const-string v0, "cname"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    iget-object v0, p0, Lcom/lx/launcher8/bll/TopAppDetailBll;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/TopAppDetailBll;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_2
    const-string v0, "package"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 46
    iget-object v0, p0, Lcom/lx/launcher8/bll/TopAppDetailBll;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/TopAppDetailBll;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->setPkName(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :cond_3
    const-string v0, "vsname"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 48
    iget-object v0, p0, Lcom/lx/launcher8/bll/TopAppDetailBll;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/TopAppDetailBll;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->setVsName(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_4
    const-string v0, "icons"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 50
    iget-object v0, p0, Lcom/lx/launcher8/bll/TopAppDetailBll;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/TopAppDetailBll;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->setIcon(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_5
    const-string v0, "downurl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 52
    iget-object v0, p0, Lcom/lx/launcher8/bll/TopAppDetailBll;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/TopAppDetailBll;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->setDownUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_6
    const-string v0, "filesize"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 54
    iget-object v0, p0, Lcom/lx/launcher8/bll/TopAppDetailBll;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/TopAppDetailBll;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->setFileSize(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_7
    const-string v0, "downcount"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 56
    iget-object v0, p0, Lcom/lx/launcher8/bll/TopAppDetailBll;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/TopAppDetailBll;->getTextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->setDownCount(I)V

    goto/16 :goto_0

    .line 57
    :cond_8
    const-string v0, "time"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 58
    iget-object v0, p0, Lcom/lx/launcher8/bll/TopAppDetailBll;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/TopAppDetailBll;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->setTime(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 59
    :cond_9
    const-string v0, "star"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 60
    iget-object v0, p0, Lcom/lx/launcher8/bll/TopAppDetailBll;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/TopAppDetailBll;->getTextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->setStar(I)V

    goto/16 :goto_0

    .line 61
    :cond_a
    const-string v0, "intro"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 62
    iget-object v0, p0, Lcom/lx/launcher8/bll/TopAppDetailBll;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/TopAppDetailBll;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->setIntro(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 63
    :cond_b
    const-string v0, "content"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 64
    iget-object v0, p0, Lcom/lx/launcher8/bll/TopAppDetailBll;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/TopAppDetailBll;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->setContent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 65
    :cond_c
    const-string v0, "icons2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 66
    iget-object v0, p0, Lcom/lx/launcher8/bll/TopAppDetailBll;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/TopAppDetailBll;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->setIcon2(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 67
    :cond_d
    const-string v0, "fromid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 68
    iget-object v0, p0, Lcom/lx/launcher8/bll/TopAppDetailBll;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/TopAppDetailBll;->getTextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->setFromId(I)V

    goto/16 :goto_0

    .line 69
    :cond_e
    const-string v0, "pic"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 70
    new-instance v0, Lcom/lx/launcher8/setting/bean/TopAppPicInfo;

    invoke-direct {v0}, Lcom/lx/launcher8/setting/bean/TopAppPicInfo;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/bll/TopAppDetailBll;->mPicInfo:Lcom/lx/launcher8/setting/bean/TopAppPicInfo;

    goto/16 :goto_0

    .line 71
    :cond_f
    const-string v0, "prevurl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 72
    iget-object v0, p0, Lcom/lx/launcher8/bll/TopAppDetailBll;->mPicInfo:Lcom/lx/launcher8/setting/bean/TopAppPicInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/TopAppDetailBll;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/TopAppPicInfo;->setPrevUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 73
    :cond_10
    const-string v0, "acturl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 74
    iget-object v0, p0, Lcom/lx/launcher8/bll/TopAppDetailBll;->mPicInfo:Lcom/lx/launcher8/setting/bean/TopAppPicInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/TopAppDetailBll;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/TopAppPicInfo;->setActUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 76
    :cond_11
    invoke-super {p0, p1}, Lcom/app/common/bll/BllXmlPull;->startTag(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
