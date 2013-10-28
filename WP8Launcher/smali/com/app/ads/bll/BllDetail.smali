.class public Lcom/app/ads/bll/BllDetail;
.super Lcom/app/common/bll/BllXmlPull;
.source "BllDetail.java"


# static fields
.field private static final serialVersionUID:J = 0x50e70b14eb1a65caL


# instance fields
.field public mImgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mInstroduce:Ljava/lang/String;

.field public mPic:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/app/common/bll/BllXmlPull;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/app/ads/bll/BllDetail;->mImgs:Ljava/util/ArrayList;

    .line 17
    return-void
.end method


# virtual methods
.method public getAdDetail(Landroid/content/Context;II)Z
    .locals 3
    .parameter "context"
    .parameter "appid"
    .parameter "isAd"

    .prologue
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&isad="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, params:Ljava/lang/String;
    sget-object v1, Lcom/app/ads/config/UrlConfig;->AdDetailUrl:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v0, v2}, Lcom/app/common/bll/BllObject;->Get(Lcom/app/common/bll/BllXmlPull;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/app/common/bll/CPage;)Lcom/app/common/bll/BllXmlPull;

    .line 32
    const/4 v1, 0x1

    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/app/ads/bll/BllDetail;->mImgs:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/app/ads/bll/BllDetail;->mImgs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
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
    .line 37
    const-string v0, "remark"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/app/ads/bll/BllDetail;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/app/ads/bll/BllDetail;->mInstroduce:Ljava/lang/String;

    .line 45
    :goto_0
    return-void

    .line 39
    :cond_0
    const-string v0, "imgurl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/app/ads/bll/BllDetail;->mImgs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/app/ads/bll/BllDetail;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 41
    :cond_1
    const-string v0, "icon"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    invoke-virtual {p0}, Lcom/app/ads/bll/BllDetail;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/app/ads/bll/BllDetail;->mPic:Ljava/lang/String;

    goto :goto_0

    .line 44
    :cond_2
    invoke-super {p0, p1}, Lcom/app/common/bll/BllXmlPull;->startTag(Ljava/lang/String;)V

    goto :goto_0
.end method
