.class public Lcom/lx/launcher8/bll/PaperTypeListBll;
.super Lcom/app/common/bll/BllXmlPull;
.source "PaperTypeListBll.java"


# static fields
.field private static final serialVersionUID:J = -0x7ac46214882e596dL


# instance fields
.field private typeInfo:Lcom/lx/launcher8/setting/bean/TypeInfo;

.field public typeInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lx/launcher8/setting/bean/TypeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/app/common/bll/BllXmlPull;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/bll/PaperTypeListBll;->typeInfoList:Ljava/util/List;

    .line 12
    return-void
.end method

.method public static getInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/lx/launcher8/bll/PaperTypeListBll;
    .locals 3
    .parameter "context"
    .parameter "url"
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 26
    new-instance v1, Lcom/lx/launcher8/bll/PaperTypeListBll;

    invoke-direct {v1}, Lcom/lx/launcher8/bll/PaperTypeListBll;-><init>()V

    .line 27
    .local v1, paperTypeListBll:Lcom/lx/launcher8/bll/PaperTypeListBll;
    invoke-static {v1, p0, p1, p2, v2}, Lcom/app/common/bll/BllObject;->Get(Lcom/app/common/bll/BllXmlPull;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/app/common/bll/CPage;)Lcom/app/common/bll/BllXmlPull;

    move-result-object v0

    .line 28
    .local v0, bll:Lcom/app/common/bll/BllXmlPull;
    if-nez v0, :cond_0

    .line 30
    :goto_0
    return-object v2

    :cond_0
    move-object v1, v0

    .line 29
    check-cast v1, Lcom/lx/launcher8/bll/PaperTypeListBll;

    move-object v2, v1

    .line 30
    goto :goto_0
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
    .line 51
    invoke-super {p0, p1}, Lcom/app/common/bll/BllXmlPull;->endTag(Ljava/lang/String;)V

    .line 52
    const-string v0, "picclass"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/lx/launcher8/bll/PaperTypeListBll;->typeInfo:Lcom/lx/launcher8/setting/bean/TypeInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/bll/PaperTypeListBll;->typeInfoList:Ljava/util/List;

    iget-object v1, p0, Lcom/lx/launcher8/bll/PaperTypeListBll;->typeInfo:Lcom/lx/launcher8/setting/bean/TypeInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 22
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
    .line 35
    invoke-super {p0, p1}, Lcom/app/common/bll/BllXmlPull;->startTag(Ljava/lang/String;)V

    .line 36
    const-string v0, "picclass"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    new-instance v0, Lcom/lx/launcher8/setting/bean/TypeInfo;

    invoke-direct {v0}, Lcom/lx/launcher8/setting/bean/TypeInfo;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/bll/PaperTypeListBll;->typeInfo:Lcom/lx/launcher8/setting/bean/TypeInfo;

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    const-string v0, "classid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39
    iget-object v0, p0, Lcom/lx/launcher8/bll/PaperTypeListBll;->typeInfo:Lcom/lx/launcher8/setting/bean/TypeInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/bll/PaperTypeListBll;->typeInfo:Lcom/lx/launcher8/setting/bean/TypeInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/PaperTypeListBll;->getTextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/TypeInfo;->setClassid(I)V

    goto :goto_0

    .line 40
    :cond_2
    const-string v0, "classname"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 41
    iget-object v0, p0, Lcom/lx/launcher8/bll/PaperTypeListBll;->typeInfo:Lcom/lx/launcher8/setting/bean/TypeInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/bll/PaperTypeListBll;->typeInfo:Lcom/lx/launcher8/setting/bean/TypeInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/PaperTypeListBll;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/TypeInfo;->setClassname(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_3
    const-string v0, "nums"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 43
    iget-object v0, p0, Lcom/lx/launcher8/bll/PaperTypeListBll;->typeInfo:Lcom/lx/launcher8/setting/bean/TypeInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/bll/PaperTypeListBll;->typeInfo:Lcom/lx/launcher8/setting/bean/TypeInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/PaperTypeListBll;->getTextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/TypeInfo;->setNums(I)V

    goto :goto_0

    .line 44
    :cond_4
    const-string v0, "imgurl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/lx/launcher8/bll/PaperTypeListBll;->typeInfo:Lcom/lx/launcher8/setting/bean/TypeInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/bll/PaperTypeListBll;->typeInfo:Lcom/lx/launcher8/setting/bean/TypeInfo;

    invoke-virtual {p0}, Lcom/lx/launcher8/bll/PaperTypeListBll;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/bean/TypeInfo;->setImgurl(Ljava/lang/String;)V

    goto :goto_0
.end method
