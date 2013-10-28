.class Lcom/lx/launcher8/setting/wp8/ShareAct$2;
.super Ljava/lang/Object;
.source "ShareAct.java"

# interfaces
.implements Lcom/lx/launcher8/task/OnLoadingOverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/wp8/ShareAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/ShareAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/ShareAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/ShareAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/ShareAct;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingOver(Lcom/app/common/bll/BllXmlPull;)V
    .locals 3
    .parameter "bll"

    .prologue
    .line 125
    if-nez p1, :cond_1

    .line 139
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 129
    .restart local p1
    :cond_1
    instance-of v1, p1, Lcom/lx/launcher8/bll/ShareBll;

    if-eqz v1, :cond_0

    .line 130
    check-cast p1, Lcom/lx/launcher8/bll/ShareBll;

    .end local p1
    iget-object v0, p1, Lcom/lx/launcher8/bll/ShareBll;->shareInfo:Lcom/lx/launcher8/setting/bean/ShareInfo;

    .line 131
    .local v0, info:Lcom/lx/launcher8/setting/bean/ShareInfo;
    if-eqz v0, :cond_0

    .line 132
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ShareAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/ShareAct;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/bean/ShareInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/lx/launcher8/setting/wp8/ShareAct;->mShareUrl:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/lx/launcher8/setting/wp8/ShareAct;->access$3(Lcom/lx/launcher8/setting/wp8/ShareAct;Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ShareAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/ShareAct;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/bean/ShareInfo;->getFriend()I

    move-result v2

    #calls: Lcom/lx/launcher8/setting/wp8/ShareAct;->setFriend(I)V
    invoke-static {v1, v2}, Lcom/lx/launcher8/setting/wp8/ShareAct;->access$4(Lcom/lx/launcher8/setting/wp8/ShareAct;I)V

    .line 134
    invoke-virtual {v0}, Lcom/lx/launcher8/setting/bean/ShareInfo;->getProPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ShareAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/ShareAct;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/bean/ShareInfo;->getProPackage()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/lx/launcher8/setting/wp8/ShareAct;->mProPackage:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/lx/launcher8/setting/wp8/ShareAct;->access$5(Lcom/lx/launcher8/setting/wp8/ShareAct;Ljava/lang/String;)V

    goto :goto_0
.end method
