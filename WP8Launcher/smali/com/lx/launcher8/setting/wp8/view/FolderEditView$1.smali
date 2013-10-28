.class Lcom/lx/launcher8/setting/wp8/view/FolderEditView$1;
.super Ljava/lang/Object;
.source "FolderEditView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->onBack()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/view/FolderEditView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/FolderEditView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/FolderEditView;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 206
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/FolderEditView;

    iget-object v1, v1, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mAct:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 207
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/FolderEditView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->access$0(Lcom/lx/launcher8/setting/wp8/view/FolderEditView;)Lcom/lx/launcher8/bean/FolderCell;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lx/launcher8/bean/FolderCell;->setIntentParam(Landroid/content/Intent;)V

    .line 208
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/FolderEditView;

    iget-object v1, v1, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mAct:Landroid/app/Activity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 209
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/FolderEditView;

    iget-object v1, v1, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mAct:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 210
    return-void
.end method
