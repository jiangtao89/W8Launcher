.class Lcom/lx/launcher8/util/WpAdUtil$1;
.super Ljava/lang/Object;
.source "WpAdUtil.java"

# interfaces
.implements Lcom/lx/launcher8/task/OnLoadingOverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/util/WpAdUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/util/WpAdUtil;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/util/WpAdUtil;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/util/WpAdUtil$1;->this$0:Lcom/lx/launcher8/util/WpAdUtil;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingOver(Lcom/app/common/bll/BllXmlPull;)V
    .locals 8
    .parameter "bll"

    .prologue
    .line 115
    if-nez p1, :cond_1

    .line 133
    .end local p1
    :cond_0
    return-void

    .line 119
    .restart local p1
    :cond_1
    instance-of v3, p1, Lcom/lx/launcher8/bll/WpAdBll;

    if-eqz v3, :cond_0

    .line 120
    check-cast p1, Lcom/lx/launcher8/bll/WpAdBll;

    .end local p1
    iget-object v2, p1, Lcom/lx/launcher8/bll/WpAdBll;->mList:Ljava/util/List;

    .line 121
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/lx/launcher8/setting/bean/WpAdInfo;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 122
    :cond_2
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    const/4 v3, 0x5

    if-gt v0, v3, :cond_0

    .line 123
    iget-object v3, p0, Lcom/lx/launcher8/util/WpAdUtil$1;->this$0:Lcom/lx/launcher8/util/WpAdUtil;

    #getter for: Lcom/lx/launcher8/util/WpAdUtil;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v3}, Lcom/lx/launcher8/util/WpAdUtil;->access$0(Lcom/lx/launcher8/util/WpAdUtil;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v0, v4}, Lcom/lx/launcher8/cfg/DeskSetting;->setWpAd(ILjava/lang/String;)V

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    .end local v0           #i:I
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lx/launcher8/setting/bean/WpAdInfo;

    .line 129
    .local v1, info:Lcom/lx/launcher8/setting/bean/WpAdInfo;
    iget-object v4, p0, Lcom/lx/launcher8/util/WpAdUtil$1;->this$0:Lcom/lx/launcher8/util/WpAdUtil;

    #getter for: Lcom/lx/launcher8/util/WpAdUtil;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v4}, Lcom/lx/launcher8/util/WpAdUtil;->access$0(Lcom/lx/launcher8/util/WpAdUtil;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v4

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/bean/WpAdInfo;->getPos()I

    move-result v5

    .line 130
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/bean/WpAdInfo;->getShowType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/bean/WpAdInfo;->getImgUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/bean/WpAdInfo;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 129
    invoke-virtual {v4, v5, v6}, Lcom/lx/launcher8/cfg/DeskSetting;->setWpAd(ILjava/lang/String;)V

    goto :goto_1
.end method
