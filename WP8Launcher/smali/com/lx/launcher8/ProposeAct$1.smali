.class Lcom/lx/launcher8/ProposeAct$1;
.super Ljava/lang/Object;
.source "ProposeAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/ProposeAct;->InitView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/ProposeAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/ProposeAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/ProposeAct$1;->this$0:Lcom/lx/launcher8/ProposeAct;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "arg0"

    .prologue
    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lx/launcher8/ProposeAct$1;->this$0:Lcom/lx/launcher8/ProposeAct;

    #getter for: Lcom/lx/launcher8/ProposeAct;->mEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/lx/launcher8/ProposeAct;->access$1(Lcom/lx/launcher8/ProposeAct;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, editText:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 54
    iget-object v2, p0, Lcom/lx/launcher8/ProposeAct$1;->this$0:Lcom/lx/launcher8/ProposeAct;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/lx/launcher8/ProposeAct$1;->this$0:Lcom/lx/launcher8/ProposeAct;

    invoke-virtual {v4}, Lcom/lx/launcher8/ProposeAct;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a008c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 65
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1f4

    if-le v2, v3, :cond_1

    .line 58
    iget-object v2, p0, Lcom/lx/launcher8/ProposeAct$1;->this$0:Lcom/lx/launcher8/ProposeAct;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/lx/launcher8/ProposeAct$1;->this$0:Lcom/lx/launcher8/ProposeAct;

    invoke-virtual {v4}, Lcom/lx/launcher8/ProposeAct;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a008d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_1
    invoke-static {v0}, Lcom/lx/launcher8/ProposeAct;->access$0(Ljava/lang/String;)V

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&content="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 63
    const-string v3, "&appid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/app/common/config/BaseGlobal;->getSoftId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, params:Ljava/lang/String;
    new-instance v2, Lcom/lx/launcher8/ProposeAct$ProposeTask;

    iget-object v3, p0, Lcom/lx/launcher8/ProposeAct$1;->this$0:Lcom/lx/launcher8/ProposeAct;

    iget-object v4, p0, Lcom/lx/launcher8/ProposeAct$1;->this$0:Lcom/lx/launcher8/ProposeAct;

    invoke-direct {v2, v3, v4, v1}, Lcom/lx/launcher8/ProposeAct$ProposeTask;-><init>(Lcom/lx/launcher8/ProposeAct;Landroid/app/Activity;Ljava/lang/String;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/ProposeAct$ProposeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
