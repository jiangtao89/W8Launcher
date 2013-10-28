.class public Lcom/lx/launcher8/bll/PaperListBll;
.super Lcom/app/common/bll/BllXmlPull;
.source "PaperListBll.java"


# static fields
.field private static final serialVersionUID:J = 0x1c1a80ddf589bfcaL


# instance fields
.field private pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

.field public piList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lx/launcher8/setting/bean/PaperInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/app/common/bll/BllXmlPull;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/bll/PaperListBll;->piList:Ljava/util/List;

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/bll/PaperListBll;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    .line 28
    return-void
.end method

.method public static getInstance()Lcom/lx/launcher8/bll/PaperListBll;
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/lx/launcher8/bll/PaperListBll;

    invoke-direct {v0}, Lcom/lx/launcher8/bll/PaperListBll;-><init>()V

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
    .line 64
    const-string v0, "pic"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/lx/launcher8/bll/PaperListBll;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/bll/PaperListBll;->piList:Ljava/util/List;

    iget-object v1, p0, Lcom/lx/launcher8/bll/PaperListBll;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    invoke-super {p0, p1}, Lcom/app/common/bll/BllXmlPull;->endTag(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/app/common/bll/CPage;)Lcom/lx/launcher8/bll/PaperListBll;
    .locals 2
    .parameter "context"
    .parameter "url"
    .parameter "params"
    .parameter "page"

    .prologue
    .line 36
    invoke-static {p1}, Lcom/lx/launcher8/util/Utils;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lx/launcher8/bll/PaperListBll;->mLanguage:Ljava/lang/String;

    .line 37
    new-instance v0, Lcom/lx/launcher8/bll/PaperListBll;

    invoke-direct {v0}, Lcom/lx/launcher8/bll/PaperListBll;-><init>()V

    .line 38
    .local v0, plBll:Lcom/lx/launcher8/bll/PaperListBll;
    invoke-static {v0, p1, p2, p3, p4}, Lcom/app/common/bll/BllObject;->Get(Lcom/app/common/bll/BllXmlPull;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/app/common/bll/CPage;)Lcom/app/common/bll/BllXmlPull;

    move-result-object v0

    .end local v0           #plBll:Lcom/lx/launcher8/bll/PaperListBll;
    check-cast v0, Lcom/lx/launcher8/bll/PaperListBll;

    .line 39
    .restart local v0       #plBll:Lcom/lx/launcher8/bll/PaperListBll;
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 32
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
    const-string v0, "pic"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    new-instance v0, Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-direct {v0}, Lcom/lx/launcher8/setting/bean/PaperInfo;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/bll/PaperListBll;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    .line 60
    :goto_0
    return-void

    .line 47
    :cond_0
    const-string v0, "picid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/lx/launcher8/bll/PaperListBll;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/PaperListBll;->getTextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/PaperInfo;->setRid(I)V

    goto :goto_0

    .line 49
    :cond_1
    const-string v0, "title"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    iget-object v0, p0, Lcom/lx/launcher8/bll/PaperListBll;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/PaperListBll;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/PaperInfo;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_2
    const-string v0, "hot"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 52
    iget-object v0, p0, Lcom/lx/launcher8/bll/PaperListBll;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/PaperListBll;->getTextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/PaperInfo;->setHot(I)V

    goto :goto_0

    .line 53
    :cond_3
    const-string v0, "prevurl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 54
    iget-object v0, p0, Lcom/lx/launcher8/bll/PaperListBll;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/PaperListBll;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/PaperInfo;->setPreUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_4
    const-string v0, "acturl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 56
    iget-object v0, p0, Lcom/lx/launcher8/bll/PaperListBll;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/PaperListBll;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/PaperInfo;->setActUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_5
    const-string v0, "downstat"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 58
    iget-object v0, p0, Lcom/lx/launcher8/bll/PaperListBll;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/PaperListBll;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lx/launcher8/setting/bean/PaperInfo;->statistics:Ljava/lang/String;

    goto :goto_0

    .line 59
    :cond_6
    invoke-super {p0, p1}, Lcom/app/common/bll/BllXmlPull;->startTag(Ljava/lang/String;)V

    goto :goto_0
.end method
