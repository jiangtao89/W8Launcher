.class public Lcom/lx/launcher8/bll/SearchKeyBll;
.super Lcom/app/common/bll/BllXmlPull;
.source "SearchKeyBll.java"


# static fields
.field private static final serialVersionUID:J = -0x4535ddac67d3506fL


# instance fields
.field public searchKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/app/common/bll/BllXmlPull;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/bll/SearchKeyBll;->searchKeys:Ljava/util/ArrayList;

    .line 10
    return-void
.end method

.method public static getInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/lx/launcher8/bll/SearchKeyBll;
    .locals 3
    .parameter "context"
    .parameter "url"
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 22
    new-instance v1, Lcom/lx/launcher8/bll/SearchKeyBll;

    invoke-direct {v1}, Lcom/lx/launcher8/bll/SearchKeyBll;-><init>()V

    .line 23
    .local v1, searchKeyBll:Lcom/lx/launcher8/bll/SearchKeyBll;
    invoke-static {v1, p0, p1, p2, v2}, Lcom/app/common/bll/BllObject;->Get(Lcom/app/common/bll/BllXmlPull;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/app/common/bll/CPage;)Lcom/app/common/bll/BllXmlPull;

    move-result-object v0

    .line 24
    .local v0, bll:Lcom/app/common/bll/BllXmlPull;
    if-nez v0, :cond_0

    .line 26
    :goto_0
    return-object v2

    :cond_0
    move-object v1, v0

    .line 25
    check-cast v1, Lcom/lx/launcher8/bll/SearchKeyBll;

    move-object v2, v1

    .line 26
    goto :goto_0
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    .prologue
    .line 18
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
    .line 31
    invoke-super {p0, p1}, Lcom/app/common/bll/BllXmlPull;->startTag(Ljava/lang/String;)V

    .line 32
    const-string v0, "keywords"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/lx/launcher8/bll/SearchKeyBll;->searchKeys:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/SearchKeyBll;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    :cond_0
    return-void
.end method
