.class public Lcom/lx/launcher8/ProposeAct$ProposeTask;
.super Lcom/app/common/task/BaseTask;
.source "ProposeAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/ProposeAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProposeTask"
.end annotation


# instance fields
.field private final URL:Ljava/lang/String;

.field private mAct:Landroid/app/Activity;

.field private mParams:Ljava/lang/String;

.field private mResult:Lcom/app/common/bll/CResult;

.field final synthetic this$0:Lcom/lx/launcher8/ProposeAct;


# direct methods
.method public constructor <init>(Lcom/lx/launcher8/ProposeAct;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "mAct"
    .parameter "mParams"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/lx/launcher8/ProposeAct$ProposeTask;->this$0:Lcom/lx/launcher8/ProposeAct;

    .line 76
    invoke-direct {p0, p2}, Lcom/app/common/task/BaseTask;-><init>(Landroid/content/Context;)V

    .line 70
    const-string v0, "http://client.anall.cn/cpic/useradvise.aspx"

    iput-object v0, p0, Lcom/lx/launcher8/ProposeAct$ProposeTask;->URL:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lcom/lx/launcher8/ProposeAct$ProposeTask;->mAct:Landroid/app/Activity;

    .line 78
    iput-object p3, p0, Lcom/lx/launcher8/ProposeAct$ProposeTask;->mParams:Ljava/lang/String;

    .line 79
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "params"

    .prologue
    const/4 v4, 0x0

    .line 96
    new-instance v0, Lcom/lx/launcher8/ProposeAct$ProposeTask$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/ProposeAct$ProposeTask$1;-><init>(Lcom/lx/launcher8/ProposeAct$ProposeTask;)V

    .line 103
    .local v0, bll:Lcom/app/common/bll/BllXmlPull;
    iget-object v1, p0, Lcom/lx/launcher8/ProposeAct$ProposeTask;->mAct:Landroid/app/Activity;

    const-string v2, "http://client.anall.cn/cpic/useradvise.aspx"

    iget-object v3, p0, Lcom/lx/launcher8/ProposeAct$ProposeTask;->mParams:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/app/common/bll/BllObject;->Get(Lcom/app/common/bll/BllXmlPull;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/app/common/bll/CPage;)Lcom/app/common/bll/BllXmlPull;

    .line 104
    if-eqz v0, :cond_0

    .line 105
    iget-object v1, v0, Lcom/app/common/bll/BllXmlPull;->mResult:Lcom/app/common/bll/CResult;

    iput-object v1, p0, Lcom/lx/launcher8/ProposeAct$ProposeTask;->mResult:Lcom/app/common/bll/CResult;

    .line 107
    :cond_0
    return-object v4
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/app/common/task/BaseTask;->onPostExecute(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/lx/launcher8/ProposeAct$ProposeTask;->mResult:Lcom/app/common/bll/CResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/ProposeAct$ProposeTask;->mResult:Lcom/app/common/bll/CResult;

    iget v0, v0, Lcom/app/common/bll/CResult;->mResultCode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/lx/launcher8/ProposeAct$ProposeTask;->mAct:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lx/launcher8/ProposeAct$ProposeTask;->this$0:Lcom/lx/launcher8/ProposeAct;

    invoke-virtual {v2}, Lcom/lx/launcher8/ProposeAct;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a008e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lx/launcher8/ProposeAct;->access$0(Ljava/lang/String;)V

    .line 90
    :goto_0
    iget-object v0, p0, Lcom/lx/launcher8/ProposeAct$ProposeTask;->this$0:Lcom/lx/launcher8/ProposeAct;

    #getter for: Lcom/lx/launcher8/ProposeAct;->mEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/lx/launcher8/ProposeAct;->access$1(Lcom/lx/launcher8/ProposeAct;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/lx/launcher8/ProposeAct$ProposeTask;->mAct:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 92
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/ProposeAct$ProposeTask;->mAct:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lx/launcher8/ProposeAct$ProposeTask;->this$0:Lcom/lx/launcher8/ProposeAct;

    invoke-virtual {v2}, Lcom/lx/launcher8/ProposeAct;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a008f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
