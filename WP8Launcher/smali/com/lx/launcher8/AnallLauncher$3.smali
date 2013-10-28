.class Lcom/lx/launcher8/AnallLauncher$3;
.super Ljava/lang/Object;
.source "AnallLauncher.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/AnallLauncher;
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
.field final synthetic this$0:Lcom/lx/launcher8/AnallLauncher;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/AnallLauncher;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/AnallLauncher$3;->this$0:Lcom/lx/launcher8/AnallLauncher;

    .line 1040
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x1

    .line 1043
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anall/app/bean/AppInfo;

    .line 1044
    .local v1, info:Lcom/anall/app/bean/AppInfo;
    iget-wide v2, v1, Lcom/anall/app/bean/AppInfo;->id:J

    const-wide/16 v4, -0x63

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 1045
    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher$3;->this$0:Lcom/lx/launcher8/AnallLauncher;

    iget-object v2, v2, Lcom/lx/launcher8/AnallLauncher;->mAppAdapter:Lcom/lx/launcher8/adapter/AppAdapter;

    invoke-virtual {v2}, Lcom/lx/launcher8/adapter/AppAdapter;->isShowIndex()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    if-ne v2, p3, :cond_2

    .line 1046
    :cond_0
    new-instance v0, Lcom/lx/launcher8/view/LettersDialog;

    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher$3;->this$0:Lcom/lx/launcher8/AnallLauncher;

    const v3, 0x7f0e0005

    iget-object v4, p0, Lcom/lx/launcher8/AnallLauncher$3;->this$0:Lcom/lx/launcher8/AnallLauncher;

    iget-object v4, v4, Lcom/lx/launcher8/AnallLauncher;->mAppGridView:Lcom/lx/launcher8/view/FilterGridView;

    .line 1047
    iget-object v5, p0, Lcom/lx/launcher8/AnallLauncher$3;->this$0:Lcom/lx/launcher8/AnallLauncher;

    iget-object v5, v5, Lcom/lx/launcher8/AnallLauncher;->mAppAdapter:Lcom/lx/launcher8/adapter/AppAdapter;

    .line 1046
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/lx/launcher8/view/LettersDialog;-><init>(Landroid/content/Context;ILandroid/widget/AbsListView;Lcom/lx/launcher8/adapter/AppAdapter;)V

    .line 1048
    .local v0, dialog:Lcom/lx/launcher8/view/LettersDialog;
    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher$3;->this$0:Lcom/lx/launcher8/AnallLauncher;

    #getter for: Lcom/lx/launcher8/AnallLauncher;->mStatusBarHeight:I
    invoke-static {v2}, Lcom/lx/launcher8/AnallLauncher;->access$0(Lcom/lx/launcher8/AnallLauncher;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/view/LettersDialog;->SetPaddingTop(I)V

    .line 1049
    invoke-virtual {v0, v6}, Lcom/lx/launcher8/view/LettersDialog;->setCanceledOnTouchOutside(Z)V

    .line 1050
    invoke-virtual {v0}, Lcom/lx/launcher8/view/LettersDialog;->show()V

    .line 1051
    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher$3;->this$0:Lcom/lx/launcher8/AnallLauncher;

    iput-object v0, v2, Lcom/lx/launcher8/AnallLauncher;->mRecentDialog:Landroid/app/Dialog;

    .line 1059
    .end local v0           #dialog:Lcom/lx/launcher8/view/LettersDialog;
    :cond_1
    :goto_0
    return-void

    .line 1053
    :cond_2
    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher$3;->this$0:Lcom/lx/launcher8/AnallLauncher;

    iget-object v3, p0, Lcom/lx/launcher8/AnallLauncher$3;->this$0:Lcom/lx/launcher8/AnallLauncher;

    iget-object v4, v1, Lcom/anall/app/bean/AppInfo;->intent:Landroid/content/Intent;

    #calls: Lcom/lx/launcher8/AnallLauncher;->safeStartActivity(Landroid/content/Context;Landroid/content/Intent;Z)Z
    invoke-static {v2, v3, v4, v6}, Lcom/lx/launcher8/AnallLauncher;->access$1(Lcom/lx/launcher8/AnallLauncher;Landroid/content/Context;Landroid/content/Intent;Z)Z

    .line 1054
    iget-wide v2, v1, Lcom/anall/app/bean/AppInfo;->id:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 1055
    iget v2, v1, Lcom/anall/app/bean/AppInfo;->lauchCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/anall/app/bean/AppInfo;->lauchCount:I

    .line 1056
    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher$3;->this$0:Lcom/lx/launcher8/AnallLauncher;

    #getter for: Lcom/lx/launcher8/AnallLauncher;->mModel:Lcom/lx/launcher8/db/LauncherModel;
    invoke-static {v2}, Lcom/lx/launcher8/AnallLauncher;->access$2(Lcom/lx/launcher8/AnallLauncher;)Lcom/lx/launcher8/db/LauncherModel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lx/launcher8/db/LauncherModel;->updateAppToDatabase(Lcom/anall/app/bean/AppInfo;)V

    goto :goto_0
.end method
