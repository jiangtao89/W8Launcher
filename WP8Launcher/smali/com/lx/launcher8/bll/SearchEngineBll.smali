.class public Lcom/lx/launcher8/bll/SearchEngineBll;
.super Lcom/app/common/bll/BllXmlPull;
.source "SearchEngineBll.java"


# static fields
.field private static seBll:Lcom/lx/launcher8/bll/SearchEngineBll; = null

.field private static final serialVersionUID:J = -0x7cca769bc54671d8L


# instance fields
.field public engineList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lx/launcher8/setting/bean/SearchEngineInfo;",
            ">;"
        }
    .end annotation
.end field

.field private info:Lcom/lx/launcher8/setting/bean/SearchEngineInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/lx/launcher8/bll/SearchEngineBll;->seBll:Lcom/lx/launcher8/bll/SearchEngineBll;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/app/common/bll/BllXmlPull;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/bll/SearchEngineBll;->info:Lcom/lx/launcher8/setting/bean/SearchEngineInfo;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/bll/SearchEngineBll;->engineList:Ljava/util/List;

    .line 20
    return-void
.end method

.method public static getInstance()Lcom/lx/launcher8/bll/SearchEngineBll;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/lx/launcher8/bll/SearchEngineBll;->seBll:Lcom/lx/launcher8/bll/SearchEngineBll;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/lx/launcher8/bll/SearchEngineBll;

    invoke-direct {v0}, Lcom/lx/launcher8/bll/SearchEngineBll;-><init>()V

    sput-object v0, Lcom/lx/launcher8/bll/SearchEngineBll;->seBll:Lcom/lx/launcher8/bll/SearchEngineBll;

    .line 26
    :cond_0
    sget-object v0, Lcom/lx/launcher8/bll/SearchEngineBll;->seBll:Lcom/lx/launcher8/bll/SearchEngineBll;

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
    .line 60
    invoke-super {p0, p1}, Lcom/app/common/bll/BllXmlPull;->endTag(Ljava/lang/String;)V

    .line 62
    const-string v0, "engine"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/lx/launcher8/bll/SearchEngineBll;->info:Lcom/lx/launcher8/setting/bean/SearchEngineInfo;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/lx/launcher8/bll/SearchEngineBll;->engineList:Ljava/util/List;

    iget-object v1, p0, Lcom/lx/launcher8/bll/SearchEngineBll;->info:Lcom/lx/launcher8/setting/bean/SearchEngineInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_0
    return-void
.end method

.method public getInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/lx/launcher8/bll/SearchEngineBll;
    .locals 2
    .parameter "context"
    .parameter "url"
    .parameter "params"
    .parameter "pageCount"

    .prologue
    .line 30
    new-instance v0, Lcom/lx/launcher8/bll/SearchEngineBll;

    invoke-direct {v0}, Lcom/lx/launcher8/bll/SearchEngineBll;-><init>()V

    .line 31
    .local v0, bll:Lcom/lx/launcher8/bll/SearchEngineBll;
    iget-object v1, p0, Lcom/lx/launcher8/bll/SearchEngineBll;->mPage:Lcom/app/common/bll/CPage;

    if-eqz v1, :cond_0

    .line 32
    iget-object v1, p0, Lcom/lx/launcher8/bll/SearchEngineBll;->mPage:Lcom/app/common/bll/CPage;

    invoke-virtual {v1, p4}, Lcom/app/common/bll/CPage;->setP(I)V

    .line 34
    :cond_0
    iget-object v1, p0, Lcom/lx/launcher8/bll/SearchEngineBll;->mPage:Lcom/app/common/bll/CPage;

    invoke-static {v0, p1, p2, p3, v1}, Lcom/app/common/bll/BllObject;->Get(Lcom/app/common/bll/BllXmlPull;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/app/common/bll/CPage;)Lcom/app/common/bll/BllXmlPull;

    move-result-object v0

    .end local v0           #bll:Lcom/lx/launcher8/bll/SearchEngineBll;
    check-cast v0, Lcom/lx/launcher8/bll/SearchEngineBll;

    .line 35
    .restart local v0       #bll:Lcom/lx/launcher8/bll/SearchEngineBll;
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
    const-string v0, "engine"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    new-instance v0, Lcom/lx/launcher8/setting/bean/SearchEngineInfo;

    invoke-direct {v0}, Lcom/lx/launcher8/setting/bean/SearchEngineInfo;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/bll/SearchEngineBll;->info:Lcom/lx/launcher8/setting/bean/SearchEngineInfo;

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    const-string v0, "enginename"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    iget-object v0, p0, Lcom/lx/launcher8/bll/SearchEngineBll;->info:Lcom/lx/launcher8/setting/bean/SearchEngineInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/SearchEngineBll;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/SearchEngineInfo;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_2
    const-string v0, "engineurl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 52
    iget-object v0, p0, Lcom/lx/launcher8/bll/SearchEngineBll;->info:Lcom/lx/launcher8/setting/bean/SearchEngineInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/SearchEngineBll;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/SearchEngineInfo;->setUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_3
    const-string v0, "imgurl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/lx/launcher8/bll/SearchEngineBll;->info:Lcom/lx/launcher8/setting/bean/SearchEngineInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/SearchEngineBll;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/SearchEngineInfo;->setImgUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
