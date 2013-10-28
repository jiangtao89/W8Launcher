.class public Lcom/lx/launcher8/bll/UrlBll;
.super Lcom/app/common/bll/BllXmlPull;
.source "UrlBll.java"


# static fields
.field private static final serialVersionUID:J = 0x2ef3b1cf8a529df7L

.field private static uBll:Lcom/lx/launcher8/bll/UrlBll;


# instance fields
.field private info:Lcom/lx/launcher8/setting/bean/UrlInfo;

.field public uiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lx/launcher8/setting/bean/UrlInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/lx/launcher8/bll/UrlBll;->uBll:Lcom/lx/launcher8/bll/UrlBll;

    .line 12
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/app/common/bll/BllXmlPull;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/bll/UrlBll;->info:Lcom/lx/launcher8/setting/bean/UrlInfo;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/bll/UrlBll;->uiList:Ljava/util/List;

    .line 20
    return-void
.end method

.method public static getInstance()Lcom/lx/launcher8/bll/UrlBll;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/lx/launcher8/bll/UrlBll;->uBll:Lcom/lx/launcher8/bll/UrlBll;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/lx/launcher8/bll/UrlBll;

    invoke-direct {v0}, Lcom/lx/launcher8/bll/UrlBll;-><init>()V

    sput-object v0, Lcom/lx/launcher8/bll/UrlBll;->uBll:Lcom/lx/launcher8/bll/UrlBll;

    .line 26
    :cond_0
    sget-object v0, Lcom/lx/launcher8/bll/UrlBll;->uBll:Lcom/lx/launcher8/bll/UrlBll;

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
    .line 62
    invoke-super {p0, p1}, Lcom/app/common/bll/BllXmlPull;->endTag(Ljava/lang/String;)V

    .line 64
    const-string v0, "urls"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/lx/launcher8/bll/UrlBll;->info:Lcom/lx/launcher8/setting/bean/UrlInfo;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/lx/launcher8/bll/UrlBll;->uiList:Ljava/util/List;

    iget-object v1, p0, Lcom/lx/launcher8/bll/UrlBll;->info:Lcom/lx/launcher8/setting/bean/UrlInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_0
    return-void
.end method

.method public getInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/lx/launcher8/bll/UrlBll;
    .locals 2
    .parameter "context"
    .parameter "url"
    .parameter "params"
    .parameter "pageCount"

    .prologue
    .line 30
    new-instance v0, Lcom/lx/launcher8/bll/UrlBll;

    invoke-direct {v0}, Lcom/lx/launcher8/bll/UrlBll;-><init>()V

    .line 31
    .local v0, bll:Lcom/lx/launcher8/bll/UrlBll;
    iget-object v1, p0, Lcom/lx/launcher8/bll/UrlBll;->mPage:Lcom/app/common/bll/CPage;

    if-eqz v1, :cond_0

    .line 32
    iget-object v1, p0, Lcom/lx/launcher8/bll/UrlBll;->mPage:Lcom/app/common/bll/CPage;

    invoke-virtual {v1, p4}, Lcom/app/common/bll/CPage;->setP(I)V

    .line 34
    :cond_0
    iget-object v1, p0, Lcom/lx/launcher8/bll/UrlBll;->mPage:Lcom/app/common/bll/CPage;

    invoke-static {v0, p1, p2, p3, v1}, Lcom/app/common/bll/BllObject;->Get(Lcom/app/common/bll/BllXmlPull;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/app/common/bll/CPage;)Lcom/app/common/bll/BllXmlPull;

    move-result-object v0

    .end local v0           #bll:Lcom/lx/launcher8/bll/UrlBll;
    check-cast v0, Lcom/lx/launcher8/bll/UrlBll;

    .line 35
    .restart local v0       #bll:Lcom/lx/launcher8/bll/UrlBll;
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 40
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
    .line 45
    invoke-super {p0, p1}, Lcom/app/common/bll/BllXmlPull;->startTag(Ljava/lang/String;)V

    .line 47
    const-string v0, "urls"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    new-instance v0, Lcom/lx/launcher8/setting/bean/UrlInfo;

    invoke-direct {v0}, Lcom/lx/launcher8/setting/bean/UrlInfo;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/bll/UrlBll;->info:Lcom/lx/launcher8/setting/bean/UrlInfo;

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    const-string v0, "rid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    iget-object v0, p0, Lcom/lx/launcher8/bll/UrlBll;->info:Lcom/lx/launcher8/setting/bean/UrlInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/UrlBll;->getTextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/UrlInfo;->setRid(I)V

    goto :goto_0

    .line 51
    :cond_2
    const-string v0, "linkname"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 52
    iget-object v0, p0, Lcom/lx/launcher8/bll/UrlBll;->info:Lcom/lx/launcher8/setting/bean/UrlInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/UrlBll;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/UrlInfo;->setLinkName(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_3
    const-string v0, "linkurl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 54
    iget-object v0, p0, Lcom/lx/launcher8/bll/UrlBll;->info:Lcom/lx/launcher8/setting/bean/UrlInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/UrlBll;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/UrlInfo;->setLinkUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_4
    const-string v0, "classname"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/lx/launcher8/bll/UrlBll;->info:Lcom/lx/launcher8/setting/bean/UrlInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/UrlBll;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/UrlInfo;->setClassName(Ljava/lang/String;)V

    goto :goto_0
.end method
