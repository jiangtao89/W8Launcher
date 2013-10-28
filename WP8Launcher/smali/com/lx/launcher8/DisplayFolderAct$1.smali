.class Lcom/lx/launcher8/DisplayFolderAct$1;
.super Ljava/lang/Object;
.source "DisplayFolderAct.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/DisplayFolderAct;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/DisplayFolderAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/DisplayFolderAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/DisplayFolderAct$1;->this$0:Lcom/lx/launcher8/DisplayFolderAct;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/lx/launcher8/DisplayFolderAct$1;->this$0:Lcom/lx/launcher8/DisplayFolderAct;

    #getter for: Lcom/lx/launcher8/DisplayFolderAct;->adapter:Lcom/lx/launcher8/adapter/DisplayFolderAdapter;
    invoke-static {v2}, Lcom/lx/launcher8/DisplayFolderAct;->access$0(Lcom/lx/launcher8/DisplayFolderAct;)Lcom/lx/launcher8/adapter/DisplayFolderAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/adapter/DisplayFolderAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p3, v2, :cond_0

    .line 78
    iget-object v2, p0, Lcom/lx/launcher8/DisplayFolderAct$1;->this$0:Lcom/lx/launcher8/DisplayFolderAct;

    const/4 v3, 0x1

    #setter for: Lcom/lx/launcher8/DisplayFolderAct;->isEdited:Z
    invoke-static {v2, v3}, Lcom/lx/launcher8/DisplayFolderAct;->access$1(Lcom/lx/launcher8/DisplayFolderAct;Z)V

    .line 79
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 80
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/lx/launcher8/DisplayFolderAct$1;->this$0:Lcom/lx/launcher8/DisplayFolderAct;

    #getter for: Lcom/lx/launcher8/DisplayFolderAct;->mFolderInfo:Lcom/lx/launcher8/bean/FolderCell;
    invoke-static {v2}, Lcom/lx/launcher8/DisplayFolderAct;->access$2(Lcom/lx/launcher8/DisplayFolderAct;)Lcom/lx/launcher8/bean/FolderCell;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lx/launcher8/bean/FolderCell;->setIntentParam(Landroid/content/Intent;)V

    .line 81
    iget-object v2, p0, Lcom/lx/launcher8/DisplayFolderAct$1;->this$0:Lcom/lx/launcher8/DisplayFolderAct;

    const-class v3, Lcom/lx/launcher8/setting/FolderAppPickAct;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 82
    iget-object v2, p0, Lcom/lx/launcher8/DisplayFolderAct$1;->this$0:Lcom/lx/launcher8/DisplayFolderAct;

    const/4 v3, 0x5

    invoke-virtual {v2, v1, v3}, Lcom/lx/launcher8/DisplayFolderAct;->startActivityForResult(Landroid/content/Intent;I)V

    .line 96
    :goto_0
    return-void

    .line 84
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v2, p0, Lcom/lx/launcher8/DisplayFolderAct$1;->this$0:Lcom/lx/launcher8/DisplayFolderAct;

    #getter for: Lcom/lx/launcher8/DisplayFolderAct;->adapter:Lcom/lx/launcher8/adapter/DisplayFolderAdapter;
    invoke-static {v2}, Lcom/lx/launcher8/DisplayFolderAct;->access$0(Lcom/lx/launcher8/DisplayFolderAct;)Lcom/lx/launcher8/adapter/DisplayFolderAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/lx/launcher8/adapter/DisplayFolderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lx/launcher8/bean/AppCell;

    iget-object v1, v2, Lcom/lx/launcher8/bean/AppCell;->intent:Landroid/content/Intent;

    .line 86
    .restart local v1       #intent:Landroid/content/Intent;
    :try_start_0
    iget-object v2, p0, Lcom/lx/launcher8/DisplayFolderAct$1;->this$0:Lcom/lx/launcher8/DisplayFolderAct;

    invoke-virtual {v2, v1}, Lcom/lx/launcher8/DisplayFolderAct;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-static {}, Lcom/lx/launcher8/AnallApp;->getContext()Lcom/lx/launcher8/AnallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/AnallApp;->getModel()Lcom/lx/launcher8/db/LauncherModel;

    move-result-object v3

    iget-object v2, p0, Lcom/lx/launcher8/DisplayFolderAct$1;->this$0:Lcom/lx/launcher8/DisplayFolderAct;

    #getter for: Lcom/lx/launcher8/DisplayFolderAct;->adapter:Lcom/lx/launcher8/adapter/DisplayFolderAdapter;
    invoke-static {v2}, Lcom/lx/launcher8/DisplayFolderAct;->access$0(Lcom/lx/launcher8/DisplayFolderAct;)Lcom/lx/launcher8/adapter/DisplayFolderAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/lx/launcher8/adapter/DisplayFolderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lx/launcher8/bean/AppCell;

    invoke-virtual {v3, v2}, Lcom/lx/launcher8/db/LauncherModel;->removeCellToDatabase(Lcom/lx/launcher8/bean/ItemCell;)V

    .line 89
    iget-object v2, p0, Lcom/lx/launcher8/DisplayFolderAct$1;->this$0:Lcom/lx/launcher8/DisplayFolderAct;

    #getter for: Lcom/lx/launcher8/DisplayFolderAct;->mFolderInfo:Lcom/lx/launcher8/bean/FolderCell;
    invoke-static {v2}, Lcom/lx/launcher8/DisplayFolderAct;->access$2(Lcom/lx/launcher8/DisplayFolderAct;)Lcom/lx/launcher8/bean/FolderCell;

    move-result-object v2

    iget-object v2, v2, Lcom/lx/launcher8/bean/FolderCell;->contains:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p3, :cond_1

    .line 90
    iget-object v2, p0, Lcom/lx/launcher8/DisplayFolderAct$1;->this$0:Lcom/lx/launcher8/DisplayFolderAct;

    #getter for: Lcom/lx/launcher8/DisplayFolderAct;->mFolderInfo:Lcom/lx/launcher8/bean/FolderCell;
    invoke-static {v2}, Lcom/lx/launcher8/DisplayFolderAct;->access$2(Lcom/lx/launcher8/DisplayFolderAct;)Lcom/lx/launcher8/bean/FolderCell;

    move-result-object v2

    iget-object v2, v2, Lcom/lx/launcher8/bean/FolderCell;->contains:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 92
    :cond_1
    iget-object v2, p0, Lcom/lx/launcher8/DisplayFolderAct$1;->this$0:Lcom/lx/launcher8/DisplayFolderAct;

    #getter for: Lcom/lx/launcher8/DisplayFolderAct;->adapter:Lcom/lx/launcher8/adapter/DisplayFolderAdapter;
    invoke-static {v2}, Lcom/lx/launcher8/DisplayFolderAct;->access$0(Lcom/lx/launcher8/DisplayFolderAct;)Lcom/lx/launcher8/adapter/DisplayFolderAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/lx/launcher8/adapter/DisplayFolderAdapter;->removeItem(I)V

    .line 93
    iget-object v2, p0, Lcom/lx/launcher8/DisplayFolderAct$1;->this$0:Lcom/lx/launcher8/DisplayFolderAct;

    const v3, 0x7f0a0031

    invoke-static {v2, v3}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;I)V

    goto :goto_0
.end method
