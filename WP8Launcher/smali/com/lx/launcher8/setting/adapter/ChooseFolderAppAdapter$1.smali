.class Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter$1;
.super Ljava/lang/Object;
.source "ChooseFolderAppAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter$1;->this$0:Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 101
    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    .line 102
    .local v0, check:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anall/app/bean/AppInfo;

    .line 103
    .local v1, info:Lcom/anall/app/bean/AppInfo;
    if-nez v1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 106
    iget-object v3, p0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter$1;->this$0:Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;

    #calls: Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->contains(Lcom/anall/app/bean/AppInfo;)Z
    invoke-static {v3, v1}, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->access$0(Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;Lcom/anall/app/bean/AppInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 107
    iget-object v3, p0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter$1;->this$0:Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;

    #calls: Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->completeAddApp(Lcom/anall/app/bean/AppInfo;)Lcom/lx/launcher8/bean/AppCell;
    invoke-static {v3, v1}, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->access$1(Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;Lcom/anall/app/bean/AppInfo;)Lcom/lx/launcher8/bean/AppCell;

    move-result-object v2

    .line 108
    .local v2, item:Lcom/lx/launcher8/bean/AppCell;
    iget-object v3, p0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter$1;->this$0:Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;

    #getter for: Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->mFolderInfo:Lcom/lx/launcher8/bean/FolderCell;
    invoke-static {v3}, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->access$2(Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;)Lcom/lx/launcher8/bean/FolderCell;

    move-result-object v3

    iget-wide v3, v3, Lcom/lx/launcher8/bean/FolderCell;->id:J

    iput-wide v3, v2, Lcom/lx/launcher8/bean/AppCell;->container:J

    .line 109
    invoke-static {}, Lcom/lx/launcher8/AnallApp;->getContext()Lcom/lx/launcher8/AnallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lx/launcher8/AnallApp;->getModel()Lcom/lx/launcher8/db/LauncherModel;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lx/launcher8/db/LauncherModel;->addCellToDatabase(Lcom/lx/launcher8/bean/ItemCell;)V

    goto :goto_0

    .line 112
    .end local v2           #item:Lcom/lx/launcher8/bean/AppCell;
    :cond_2
    iget-object v3, p0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter$1;->this$0:Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;

    #calls: Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->contains(Lcom/anall/app/bean/AppInfo;)Z
    invoke-static {v3, v1}, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->access$0(Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;Lcom/anall/app/bean/AppInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter$1;->this$0:Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;

    #getter for: Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->conInfo:Lcom/lx/launcher8/bean/AppCell;
    invoke-static {v3}, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->access$3(Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;)Lcom/lx/launcher8/bean/AppCell;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 113
    iget-object v3, p0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter$1;->this$0:Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;

    #getter for: Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->mContains:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->access$4(Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter$1;->this$0:Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;

    #getter for: Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->conInfo:Lcom/lx/launcher8/bean/AppCell;
    invoke-static {v4}, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->access$3(Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;)Lcom/lx/launcher8/bean/AppCell;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 114
    iget-object v3, p0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter$1;->this$0:Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;

    #getter for: Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->conInfo:Lcom/lx/launcher8/bean/AppCell;
    invoke-static {v3}, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->access$3(Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;)Lcom/lx/launcher8/bean/AppCell;

    move-result-object v3

    iget-wide v3, v3, Lcom/lx/launcher8/bean/AppCell;->id:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 115
    invoke-static {}, Lcom/lx/launcher8/AnallApp;->getContext()Lcom/lx/launcher8/AnallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lx/launcher8/AnallApp;->getModel()Lcom/lx/launcher8/db/LauncherModel;

    move-result-object v3

    iget-object v4, p0, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter$1;->this$0:Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;

    #getter for: Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->conInfo:Lcom/lx/launcher8/bean/AppCell;
    invoke-static {v4}, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->access$3(Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;)Lcom/lx/launcher8/bean/AppCell;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/db/LauncherModel;->removeCellToDatabase(Lcom/lx/launcher8/bean/ItemCell;)V

    goto :goto_0
.end method
