.class Lcom/lx/launcher8/setting/ThemeOperationAct$1$1;
.super Ljava/lang/Object;
.source "ThemeOperationAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/ThemeOperationAct$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/setting/ThemeOperationAct$1;

.field private final synthetic val$dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/ThemeOperationAct$1;Lcom/lx/launcher8/setting/view/DialogSaveTheme;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/ThemeOperationAct$1$1;->this$1:Lcom/lx/launcher8/setting/ThemeOperationAct$1;

    iput-object p2, p0, Lcom/lx/launcher8/setting/ThemeOperationAct$1$1;->val$dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0900dc

    if-ne v2, v3, :cond_1

    .line 113
    iget-object v2, p0, Lcom/lx/launcher8/setting/ThemeOperationAct$1$1;->val$dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->dismiss()V

    .line 114
    iget-object v2, p0, Lcom/lx/launcher8/setting/ThemeOperationAct$1$1;->this$1:Lcom/lx/launcher8/setting/ThemeOperationAct$1;

    #getter for: Lcom/lx/launcher8/setting/ThemeOperationAct$1;->this$0:Lcom/lx/launcher8/setting/ThemeOperationAct;
    invoke-static {v2}, Lcom/lx/launcher8/setting/ThemeOperationAct$1;->access$0(Lcom/lx/launcher8/setting/ThemeOperationAct$1;)Lcom/lx/launcher8/setting/ThemeOperationAct;

    move-result-object v2

    #getter for: Lcom/lx/launcher8/setting/ThemeOperationAct;->mTheme:Lcom/lx/launcher8/db/ThemeHelper$Theme;
    invoke-static {v2}, Lcom/lx/launcher8/setting/ThemeOperationAct;->access$0(Lcom/lx/launcher8/setting/ThemeOperationAct;)Lcom/lx/launcher8/db/ThemeHelper$Theme;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/db/ThemeHelper$Theme;->isLocal()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 115
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/lx/launcher8/setting/ThemeOperationAct$1$1;->this$1:Lcom/lx/launcher8/setting/ThemeOperationAct$1;

    #getter for: Lcom/lx/launcher8/setting/ThemeOperationAct$1;->this$0:Lcom/lx/launcher8/setting/ThemeOperationAct;
    invoke-static {v3}, Lcom/lx/launcher8/setting/ThemeOperationAct$1;->access$0(Lcom/lx/launcher8/setting/ThemeOperationAct$1;)Lcom/lx/launcher8/setting/ThemeOperationAct;

    move-result-object v3

    #getter for: Lcom/lx/launcher8/setting/ThemeOperationAct;->mTheme:Lcom/lx/launcher8/db/ThemeHelper$Theme;
    invoke-static {v3}, Lcom/lx/launcher8/setting/ThemeOperationAct;->access$0(Lcom/lx/launcher8/setting/ThemeOperationAct;)Lcom/lx/launcher8/db/ThemeHelper$Theme;

    move-result-object v3

    iget-object v3, v3, Lcom/lx/launcher8/db/ThemeHelper$Theme;->mLocalPath:Ljava/lang/String;

    invoke-static {v3}, Lcom/lx/launcher8/db/ThemeHelper;->getAbsThemePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a00e7

    invoke-static {v2, v3}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;I)V

    .line 124
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/lx/launcher8/setting/ThemeOperationAct$1$1;->this$1:Lcom/lx/launcher8/setting/ThemeOperationAct$1;

    #getter for: Lcom/lx/launcher8/setting/ThemeOperationAct$1;->this$0:Lcom/lx/launcher8/setting/ThemeOperationAct;
    invoke-static {v2}, Lcom/lx/launcher8/setting/ThemeOperationAct$1;->access$0(Lcom/lx/launcher8/setting/ThemeOperationAct$1;)Lcom/lx/launcher8/setting/ThemeOperationAct;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/ThemeOperationAct;->finish()V

    .line 126
    :cond_1
    return-void

    .line 119
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "package:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lx/launcher8/setting/ThemeOperationAct$1$1;->this$1:Lcom/lx/launcher8/setting/ThemeOperationAct$1;

    #getter for: Lcom/lx/launcher8/setting/ThemeOperationAct$1;->this$0:Lcom/lx/launcher8/setting/ThemeOperationAct;
    invoke-static {v3}, Lcom/lx/launcher8/setting/ThemeOperationAct$1;->access$0(Lcom/lx/launcher8/setting/ThemeOperationAct$1;)Lcom/lx/launcher8/setting/ThemeOperationAct;

    move-result-object v3

    #getter for: Lcom/lx/launcher8/setting/ThemeOperationAct;->mTheme:Lcom/lx/launcher8/db/ThemeHelper$Theme;
    invoke-static {v3}, Lcom/lx/launcher8/setting/ThemeOperationAct;->access$0(Lcom/lx/launcher8/setting/ThemeOperationAct;)Lcom/lx/launcher8/db/ThemeHelper$Theme;

    move-result-object v3

    iget-object v3, v3, Lcom/lx/launcher8/db/ThemeHelper$Theme;->mResoveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 120
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 121
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 122
    iget-object v2, p0, Lcom/lx/launcher8/setting/ThemeOperationAct$1$1;->this$1:Lcom/lx/launcher8/setting/ThemeOperationAct$1;

    #getter for: Lcom/lx/launcher8/setting/ThemeOperationAct$1;->this$0:Lcom/lx/launcher8/setting/ThemeOperationAct;
    invoke-static {v2}, Lcom/lx/launcher8/setting/ThemeOperationAct$1;->access$0(Lcom/lx/launcher8/setting/ThemeOperationAct$1;)Lcom/lx/launcher8/setting/ThemeOperationAct;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/lx/launcher8/setting/ThemeOperationAct;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
