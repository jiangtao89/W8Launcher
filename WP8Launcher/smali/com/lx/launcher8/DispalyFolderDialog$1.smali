.class Lcom/lx/launcher8/DispalyFolderDialog$1;
.super Ljava/lang/Object;
.source "DispalyFolderDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/DispalyFolderDialog;
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
.field final synthetic this$0:Lcom/lx/launcher8/DispalyFolderDialog;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/DispalyFolderDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/DispalyFolderDialog$1;->this$0:Lcom/lx/launcher8/DispalyFolderDialog;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 183
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/lx/launcher8/DispalyFolderDialog$1;->this$0:Lcom/lx/launcher8/DispalyFolderDialog;

    #getter for: Lcom/lx/launcher8/DispalyFolderDialog;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;
    invoke-static {v3}, Lcom/lx/launcher8/DispalyFolderDialog;->access$0(Lcom/lx/launcher8/DispalyFolderDialog;)Lcom/lx/launcher8/bean/FolderCell;

    move-result-object v3

    iget-object v3, v3, Lcom/lx/launcher8/bean/FolderCell;->contains:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 184
    .local v0, count:I
    if-ne p3, v0, :cond_0

    .line 185
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 186
    .local v2, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/lx/launcher8/DispalyFolderDialog$1;->this$0:Lcom/lx/launcher8/DispalyFolderDialog;

    #getter for: Lcom/lx/launcher8/DispalyFolderDialog;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;
    invoke-static {v3}, Lcom/lx/launcher8/DispalyFolderDialog;->access$0(Lcom/lx/launcher8/DispalyFolderDialog;)Lcom/lx/launcher8/bean/FolderCell;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lx/launcher8/bean/FolderCell;->setIntentParam(Landroid/content/Intent;)V

    .line 187
    iget-object v3, p0, Lcom/lx/launcher8/DispalyFolderDialog$1;->this$0:Lcom/lx/launcher8/DispalyFolderDialog;

    iget-object v3, v3, Lcom/lx/launcher8/DispalyFolderDialog;->mContext:Lcom/lx/launcher8/AnallLauncher;

    const-class v4, Lcom/lx/launcher8/setting/FolderAppPickAct;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 188
    iget-object v3, p0, Lcom/lx/launcher8/DispalyFolderDialog$1;->this$0:Lcom/lx/launcher8/DispalyFolderDialog;

    iget-object v3, v3, Lcom/lx/launcher8/DispalyFolderDialog;->mContext:Lcom/lx/launcher8/AnallLauncher;

    const/16 v4, 0xc

    invoke-virtual {v3, v2, v4}, Lcom/lx/launcher8/AnallLauncher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 206
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 191
    :cond_0
    if-le v0, p3, :cond_1

    .line 192
    :try_start_0
    iget-object v3, p0, Lcom/lx/launcher8/DispalyFolderDialog$1;->this$0:Lcom/lx/launcher8/DispalyFolderDialog;

    #getter for: Lcom/lx/launcher8/DispalyFolderDialog;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;
    invoke-static {v3}, Lcom/lx/launcher8/DispalyFolderDialog;->access$0(Lcom/lx/launcher8/DispalyFolderDialog;)Lcom/lx/launcher8/bean/FolderCell;

    move-result-object v3

    iget-object v3, v3, Lcom/lx/launcher8/bean/FolderCell;->contains:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lx/launcher8/bean/AppCell;

    iget-object v2, v3, Lcom/lx/launcher8/bean/AppCell;->intent:Landroid/content/Intent;

    .line 193
    .restart local v2       #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/lx/launcher8/DispalyFolderDialog$1;->this$0:Lcom/lx/launcher8/DispalyFolderDialog;

    iget-object v3, v3, Lcom/lx/launcher8/DispalyFolderDialog;->mContext:Lcom/lx/launcher8/AnallLauncher;

    invoke-virtual {v3, v2}, Lcom/lx/launcher8/AnallLauncher;->startActivity(Landroid/content/Intent;)V

    .line 195
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v3, p0, Lcom/lx/launcher8/DispalyFolderDialog$1;->this$0:Lcom/lx/launcher8/DispalyFolderDialog;

    invoke-virtual {v3}, Lcom/lx/launcher8/DispalyFolderDialog;->dismiss()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 196
    :catch_0
    move-exception v1

    .line 197
    .local v1, e:Landroid/content/ActivityNotFoundException;
    invoke-static {}, Lcom/lx/launcher8/AnallApp;->getContext()Lcom/lx/launcher8/AnallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lx/launcher8/AnallApp;->getModel()Lcom/lx/launcher8/db/LauncherModel;

    move-result-object v4

    iget-object v3, p0, Lcom/lx/launcher8/DispalyFolderDialog$1;->this$0:Lcom/lx/launcher8/DispalyFolderDialog;

    #getter for: Lcom/lx/launcher8/DispalyFolderDialog;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;
    invoke-static {v3}, Lcom/lx/launcher8/DispalyFolderDialog;->access$0(Lcom/lx/launcher8/DispalyFolderDialog;)Lcom/lx/launcher8/bean/FolderCell;

    move-result-object v3

    iget-object v3, v3, Lcom/lx/launcher8/bean/FolderCell;->contains:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lx/launcher8/bean/ItemCell;

    invoke-virtual {v4, v3}, Lcom/lx/launcher8/db/LauncherModel;->removeCellToDatabase(Lcom/lx/launcher8/bean/ItemCell;)V

    .line 198
    if-le v0, p3, :cond_2

    .line 199
    iget-object v3, p0, Lcom/lx/launcher8/DispalyFolderDialog$1;->this$0:Lcom/lx/launcher8/DispalyFolderDialog;

    #getter for: Lcom/lx/launcher8/DispalyFolderDialog;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;
    invoke-static {v3}, Lcom/lx/launcher8/DispalyFolderDialog;->access$0(Lcom/lx/launcher8/DispalyFolderDialog;)Lcom/lx/launcher8/bean/FolderCell;

    move-result-object v3

    iget-object v3, v3, Lcom/lx/launcher8/bean/FolderCell;->contains:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 200
    iget-object v3, p0, Lcom/lx/launcher8/DispalyFolderDialog$1;->this$0:Lcom/lx/launcher8/DispalyFolderDialog;

    #getter for: Lcom/lx/launcher8/DispalyFolderDialog;->mGridView:Lcom/lx/launcher8/view/FolderDragGridView;
    invoke-static {v3}, Lcom/lx/launcher8/DispalyFolderDialog;->access$1(Lcom/lx/launcher8/DispalyFolderDialog;)Lcom/lx/launcher8/view/FolderDragGridView;

    move-result-object v3

    iget-object v4, p0, Lcom/lx/launcher8/DispalyFolderDialog$1;->this$0:Lcom/lx/launcher8/DispalyFolderDialog;

    #getter for: Lcom/lx/launcher8/DispalyFolderDialog;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;
    invoke-static {v4}, Lcom/lx/launcher8/DispalyFolderDialog;->access$0(Lcom/lx/launcher8/DispalyFolderDialog;)Lcom/lx/launcher8/bean/FolderCell;

    move-result-object v4

    iget-object v4, v4, Lcom/lx/launcher8/bean/FolderCell;->contains:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/lx/launcher8/DispalyFolderDialog$1;->this$0:Lcom/lx/launcher8/DispalyFolderDialog;

    #getter for: Lcom/lx/launcher8/DispalyFolderDialog;->mWidth:I
    invoke-static {v5}, Lcom/lx/launcher8/DispalyFolderDialog;->access$2(Lcom/lx/launcher8/DispalyFolderDialog;)I

    move-result v5

    add-int/lit8 v5, v5, -0x14

    invoke-virtual {v3, v4, v5}, Lcom/lx/launcher8/view/FolderDragGridView;->setAdapter(Ljava/util/ArrayList;I)V

    .line 201
    iget-object v3, p0, Lcom/lx/launcher8/DispalyFolderDialog$1;->this$0:Lcom/lx/launcher8/DispalyFolderDialog;

    #getter for: Lcom/lx/launcher8/DispalyFolderDialog;->mGridView:Lcom/lx/launcher8/view/FolderDragGridView;
    invoke-static {v3}, Lcom/lx/launcher8/DispalyFolderDialog;->access$1(Lcom/lx/launcher8/DispalyFolderDialog;)Lcom/lx/launcher8/view/FolderDragGridView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lx/launcher8/view/FolderDragGridView;->notifyDataSetChanged()V

    .line 203
    :cond_2
    iget-object v3, p0, Lcom/lx/launcher8/DispalyFolderDialog$1;->this$0:Lcom/lx/launcher8/DispalyFolderDialog;

    iget-object v3, v3, Lcom/lx/launcher8/DispalyFolderDialog;->mContext:Lcom/lx/launcher8/AnallLauncher;

    const v4, 0x7f0a0031

    invoke-static {v3, v4}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;I)V

    goto :goto_0
.end method
