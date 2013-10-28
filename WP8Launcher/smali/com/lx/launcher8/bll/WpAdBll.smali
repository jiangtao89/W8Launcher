.class public Lcom/lx/launcher8/bll/WpAdBll;
.super Lcom/app/common/bll/BllXmlPull;
.source "WpAdBll.java"


# static fields
.field private static mWpAdBll:Lcom/lx/launcher8/bll/WpAdBll; = null

.field private static final serialVersionUID:J = -0x68f37b02d341a72eL


# instance fields
.field public mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lx/launcher8/setting/bean/WpAdInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWpAdInfo:Lcom/lx/launcher8/setting/bean/WpAdInfo;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/app/common/bll/BllXmlPull;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/bll/WpAdBll;->mList:Ljava/util/List;

    .line 20
    return-void
.end method

.method public static getInstance()Lcom/lx/launcher8/bll/WpAdBll;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/lx/launcher8/bll/WpAdBll;->mWpAdBll:Lcom/lx/launcher8/bll/WpAdBll;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/lx/launcher8/bll/WpAdBll;

    invoke-direct {v0}, Lcom/lx/launcher8/bll/WpAdBll;-><init>()V

    sput-object v0, Lcom/lx/launcher8/bll/WpAdBll;->mWpAdBll:Lcom/lx/launcher8/bll/WpAdBll;

    .line 26
    :cond_0
    sget-object v0, Lcom/lx/launcher8/bll/WpAdBll;->mWpAdBll:Lcom/lx/launcher8/bll/WpAdBll;

    return-object v0
.end method


# virtual methods
.method protected endTag(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/app/common/bll/BllXmlPull;->endTag(Ljava/lang/String;)V

    .line 61
    const-string v0, "ads"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/lx/launcher8/bll/WpAdBll;->mWpAdInfo:Lcom/lx/launcher8/setting/bean/WpAdInfo;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/lx/launcher8/bll/WpAdBll;->mList:Ljava/util/List;

    iget-object v1, p0, Lcom/lx/launcher8/bll/WpAdBll;->mWpAdInfo:Lcom/lx/launcher8/setting/bean/WpAdInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_0
    return-void
.end method

.method public getInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/lx/launcher8/bll/WpAdBll;
    .locals 2
    .parameter "context"
    .parameter "url"
    .parameter "params"

    .prologue
    .line 30
    new-instance v0, Lcom/lx/launcher8/bll/WpAdBll;

    invoke-direct {v0}, Lcom/lx/launcher8/bll/WpAdBll;-><init>()V

    .line 31
    .local v0, bll:Lcom/lx/launcher8/bll/WpAdBll;
    const/4 v1, 0x0

    invoke-static {v0, p1, p2, p3, v1}, Lcom/app/common/bll/BllObject;->Get(Lcom/app/common/bll/BllXmlPull;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/app/common/bll/CPage;)Lcom/app/common/bll/BllXmlPull;

    move-result-object v0

    .end local v0           #bll:Lcom/lx/launcher8/bll/WpAdBll;
    check-cast v0, Lcom/lx/launcher8/bll/WpAdBll;

    .line 32
    .restart local v0       #bll:Lcom/lx/launcher8/bll/WpAdBll;
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 37
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
    .line 42
    invoke-super {p0, p1}, Lcom/app/common/bll/BllXmlPull;->startTag(Ljava/lang/String;)V

    .line 44
    const-string v0, "ads"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    new-instance v0, Lcom/lx/launcher8/setting/bean/WpAdInfo;

    invoke-direct {v0}, Lcom/lx/launcher8/setting/bean/WpAdInfo;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/bll/WpAdBll;->mWpAdInfo:Lcom/lx/launcher8/setting/bean/WpAdInfo;

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    const-string v0, "url"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    iget-object v0, p0, Lcom/lx/launcher8/bll/WpAdBll;->mWpAdInfo:Lcom/lx/launcher8/setting/bean/WpAdInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/WpAdBll;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/WpAdInfo;->setUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_2
    const-string v0, "imgurl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 49
    iget-object v0, p0, Lcom/lx/launcher8/bll/WpAdBll;->mWpAdInfo:Lcom/lx/launcher8/setting/bean/WpAdInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/WpAdBll;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/WpAdInfo;->setImgUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_3
    const-string v0, "pos"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 51
    iget-object v0, p0, Lcom/lx/launcher8/bll/WpAdBll;->mWpAdInfo:Lcom/lx/launcher8/setting/bean/WpAdInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/WpAdBll;->getTextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/WpAdInfo;->setPos(I)V

    goto :goto_0

    .line 52
    :cond_4
    const-string v0, "showtype"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/lx/launcher8/bll/WpAdBll;->mWpAdInfo:Lcom/lx/launcher8/setting/bean/WpAdInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/WpAdBll;->getTextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/WpAdInfo;->setShowType(I)V

    goto :goto_0
.end method
